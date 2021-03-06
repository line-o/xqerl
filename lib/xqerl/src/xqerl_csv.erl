%% -------------------------------------------------------------------
%%
%% xqerl - XQuery processor
%%
%% Copyright (c) 2019 Zachary N. Dean  All Rights Reserved.
%%
%% This file is provided to you under the Apache License,
%% Version 2.0 (the "License"); you may not use this file
%% except in compliance with the License.  You may obtain
%% a copy of the License at
%%
%%   http://www.apache.org/licenses/LICENSE-2.0
%%
%% Unless required by applicable law or agreed to in writing,
%% software distributed under the License is distributed on an
%% "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
%% KIND, either express or implied.  See the License for the
%% specific language governing permissions and limitations
%% under the License.
%%
%% -------------------------------------------------------------------

%% @doc Namespace http://xqerl.org/modules/csv
%% Module for reading and writing CSV strings.

-module(xqerl_csv).

-include("xqerl.hrl").

-define(NS,<<"http://xqerl.org/modules/csv">>).
-define(PX,<<"csv">>).

%% ====================================================================
%% API functions
%% ====================================================================
-export([parse/2, parse/3,
         serialize/2, serialize/3]).
        
-'module-namespace'({?NS,?PX}).
-variables([]).
-functions([
 {{qname,?NS, ?PX, <<"parse">>}, 
  {xqSeqType, {xqFunTest,array,[],undefined,any,any}, zero_or_one}, [], {'parse', 2}, 1, 
  [{xqSeqType, 'xs:string', zero_or_one}]},
 {{qname,?NS, ?PX, <<"parse">>}, 
  {xqSeqType, {xqFunTest,array,[],undefined,any,any}, zero_or_one}, [], {'parse', 3}, 2, 
  [{xqSeqType, 'xs:string', zero_or_one},
   {xqSeqType, {xqFunTest,map,[],undefined,any,any}, zero_or_one}]},
 {{qname,?NS, ?PX, <<"serialize">>}, 
  {xqSeqType, 'xs:string', zero_or_one}, [], {'serialize', 2}, 1, 
  [{xqSeqType, {xqFunTest,array,[],undefined,any,any}, zero_or_one}]},
 {{qname,?NS, ?PX, <<"serialize">>}, 
  {xqSeqType, 'xs:string', zero_or_one}, [], {'serialize', 3}, 2, 
  [{xqSeqType, {xqFunTest,array,[],undefined,any,any}, zero_or_one},
   {xqSeqType, {xqFunTest,map,[],undefined,any,any}, zero_or_one}]}]).


%% Parse string as CSV input. Returns array of arrays.
%% csv:parse(
%%    $input as xs:string?) as array(*)?
-spec parse(
        xq_types:context(), 
        Input :: xq_types:xs_string() | []) -> xq_types:xq_array() | [].
parse(_Ctx, []) -> [];
parse(Ctx, [Input]) -> parse(Ctx, Input);
parse(_Ctx, Input) when is_binary(Input) ->
   try
      Str = unicode:characters_to_list(Input),
      {ok, Toks, _} = csv_lexer:string(Str),
      {ok, Arrs} = csv_parse:parse(Toks),
      {array, [{array, R} || R <- Arrs]}
   catch
      _:_ ->
         throw_error(parse)
   end;
parse(Ctx, Input) ->
   parse(Ctx, xqerl_types:cast_as(Input, 'xs:string')).

%% Parse string as CSV input. Returns array of arrays.
%% csv:parse(
%%    $input   as xs:string?
%%    $options as map(*)?) as array(*)?
-spec parse(
        xq_types:context(), 
        Input :: xq_types:xs_string() | [],
        Options :: xq_types:xq_map() | []) -> xq_types:xq_array() | [].
parse(_Ctx, [], _) -> [];
parse(Ctx, Input, []) -> parse(Ctx, Input);
parse(Ctx, [Input], Opt) -> parse(Ctx, Input, Opt);
parse(Ctx, Input, [Opt]) -> parse(Ctx, Input, Opt);
parse(_Ctx, Input, Options) when is_binary(Input),
                                 is_map(Options) ->
   try
      Str = unicode:characters_to_list(Input),
      #{sep := Sep} = parse_options(Options),
      {ok, Toks, _} = case Sep of
                         comma ->
                            csv_lexer:string(Str);
                         semicolon ->
                            csv_sc_lexer:string(Str);
                         tab ->
                            csv_t_lexer:string(Str)
                      end,
      {ok, Arrs} = csv_parse:parse(Toks),
      {array, [{array, R} || R <- Arrs]}
   catch
      _:_ ->
         throw_error(parse)
   end;
parse(Ctx, Input, Options) ->
   parse(Ctx, 
         xqerl_types:cast_as(Input, 'xs:string'),
         xqerl_types:cast_as(Options, 'map')).


%% Serialize an array of arrays to CSV.
%% csv:serialize(
%%    $input as array(*)?) as xs:string?
-spec serialize(
        xq_types:context(), 
        Input :: xq_types:xq_array() | []) -> xq_types:xs_string() | [].
serialize(_Ctx, []) -> [];
serialize(Ctx, [Input]) -> serialize(Ctx, Input);
serialize(_Ctx, {array, Arrays}) ->
   try
      CP = binary:compile_pattern(<<$">>),
      Sep = <<$,>>,
      Nl  = <<13,10>>,
      Deep = [ [quote_row(A, Sep, CP), Nl] || A <- Arrays],
      erlang:iolist_to_binary(Deep)
   catch
      _:Err ->
         ?dbg("Err",Err),
         throw_error(serialize)
   end;
serialize(Ctx, Input) ->
   serialize(Ctx, xqerl_types:cast_as(Input, 'array')).



%% Serialize an array of arrays to CSV.
%% csv:serialize(
%%    $input as array(*)?,
%%    $options as map(*)?) as xs:string?
-spec serialize(
        xq_types:context(), 
        Input :: xq_types:xq_array() | [],
        Options :: xq_types:xq_map() | []) -> xq_types:xs_string() | [].
serialize(_Ctx, [], _) -> [];
serialize(Ctx, Input, []) -> serialize(Ctx, Input);
serialize(Ctx, [Input], Opt) -> serialize(Ctx, Input, Opt);
serialize(Ctx, Input, [Opt]) -> serialize(Ctx, Input, Opt);
serialize(_Ctx, {array, Arrays}, Options) when is_map(Options) ->
   try
      #{sep := Sep0,
        quo := Quo} = parse_options(Options),
      Sep = case Sep0 of
         comma -> <<$,>>;
         semicolon -> <<$;>>;
         tab -> <<$\t>>
      end,
      Nl  = <<13,10>>,
      Deep = case Quo of
                false ->
                   [ [noquote_row(A, Sep), Nl] || A <- Arrays];
                true ->
                   CP = binary:compile_pattern(<<$">>),
                   [ [quote_row(A, Sep, CP), Nl] || A <- Arrays]
             end,
      erlang:iolist_to_binary(Deep)
   catch
      _:Err:Stack ->
         ?dbg("Err",Err),
         ?dbg("Err",Stack),
         throw_error(serialize)
   end;
serialize(Ctx, Input, Options) ->
   serialize(Ctx, 
         xqerl_types:cast_as(Input, 'array'),
         xqerl_types:cast_as(Options, 'map')).







     


%% ====================================================================
%% Internal functions
%% ====================================================================

default_options() ->
   #{sep => comma,
     quo => true}.

parse_options(Map) ->
   List = maps:to_list(Map),
   parse_options1(List, default_options()).

parse_options1([{<<"separator">>, {_, Val}}|T], M) ->
   case xqerl_types:string_value(Val) of
      <<"comma">> ->
         parse_options1(T, M#{sep := comma});
      <<"semicolon">> ->
         parse_options1(T, M#{sep := semicolon});
      <<"tab">> ->
         parse_options1(T, M#{sep := tab});
      _ ->
         throw_error(options)
   end;
parse_options1([{<<"quotes">>, {_, Val}}|T], M) ->
   case xqerl_types:cast_as(Val, 'xs:boolean') of
      true ->
         parse_options1(T, M#{quo := true});
      false ->
         parse_options1(T, M#{quo := false});
      _ ->
         throw_error(options)
   end;
parse_options1([_|T], M) ->
   parse_options1(T, M);
parse_options1([], M) -> M.

throw_error(options) ->
   ?err('XPST0004');
throw_error(parse) ->
   do_throw(<<"parse">>, <<"Could not parse input.">>);
throw_error(serialize) ->
   do_throw(<<"serialize">>, <<"Could not serialize output.">>).

do_throw(Name, Desc) ->
   E = #xqError{description = Desc,
                name = #qname{namespace = ?NS,prefix = ?PX,
                              local_name = Name}
                },
   exit(E).

noquote_row({array, [H|T]}, Sep) ->
   [s(H), [ [Sep, s(V)] || V <- T] ];
noquote_row(_,_) ->
   ?err('XPST0004').

quote_row({array, [H|T]}, Sep, CP) ->
   Q = <<$">>,
   [Q, qs(H, CP), Q, [ [Sep, Q, qs(V, CP), Q] || V <- T] ];
quote_row(_,_,_) ->
   ?err('XPST0004').


s(V) -> xqerl_types:string_value(V).

qs(V, CP) -> 
   S = xqerl_types:string_value(V),
   maybe_norm(S, CP).

maybe_norm(Bin, CP) ->
   case binary:match(Bin, CP) of
      nomatch ->
         Bin;
      _ ->
         double_quote(Bin)
   end.

double_quote(<<$",Rest/binary>>) ->
   <<$",$",(double_quote(Rest))/binary>>;
double_quote(<<C,Rest/binary>>) ->
   <<C,(double_quote(Rest))/binary>>;
double_quote(<<>>) -> <<>>.
