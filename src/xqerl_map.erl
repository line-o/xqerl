%% -------------------------------------------------------------------
%%
%% xqerl - XQuery processor
%%
%% Copyright (c) 2017-2018 Zachary N. Dean  All Rights Reserved.
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

%% @doc Implementation of the "http://www.w3.org/2005/xpath-functions/map" 
%% namespace.

-module(xqerl_map).

-include("xqerl.hrl").
-compile(inline_list_funcs).

-define(sin(V), ?seq:singleton(V)).
-define(val(V), ?seq:singleton_value(V)).

-export(['contains'/3]).
-export(['entry'/3]).
-export(['find'/3]).
-export(['for-each'/3]).
-export(['get'/3]).
-export(['keys'/2]).
-export(['merge'/2,'merge'/3]).
-export(['put'/4]).
-export(['remove'/3]).
-export(['size'/2]).
% internal use
-export([equal/2]).
-export([values/1]).
-export([get_matched/2]).
-export([construct/2]).

-'module-namespace'({"http://www.w3.org/2005/xpath-functions/map","map"}).
-namespaces([{"http://www.w3.org/2005/xpath-functions", "fn"}, 
             {"xqerl_xs", "xs"},
             {"http://www.w3.org/2005/xpath-functions/map","map"}]).

-variables([]).

-functions([
{{qname, "http://www.w3.org/2005/xpath-functions/map", "map", "contains"},{xqSeqType, 'xs:boolean', one}, [], 
 {'contains', 3}, 2,[{xqSeqType, {xqFunTest, map, [], undefined, any, any},one},{xqSeqType, 'xs:anyAtomicType', one}]},
{{qname, "http://www.w3.org/2005/xpath-functions/map", "map", "entry"},{xqSeqType, {xqFunTest, map, [], undefined, any, any},one},[], 
 {'entry', 3}, 2,[{xqSeqType, 'xs:anyAtomicType', one},{xqSeqType, item, zero_or_many}]},
{{qname, "http://www.w3.org/2005/xpath-functions/map", "map", "find"},{xqSeqType, {xqFunTest, array, [], undefined, any, any},one},[], 
 {'find', 3}, 2,[{xqSeqType, item, zero_or_many},{xqSeqType, 'xs:anyAtomicType', one}]},
{{qname, "http://www.w3.org/2005/xpath-functions/map", "map", "for-each"},{xqSeqType, item, zero_or_many}, [], 
 {'for-each', 3}, 2,[{xqSeqType, {xqFunTest, map, [], undefined, any, any},one},{xqSeqType,{xqFunTest, function, [], undefined,[{xqSeqType, 'xs:anyAtomicType', one},{xqSeqType, item, zero_or_many}],{xqSeqType, item, zero_or_many}},one}]},
{{qname, "http://www.w3.org/2005/xpath-functions/map", "map", "get"},{xqSeqType, item, zero_or_many}, [], 
 {'get', 3}, 2,[{xqSeqType, {xqFunTest, map, [], undefined, any, any},one},{xqSeqType, 'xs:anyAtomicType', one}]},
{{qname, "http://www.w3.org/2005/xpath-functions/map", "map", "keys"},{xqSeqType, 'xs:anyAtomicType', zero_or_many}, [],
 {'keys', 2}, 1,[{xqSeqType, {xqFunTest, map, [], undefined, any, any},one}]},
{{qname, "http://www.w3.org/2005/xpath-functions/map", "map", "merge"},{xqSeqType, {xqFunTest, map, [], undefined, any, any},one},[], 
 {'merge', 2}, 1,[{xqSeqType, {xqFunTest, map, [], undefined, any, any},zero_or_many}]},
{{qname, "http://www.w3.org/2005/xpath-functions/map", "map", "merge"},{xqSeqType, {xqFunTest, map, [], undefined, any, any},one},[], 
 {'merge', 3}, 2,[{xqSeqType, {xqFunTest, map, [], undefined, any, any},zero_or_many},{xqSeqType, {xqFunTest, map, [], undefined, any, any},one}]},
{{qname, "http://www.w3.org/2005/xpath-functions/map", "map", "put"},{xqSeqType, {xqFunTest, map, [], undefined, any, any},one},[], 
 {'put', 4}, 3,[{xqSeqType, {xqFunTest, map, [], undefined, any, any},one},{xqSeqType, 'xs:anyAtomicType', one},{xqSeqType, item, zero_or_many}]},
{{qname, "http://www.w3.org/2005/xpath-functions/map", "map", "remove"},{xqSeqType, {xqFunTest, map, [], undefined, any, any},one},[], 
 {'remove', 3}, 2,[{xqSeqType, {xqFunTest, map, [], undefined, any, any},one},{xqSeqType, 'xs:anyAtomicType', zero_or_many}]},
{{qname, "http://www.w3.org/2005/xpath-functions/map", "map", "size"},{xqSeqType, 'xs:integer', one}, [], 
 {'size', 2}, 1,[{xqSeqType, {xqFunTest, map, [], undefined, any, any},one}]}]).

%% Tests whether a supplied map contains an entry for a given key 
'contains'(_Ctx,Map,Key) when is_map(Map) ->
   MKey = xqerl_operators:key_val(Key),
   #xqAtomicValue{type = 'xs:boolean', value = maps:is_key(MKey, Map)};
'contains'(_Ctx,Map,Key) ->
   IMap = ?val(Map),
   if is_map(IMap) ->
         'contains'(_Ctx,IMap,Key);
      true ->
         ?err('XPTY0004')
   end.

%% Returns a map that contains a single entry (a key-value pair). 
'entry'(_Ctx,Key0,Value0) -> 
   Key = xqerl_operators:key_val(Key0),
   #{Key => {Key0, Value0}}.

%% Searches the supplied input sequence and any contained maps and arrays for 
%% a map entry with the supplied key, and returns the corresponding values. 
'find'(_Ctx,Input,Key) when not is_list(Input) ->
   'find'(_Ctx,[Input],Key);
'find'(_Ctx,Input,Key) ->
   MKey = xqerl_operators:key_val(Key),
   L = find1(Input, MKey),
   #array{data = L}.

find1([], _Key) -> [];
find1([H|T], Key) when is_map(H) ->
   Vals = values(H),
   case maps:find(Key, H) of
      error ->
         find1(Vals ++ T, Key);
      {ok, {_,V}} ->
         [V|find1(Vals ++ T, Key)]
   end;
find1([#array{data = H}|T], Key) ->
   find1(H ++ T, Key);
find1([_|T], Key) ->
   find1(T, Key).

%% Applies a supplied function to every entry in a map, returning the 
%% concatenation of the results. 
'for-each'(_Ctx,Map,[]) when is_map(Map) -> Map;
'for-each'(Ctx,Map,Action) when is_map(Map), is_function(Action) ->
   lists:map(fun({K,V}) ->
                   Action(Ctx,K,V)
             end, maps:values(Map));
'for-each'(_Ctx,Map,#xqFunction{body = Function}) when is_map(Map), 
                                                       is_function(Function) ->
   'for-each'(_Ctx,Map,Function).

%% Returns the value associated with a supplied key in a given map. 
'get'(_Ctx,Map,Key) when is_map(Map) -> 
   MKey = xqerl_operators:key_val(Key),
   case maps:find(MKey, Map) of
           error ->
              [];
           {ok, {_,V}} ->
              V
        end;
'get'(_Ctx,Map,Key) -> 
   IMap = ?val(Map),
   if is_map(IMap) ->
         'get'(_Ctx,IMap,Key);
      true ->
         ?err('XPTY0004')
   end.

%% Returns a sequence containing all the keys present in a map 
'keys'(_Ctx,Map) ->
   % true keys are in position 1 in value
   maps:fold(fun(_K,{V,_},L) ->
                  [V | L]
            end, [], ?val(Map)).

%% Returns a map that combines the entries from a number of existing maps. 
'merge'(_Ctx,[]) -> #{};
'merge'(_Ctx,Maps) when is_map(Maps) ->
   Maps;
'merge'(_Ctx,Maps) ->
   Lists = lists:append([maps:to_list(M) || M <- lists:reverse(Maps)]),
   maps:from_list(Lists).

'merge'(_Ctx,[],_) -> #{};
'merge'(_Ctx,Maps,#{"duplicates" := {_,#xqAtomicValue{value = Dup}}})
  when Dup == "use-first";
       Dup == "use-any" -> 
   Lists = lists:append([maps:to_list(M) || M <- lists:reverse(Maps)]),
   maps:from_list(Lists);
'merge'(_Ctx,Maps,#{"duplicates" := {_,#xqAtomicValue{value = Dup}}})
  when Dup == "use-last" -> 
   Lists = lists:append([maps:to_list(M) || M <- Maps]),
   maps:from_list(Lists);
'merge'(_Ctx,Maps,#{"duplicates" := {_,#xqAtomicValue{value = Dup}}}) -> 
   lists:foldl(fun(In,Out) ->
                     combine_maps(Out, In, Dup)
               end, #{}, lists:reverse(Maps));
'merge'(_,_,_) -> 
   ?err('FOJS0005').

%% Returns a map containing all the contents of the supplied map, but with an 
%% additional entry, which replaces any existing entry for the same key. 
'put'(_Ctx,Map,Key,Value) -> 
   Key1 = xqerl_operators:key_val(Key),
   (?val(Map))#{Key1 => {Key, Value}}.

%% Returns a map containing all the entries from a supplied map, except 
%% those having a specified key. 
'remove'(_Ctx,Map,Keys) -> 
   lists:foldl(fun(K,M) ->
                     maps:remove(xqerl_operators:key_val(K), M)
               end, ?val(Map), ?seq:to_list(Keys)).

%% Returns the number of entries in the supplied map. 
'size'(_Ctx,Map) -> 
   ?sin(#xqAtomicValue{type='xs:integer', value = maps:size(?val(Map)) }).

combine_maps(Map1, Map2, _Any) when erlang:map_size(Map2) == 0 ->
   Map1;
combine_maps(Map1, Map2, _Any) when erlang:map_size(Map1) == 0 ->
   Map2;
combine_maps(Map1, Map2, "use-first") ->
   Lists = lists:append([maps:to_list(M) || M <- [Map1,Map2]]),
   maps:from_list(Lists);
combine_maps(Map1, Map2, "use-any") ->
   Lists = lists:append([maps:to_list(M) || M <- [Map1,Map2]]),
   maps:from_list(Lists);
combine_maps(Map1, Map2, "reject") ->
   case maps:size(maps:with(maps:keys(Map2), Map1)) of
      0 ->
         maps:merge(Map2, Map1);
      _ ->
         ?err('FOJS0003')
   end;
combine_maps(Map1, Map2, "combine") ->
   F = fun(K,V,M) ->
             case maps:is_key(K, M) of
                false ->
                   maps:put(K, V, M);
                _ ->
                   Ov = maps:get(K, M),
                   Ov1 = element(2, Ov),
                   Ov2 = element(2, V),
                   Ov3 = {element(1, V), vconcat(Ov2,Ov1)},
                   maps:update(K, Ov3, M)
             end
       end,
   maps:fold(F, Map1, Map2);
combine_maps(_, _, O) -> 
   ?dbg("Options",O),
   ?err('FOJS0005').

vconcat(V1,V2) when is_list(V1), is_list(V2) ->
   V1 ++ V2;
vconcat(V1,V2) when is_list(V2) ->
   [V1|V2];
vconcat(V1,V2) when is_list(V1) ->
   V1 ++ [V2];
vconcat(V1,V2) ->
   [V1,V2].

% used in deep-equal
equal(Map1,Map2) ->
   Sz1 = ?MODULE:size([], Map1),
   Sz2 = ?MODULE:size([], Map2),
   if Sz1 =:= Sz2 ->
         K1 = keys([],Map1),
         F = fun(K) ->
                   V1 = ?MODULE:get([], Map1, K),
                   V2 = ?MODULE:get([], Map2, K),
                   xqerl_operators:equal(V1,V2) == 
                     #xqAtomicValue{type = 'xs:boolean',value = true}
             end,         
         lists:all(F, K1);
      true ->
         false
   end.

% used in unary lookup
values(Map) ->
  [V || {_,V} <- maps:values(Map)].

% used in unary lookup and for-each
get_matched(Map,Keys) when is_map(Map) ->
   lists:map(fun(Key) ->
                  case maps:find(xqerl_operators:key_val(Key), Map) of
                          error ->
                             [];
                          {ok, {_,V}} ->
                             V
                       end
                 end, Keys).

construct(_, KeyValList) ->
   lists:foldl(fun({Key,Val},Map) ->
                  Key1 = xqerl_operators:key_val(Key),
                  case maps:is_key(Key1, Map) of
                     true ->
                        % no duplicates on construct
                        ?err('XQDY0137');
                     _ ->
                        maps:put(Key1, {Key, Val}, Map)
                  end
               end, #{}, KeyValList).

