-module('app_UseCaseNLP_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['UseCaseNLP-001'/1]).
-export(['UseCaseNLP-002'/1]).
-export(['UseCaseNLP-003'/1]).
-export(['UseCaseNLP-004'/1]).
-export(['UseCaseNLP-005'/1]).
-export(['UseCaseNLP-006a'/1]).
-export(['UseCaseNLP-006b'/1]).
suite() -> [{timetrap,{seconds, 180}}].
init_per_group(_, Config) ->  Config.
end_per_group(_, _Config) -> 
   xqerl_code_server:unload(all).
end_per_suite(_Config) -> 
   ct:timetrap({seconds,60}), 
   xqerl_code_server:unload(all).
init_per_suite(Config) -> 
   {ok,_} = application:ensure_all_started(xqerl),
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   __BaseDir = filename:join(TD, "app"),
   [{base_dir, __BaseDir}|Config].
all() -> [
   {group, group_0}
   ].
groups() -> [
   {group_0, [parallel], [
    'UseCaseNLP-001', 
    'UseCaseNLP-002', 
    'UseCaseNLP-003', 
    'UseCaseNLP-004', 
    'UseCaseNLP-005', 
    'UseCaseNLP-006a', 
    'UseCaseNLP-006b']}].
environment('speech-representation.json',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', [{"http://www.w3.org/qt3/app/UseCaseNLP/"}]}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, [{"application/json", filename:join(__BaseDir, "UseCaseNLP/speech-representation.json"),"http://www.w3.org/qt3/app/UseCaseNLP/speech-representation.json"}]}, 
{modules, []}
].
'UseCaseNLP-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        
          <s>
           {
            for $w in json-doc('speech-representation.json')?*
            return <w pos=\"{ $w(2) }\">{ $w(1) }</w>
           }
          </s>      
        
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('speech-representation.json',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UseCaseNLP-001.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<s><w pos=\"DT\">A</w><w pos=\"NN\">bride</w><w pos=\",\">,</w><w pos=\"PRP\">you</w><w pos=\"VBP\">know</w><w pos=\",\">,</w><w pos=\"MD\">must</w><w pos=\"VB\">appear</w><w pos=\"IN\">like</w><w pos=\"DT\">a</w><w pos=\"NN\">bride</w><w pos=\",\">,</w><w pos=\"CC\">but</w><w pos=\"PRP$\">my</w><w pos=\"JJ\">natural</w><w pos=\"NN\">taste</w><w pos=\"VBZ\">is</w><w pos=\"DT\">all</w><w pos=\"IN\">for</w><w pos=\"NN\">simplicity</w><w pos=\":\">;</w><w pos=\"DT\">a</w><w pos=\"JJ\">simple</w><w pos=\"NN\">style</w><w pos=\"IN\">of</w><w pos=\"NN\">dress</w><w pos=\"VBZ\">is</w><w pos=\"RB\">so</w><w pos=\"RB\">infinitely</w><w pos=\"JJ\">preferable</w><w pos=\"TO\">to</w><w pos=\"VB\">finery</w><w pos=\".\">.</w></s>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UseCaseNLP-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        
          declare variable $index := map { \"pos\" : 2, \"lemma\" : 1 };
          <s>
           {
            for $w in json-doc('speech-representation.json')?*
            return <w pos=\"{ $w($index(\"pos\")) }\">{ $w($index(\"lemma\")) }</w>
           }
          </s>			  
        
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('speech-representation.json',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UseCaseNLP-002.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<s><w pos=\"DT\">A</w><w pos=\"NN\">bride</w><w pos=\",\">,</w><w pos=\"PRP\">you</w><w pos=\"VBP\">know</w><w pos=\",\">,</w><w pos=\"MD\">must</w><w pos=\"VB\">appear</w><w pos=\"IN\">like</w><w pos=\"DT\">a</w><w pos=\"NN\">bride</w><w pos=\",\">,</w><w pos=\"CC\">but</w><w pos=\"PRP$\">my</w><w pos=\"JJ\">natural</w><w pos=\"NN\">taste</w><w pos=\"VBZ\">is</w><w pos=\"DT\">all</w><w pos=\"IN\">for</w><w pos=\"NN\">simplicity</w><w pos=\":\">;</w><w pos=\"DT\">a</w><w pos=\"JJ\">simple</w><w pos=\"NN\">style</w><w pos=\"IN\">of</w><w pos=\"NN\">dress</w><w pos=\"VBZ\">is</w><w pos=\"RB\">so</w><w pos=\"RB\">infinitely</w><w pos=\"JJ\">preferable</w><w pos=\"TO\">to</w><w pos=\"VB\">finery</w><w pos=\".\">.</w></s>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UseCaseNLP-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        
          array {
            for $w in json-doc('speech-representation.json')?*
            return map { \"pos\" : $w(2), \"lemma\" : $w(1) }
          }
        
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('speech-representation.json',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UseCaseNLP-003.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"
        	[ map { \"pos\" : \"DT\", \"lemma\" : \"A\" }, 
        	  map { \"pos\" : \"NN\", \"lemma\" : \"bride\" }, 
        	  map { \"pos\" : \",\", \"lemma\" : \",\" }, 
        	  map { \"pos\" : \"PRP\", \"lemma\" : \"you\" }, 
        	  map { \"pos\" : \"VBP\", \"lemma\" : \"know\" }, 
        	  map { \"pos\" : \",\", \"lemma\" : \",\" }, 
        	  map { \"pos\" : \"MD\", \"lemma\" : \"must\" }, 
        	  map { \"pos\" : \"VB\", \"lemma\" : \"appear\" }, 
        	  map { \"pos\" : \"IN\", \"lemma\" : \"like\" }, 
        	  map { \"pos\" : \"DT\", \"lemma\" : \"a\" }, 
        	  map { \"pos\" : \"NN\", \"lemma\" : \"bride\" }, 
        	  map { \"pos\" : \",\", \"lemma\" : \",\" }, 
        	  map { \"pos\" : \"CC\", \"lemma\" : \"but\" }, 
        	  map { \"pos\" : \"PRP$\", \"lemma\" : \"my\" }, 
        	  map { \"pos\" : \"JJ\", \"lemma\" : \"natural\" }, 
        	  map { \"pos\" : \"NN\", \"lemma\" : \"taste\" }, 
        	  map { \"pos\" : \"VBZ\", \"lemma\" : \"is\" }, 
        	  map { \"pos\" : \"DT\", \"lemma\" : \"all\" }, 
        	  map { \"pos\" : \"IN\", \"lemma\" : \"for\" }, 
        	  map { \"pos\" : \"NN\", \"lemma\" : \"simplicity\" }, 
        	  map { \"pos\" : \":\", \"lemma\" : \";\" }, 
        	  map { \"pos\" : \"DT\", \"lemma\" : \"a\" }, 
        	  map { \"pos\" : \"JJ\", \"lemma\" : \"simple\" }, 
        	  map { \"pos\" : \"NN\", \"lemma\" : \"style\" }, 
        	  map { \"pos\" : \"IN\", \"lemma\" : \"of\" }, 
        	  map { \"pos\" : \"NN\", \"lemma\" : \"dress\" }, 
        	  map { \"pos\" : \"VBZ\", \"lemma\" : \"is\" }, 
        	  map { \"pos\" : \"RB\", \"lemma\" : \"so\" }, 
        	  map { \"pos\" : \"RB\", \"lemma\" : \"infinitely\" }, 
        	  map { \"pos\" : \"JJ\", \"lemma\" : \"preferable\" }, 
        	  map { \"pos\" : \"TO\", \"lemma\" : \"to\" }, 
        	  map { \"pos\" : \"VB\", \"lemma\" : \"finery\" }, 
        	  map { \"pos\" : \".\", \"lemma\" : \".\" } 
        	]
        ") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UseCaseNLP-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        
          for $word in json-doc('speech-representation.json')?*
          let $pos := $word(2)
          let $lexeme := $word(1)
          where $pos = (\"JJ\", \"NN\", \"RB\", \"VB\")
          group by $pos
          order by $pos
          return 
            <pos name=\"{$pos}\">
              { 
                for $l in distinct-values($lexeme)
                return <lexeme>{ $l }</lexeme>
              }
            </pos>
        
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('speech-representation.json',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UseCaseNLP-004.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<pos name=\"JJ\"><lexeme>natural</lexeme><lexeme>simple</lexeme><lexeme>preferable</lexeme></pos><pos name=\"NN\"><lexeme>bride</lexeme><lexeme>taste</lexeme><lexeme>simplicity</lexeme><lexeme>style</lexeme><lexeme>dress</lexeme></pos><pos name=\"RB\"><lexeme>so</lexeme><lexeme>infinitely</lexeme></pos><pos name=\"VB\"><lexeme>appear</lexeme><lexeme>finery</lexeme></pos>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UseCaseNLP-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        
          declare function local:words-only($s)
          {
            for $w in $s
            where not($w(2) = (\".\", \",\", \";\", \":\"))
            return $w(1)
          };
          
          for sliding window $w in local:words-only(json-doc('speech-representation.json')?*)
              start at $i when true()
              only end at $j when $j - $i eq 2
          return 
              array { $w }
        
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('speech-representation.json',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UseCaseNLP-005.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"
           
            ([ \"A\", \"bride\", \"you\" ], 
            [ \"bride\", \"you\", \"know\" ], 
            [ \"you\", \"know\", \"must\" ], 
            [ \"know\", \"must\", \"appear\" ], 
            [ \"must\", \"appear\", \"like\" ], 
            [ \"appear\", \"like\", \"a\" ], 
            [ \"like\", \"a\", \"bride\" ], 
            [ \"a\", \"bride\", \"but\" ], 
            [ \"bride\", \"but\", \"my\" ], 
            [ \"but\", \"my\", \"natural\" ], 
            [ \"my\", \"natural\", \"taste\" ], 
            [ \"natural\", \"taste\", \"is\" ], 
            [ \"taste\", \"is\", \"all\" ], 
            [ \"is\", \"all\", \"for\" ], 
            [ \"all\", \"for\", \"simplicity\" ], 
            [ \"for\", \"simplicity\", \"a\" ], 
            [ \"simplicity\", \"a\", \"simple\" ], 
            [ \"a\", \"simple\", \"style\" ], 
            [ \"simple\", \"style\", \"of\" ], 
            [ \"style\", \"of\", \"dress\" ], 
            [ \"of\", \"dress\", \"is\" ], 
            [ \"dress\", \"is\", \"so\" ], 
            [ \"is\", \"so\", \"infinitely\" ], 
            [ \"so\", \"infinitely\", \"preferable\" ], 
            [ \"infinitely\", \"preferable\", \"to\" ], 
            [ \"preferable\", \"to\", \"finery\" ])
          
        ") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UseCaseNLP-006a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        
          declare function local:filter($s as item()*, $p as function(item()) as xs:boolean)
          {
            array { $s[$p(.)] },   array { $s[not($p(.))] }
          };
          
          let $f := function($a) { starts-with($a(2), \"VB\") }
          return
            local:filter(json-doc('speech-representation.json')?*, $f)			  
        
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('speech-representation.json',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UseCaseNLP-006a.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"
           
            [[\"know\", \"VBP\"], [\"appear\", \"VB\"], [\"is\", \"VBZ\"], [\"is\", \"VBZ\"], [\"finery\", \"VB\"]],
             [[\"A\", \"DT\"], [\"bride\", \"NN\"], [\",\", \",\"], [\"you\", \"PRP\"], [\",\", \",\"], [\"must\", \"MD\"], 
              [\"like\", \"IN\"], [\"a\", \"DT\"], [\"bride\", \"NN\"], [\",\", \",\"], [\"but\", \"CC\"], [\"my\", \"PRP$\"], 
              [\"natural\", \"JJ\"], [\"taste\", \"NN\"], [\"all\", \"DT\"], [\"for\", \"IN\"], [\"simplicity\", \"NN\"], 
              [\";\", \":\"], [\"a\", \"DT\"], [\"simple\", \"JJ\"], [\"style\", \"NN\"], [\"of\", \"IN\"], [\"dress\", \"NN\"], 
              [\"so\", \"RB\"], [\"infinitely\", \"RB\"], [\"preferable\", \"JJ\"], [\"to\", \"TO\"], [\".\", \".\"]]
          
        ") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UseCaseNLP-006b'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        
          declare function local:filter($s as item()*, $p as function(item()) as xs:boolean)
          {
           map {
              true() : array { $s[$p(.)] },   
              false() : array { $s[not($p(.))] }
            }
          };					
          let $f := function($a) { starts-with($a(2), \"VB\") }
          return
            local:filter(json-doc('speech-representation.json')?*, $f)
  			  
			", 
   {Env,Opts} = xqerl_test:handle_environment(environment('speech-representation.json',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UseCaseNLP-006b.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"
           
              map { 
              true() : 
                         [ [ \"know\", \"VBP\" ], [ \"appear\", \"VB\" ], [ \"is\", \"VBZ\" ],
                           [\"is\", \"VBZ\" ], [ \"finery\", \"VB\" ] ],
              
              false() :  
              
                         [ [ \"A\", \"DT\" ], [\"bride\", \"NN\" ], [ \",\", \",\" ], 
                           [ \"you\", \"PRP\" ], [ \",\", \",\" ], [ \"must\", \"MD\" ], 
                           [ \"like\", \"IN\" ], [ \"a\", \"DT\" ], [ \"bride\", \"NN\" ], 
                           [ \",\", \",\" ], [ \"but\", \"CC\" ], [ \"my\", \"PRP$\" ], 
                           [ \"natural\", \"JJ\" ], [ \"taste\", \"NN\" ], [ \"all\", \"DT\"],
                           [ \"for\", \"IN\" ], [ \"simplicity\", \"NN\" ], [ \";\", \":\" ],
                           [ \"a\", \"DT\" ], [ \"simple\", \"JJ\" ], [ \"style\", \"NN\" ], 
                           [ \"of\", \"IN\" ], [ \"dress\", \"NN\" ], [ \"so\", \"RB\" ], 
                           [ \"infinitely\", \"RB\" ], [ \"preferable\", \"JJ\" ], 
                           [ \"to\", \"TO\" ], [ \".\", \".\" ] ] 
              }
          
        ") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.