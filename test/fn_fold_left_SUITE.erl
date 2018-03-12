-module('fn_fold_left_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fold-left-001'/1]).
-export(['fold-left-002'/1]).
-export(['fold-left-003'/1]).
-export(['fold-left-004'/1]).
-export(['fold-left-005'/1]).
-export(['fold-left-006'/1]).
-export(['fold-left-007'/1]).
-export(['fold-left-008'/1]).
-export(['fold-left-009'/1]).
-export(['fold-left-010'/1]).
-export(['fold-left-011'/1]).
-export(['fold-left-012'/1]).
-export(['fold-left-013'/1]).
-export(['fold-left-014'/1]).
-export(['fold-left-015'/1]).
-export(['fold-left-016'/1]).
-export(['fold-left-017'/1]).
-export(['fold-left-018'/1]).
-export(['fold-left-019'/1]).
-export(['fold-left-020'/1]).
-export(['fold-left-021'/1]).
-export(['fold-left-101'/1]).
-export(['fold-left-102'/1]).
-export(['fold-left-103'/1]).
-export(['fold-left-104'/1]).
-export(['fold-left-105'/1]).
suite() ->
[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   ok = application:ensure_started(mnesia),
   ok = application:ensure_started(xqerl_db),
   xqerl_module:one_time_init(), 
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "fn")

,[{base_dir, BaseDir}|Config].
all() -> [
   'fold-left-001',
   'fold-left-002',
   'fold-left-003',
   'fold-left-004',
   'fold-left-005',
   'fold-left-006',
   'fold-left-007',
   'fold-left-008',
   'fold-left-009',
   'fold-left-010',
   'fold-left-011',
   'fold-left-012',
   'fold-left-013',
   'fold-left-014',
   'fold-left-015',
   'fold-left-016',
   'fold-left-017',
   'fold-left-018',
   'fold-left-019',
   'fold-left-020',
   'fold-left-021',
   'fold-left-101',
   'fold-left-102',
   'fold-left-103',
   'fold-left-104',
   'fold-left-105'].
environment('empty',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('atomic',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/atomic.xml"), ".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{filename:join(BaseDir, "../docs/atomic.xsd"),"http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/atomic.xml"), ".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{filename:join(BaseDir, "../docs/atomic.xsd"),"http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/works-mod.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/works.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/staff.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/works.xml"), "$works",""},
{filename:join(BaseDir, "../docs/staff.xml"), "$staff",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('auction',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/auction.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.example.com/AuctionWatch","ma"},
{"http://www.w3.org/1999/xlink","xlink"},
{"http://www.example.com/auctioneers#anyzone","anyzone"},
{"http://www.example.com/auctioneers#eachbay","eachbay"},
{"http://www.example.com/auctioneers#yabadoo","yabadoo"},
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('qname',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/QName-source.xml"), ".",""}]},
{schemas, [{filename:join(BaseDir, "../docs/QName-schema.xsd"),"http://www.example.com/QNameXSD"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.example.com/QNameXSD",""}]},
{resources, []},
{modules, []}
];
environment('math',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/math","math"}]},
{resources, []},
{modules, []}
];
environment('array',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"}]},
{resources, []},
{modules, []}
];
environment('map',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('array-and-map',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"},
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
].
'fold-left-001'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fold-left(1 to 5, 0, function($a, $b) { $a + $b })",
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fold-left-001.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"15") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fold-left-002'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fold-left((2,3,5,7), 1, function($a, $b) { $a * $b })",
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fold-left-002.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"210") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fold-left-003'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fold-left((true(), false(), false()), false(), function($a, $b) { $a or $b })",
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fold-left-003.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fold-left-004'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fold-left((true(), false(), false()), false(), function($a, $b) { $a and $b })",
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fold-left-004.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fold-left-005'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fold-left(1 to 5, (), function($a, $b) {($b, $a)})",
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fold-left-005.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"5, 4, 3, 2, 1") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fold-left-006'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fold-left(1 to 5, \"\", fn:concat(?, \".\", ?))",
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fold-left-006.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'.1.2.3.4.5'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fold-left-007'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fold-left(1 to 5, \"$zero\", fn:concat(\"$f(\", ?, \", \", ?, \")\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fold-left-007.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "$f($f($f($f($f($zero, 1), 2), 3), 4), 5)") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fold-left-008'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
            let $hours := function ($emp as element(employee)) as xs:integer { sum($emp/hours/xs:integer(.)) },
                $highest := function ($f as function(item()) as xs:anyAtomicType, $seq as item()*)  {           
                    fold-left($seq, (), function($highestSoFar as item()*, $this as item()*) as item()* {
                          if (empty($highestSoFar))
                          then $this
                          else let $thisValue := $f($this),
                                   $highestValue := $f($highestSoFar[1])
                               return if ($thisValue gt $highestValue)
                                      then $this
                                      else if ($thisValue eq $highestValue)
                                           then ($highestSoFar, $this)
                                           else $highestSoFar
                       })
            }
            
            return $highest($hours, /works/employee) 
        ",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fold-left-008.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"element(employee)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result/@name = \"John Doe 2\"") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fold-left-009'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
            declare function local:distinct-nodes-stable($seq as node()*) { 
                fold-left( $seq, (), function($foundSoFar as node()*, $this as node()) as node()* {
                if ($foundSoFar intersect $this)
                then $foundSoFar
                else ($foundSoFar, $this) })
            }; 
            let $nodes := (<a/>, <b/>, <c/>, <d/>, <e/>, <f/>) 
            let $perm := ($nodes[1], $nodes[2], $nodes[4], $nodes[1], $nodes[2], $nodes[3], $nodes[2], $nodes[1]) 
            return local:distinct-nodes-stable($perm)/local-name()
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fold-left-009.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "a b d c") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fold-left-010'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fold-left(1 to 5, 1, function($a, $b, $c){ $a + $b + $c })",
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fold-left-010.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fold-left-011'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fold-left(1 to 5, 1, function($a, $b) as element(foo) { $a + $b })",
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fold-left-011.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fold-left-012'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fold-left(1 to 5, \"\", function($a, $b) { $a + $b })",
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fold-left-012.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fold-left-013'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fold-left(1 to 5, 1, function($a, $b as element(foo)) { $a + $b })",
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fold-left-013.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fold-left-014'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fold-left(1 to 5, 1, function($a as element(bar), $b) { $a + $b })",
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fold-left-014.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fold-left-015'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fold-left(1 to 2, 1, function($a, $b){ ($a, $b) })",
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fold-left-015.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1, 1, 2") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fold-left-016'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
let $html := <html>
  <body>
	<div id=\"main\">
	  <p class=\"para\">Hello World!</p>	
	</div>
	<p class=\"para\">Goodbye!</p>	
  </body>
</html>
let $css-selectors := <selectors>
  <id>main</id>
  <class>para</class>
</selectors>/*
let $interpreter  := function($ctx, $selector){
  typeswitch($selector)
    case $a as element(id) return $ctx//*[@id = $a/text()]
    case $a as element(class) return $ctx//*[@class = $a/text()]
  default return ()
}
let $result := fold-left($css-selectors, $html, $interpreter)
return
  $result/text()
	 ",
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fold-left-016.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Hello World!") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fold-left-017'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fold-left(1 to 13, 0, concat(\"(\", ?, \"+\", ?, \")\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fold-left-017.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "(((((((((((((0+1)+2)+3)+4)+5)+6)+7)+8)+9)+10)+11)+12)+13)") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fold-left-018'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
let $text := \"Peter Piper picked a peck of pickled peppers A peck of pickled peppers Peter Piper picked\"
let $tokens := tokenize($text, '\\s')
let $counter := function($result, $word){
  let $word-count := $result[@value = $word]
  return
    if(empty($word-count)) then
      ($result, <word value=\"{$word}\" count=\"1\" />)
    else
    (
      $result except $word-count,
      <word value=\"{$word-count/@value}\" count=\"{number($word-count/@count) + 1}\" />
    )
}
let $words := fold-left($tokens, (), $counter)
return (
  number($words[@value=\"Peter\"]/@count),
  number($words[@value=\"Piper\"]/@count),
  number($words[@value=\"pickled\"]/@count)
)
",
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fold-left-018.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"2, 2, 2") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fold-left-019'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fold-left((13, 14, 9, 6), (), function($a, $b){ if(empty($a)) then $b else ($a + $b) div 2 })",
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fold-left-019.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "8.625") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fold-left-020'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fold-left(1 to 1000000, 0, function($a, $b){ $a + 1})",
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fold-left-020.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1000000") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fold-left-021'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
            declare variable $in := (<doc><A/><B/>{(1 to 10000)!<C/>}<B/><A/></doc>)/*;
            declare variable $fsm := map{
    0: function($x) {if ($x[self::B]) then 1 else 0},
    1: function($x) {if ($x[self::B]) then 1 else 2},
    2: function($x) {if ($x[self::B]) then 3 else 2},
    3: function($x) {3}};
    
    fold-left($in, 0, function($state, $node){$fsm($state)($node)}) ne 3
            ",
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fold-left-021.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fold-left-101'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function local:fold-left(
          $seq as item()*,
          $zero as item()*,
          $f as function(item()*, item()) as item()*)
        as item()* {
            if (fn:empty($seq))
            then $zero
            else fn:fold-left(fn:tail($seq), $f($zero, fn:head($seq)), $f)
        };
        local:fold-left(1 to 5, 0, function($a, $b) { $a + $b })",
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fold-left-101.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"15") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fold-left-102'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function local:fold-left(
          $seq as item()*,
          $zero as item()*,
          $f as function(item()*, item()) as item()*)
        as item()* {
            if (fn:empty($seq))
            then $zero
            else fn:fold-left(fn:tail($seq), $f($zero, fn:head($seq)), $f)
        };
        local:fold-left((2,3,5,7), 1, function($a, $b) { $a * $b })
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fold-left-102.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"210") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fold-left-103'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function local:fold-left(
          $seq as item()*,
          $zero as item()*,
          $f as function(item()*, item()) as item()*)
        as item()* {
            if (fn:empty($seq))
            then $zero
            else fn:fold-left(fn:tail($seq), $f($zero, fn:head($seq)), $f)
        };
        local:fold-left((true(), false(), false()), false(), function($a, $b) { $a or $b })",
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fold-left-103.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fold-left-104'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function local:fold-left(
          $seq as item()*,
          $zero as item()*,
          $f as function(item()*, item()) as item()*)
        as item()* {
            if (fn:empty($seq))
            then $zero
            else fn:fold-left(fn:tail($seq), $f($zero, fn:head($seq)), $f)
        };
        local:fold-left((true(), false(), false()), false(), function($a, $b) { $a and $b })",
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fold-left-104.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fold-left-105'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function local:fold-left(
          $seq as item()*,
          $zero as item()*,
          $f as function(item()*, item()) as item()*)
        as item()* {
            if (fn:empty($seq))
            then $zero
            else fn:fold-left(fn:tail($seq), $f($zero, fn:head($seq)), $f)
        };
        local:fold-left(1 to 5, (), function($a, $b) {($b, $a)})",
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fold-left-105.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"5, 4, 3, 2, 1") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
