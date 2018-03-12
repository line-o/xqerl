-module('prod_ExtensionExpr_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['extexpr-1'/1]).
-export(['extexpr-2'/1]).
-export(['extexpr-3'/1]).
-export(['extexpr-4'/1]).
-export(['extexpr-5'/1]).
-export(['extexpr-6'/1]).
-export(['extexpr-7'/1]).
-export(['extexpr-8'/1]).
-export(['extexpr-9'/1]).
-export(['extexpr-10'/1]).
-export(['extexpr-11'/1]).
-export(['extexpr-12'/1]).
-export(['extexpr-13'/1]).
-export(['extexpr-14'/1]).
-export(['extexpr-15'/1]).
-export(['extexpr-16'/1]).
-export(['extexpr-17'/1]).
-export(['extexpr-18'/1]).
-export(['extexpr-19'/1]).
-export(['extexpr-20'/1]).
-export(['extexpr-21'/1]).
-export(['extexpr-22'/1]).
-export(['extexpr-23'/1]).
-export(['extexpr-24'/1]).
-export(['extexpr-25'/1]).
-export(['extexpr-26'/1]).
-export(['K-ExtensionExpression-1'/1]).
-export(['K-ExtensionExpression-2'/1]).
-export(['K-ExtensionExpression-3'/1]).
-export(['K-ExtensionExpression-4'/1]).
-export(['K-ExtensionExpression-4a'/1]).
-export(['K-ExtensionExpression-5'/1]).
-export(['K-ExtensionExpression-6'/1]).
-export(['K-ExtensionExpression-7'/1]).
-export(['K-ExtensionExpression-8'/1]).
-export(['K2-ExtensionExpression-1'/1]).
-export(['K2-ExtensionExpression-2'/1]).
-export(['K2-ExtensionExpression-3'/1]).
-export(['K2-ExtensionExpression-4'/1]).
-export(['K2-ExtensionExpression-5'/1]).
-export(['K2-ExtensionExpression-6'/1]).
-export(['K2-ExtensionExpression-7'/1]).
-export(['K2-ExtensionExpression-8'/1]).
-export(['K2-ExtensionExpression-9'/1]).
-export(['K2-ExtensionExpression-10'/1]).
-export(['K2-ExtensionExpression-11'/1]).
-export(['K2-ExtensionExpression-12'/1]).
-export(['K2-ExtensionExpression-13'/1]).
-export(['K2-ExtensionExpression-14'/1]).
-export(['K2-ExtensionExpression-15'/1]).
-export(['K2-ExtensionExpression-16'/1]).
-export(['K2-ExtensionExpression-17'/1]).
-export(['pragma-no-namespace-001'/1]).
-export(['pragma-no-namespace-002'/1]).
-export(['pragma-no-namespace-003'/1]).
-export(['pragma-no-namespace-004'/1]).
-export(['pragma-no-namespace-005'/1]).
suite() ->
[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   ok = application:ensure_started(mnesia),
   ok = application:ensure_started(xqerl_db),
   xqerl_module:one_time_init(), 
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "prod")

,[{base_dir, BaseDir}|Config].
all() -> [
   'extexpr-1',
   'extexpr-2',
   'extexpr-3',
   'extexpr-4',
   'extexpr-5',
   'extexpr-6',
   'extexpr-7',
   'extexpr-8',
   'extexpr-9',
   'extexpr-10',
   'extexpr-11',
   'extexpr-12',
   'extexpr-13',
   'extexpr-14',
   'extexpr-15',
   'extexpr-16',
   'extexpr-17',
   'extexpr-18',
   'extexpr-19',
   'extexpr-20',
   'extexpr-21',
   'extexpr-22',
   'extexpr-23',
   'extexpr-24',
   'extexpr-25',
   'extexpr-26',
   'K-ExtensionExpression-1',
   'K-ExtensionExpression-2',
   'K-ExtensionExpression-3',
   'K-ExtensionExpression-4',
   'K-ExtensionExpression-4a',
   'K-ExtensionExpression-5',
   'K-ExtensionExpression-6',
   'K-ExtensionExpression-7',
   'K-ExtensionExpression-8',
   'K2-ExtensionExpression-1',
   'K2-ExtensionExpression-2',
   'K2-ExtensionExpression-3',
   'K2-ExtensionExpression-4',
   'K2-ExtensionExpression-5',
   'K2-ExtensionExpression-6',
   'K2-ExtensionExpression-7',
   'K2-ExtensionExpression-8',
   'K2-ExtensionExpression-9',
   'K2-ExtensionExpression-10',
   'K2-ExtensionExpression-11',
   'K2-ExtensionExpression-12',
   'K2-ExtensionExpression-13',
   'K2-ExtensionExpression-14',
   'K2-ExtensionExpression-15',
   'K2-ExtensionExpression-16',
   'K2-ExtensionExpression-17',
   'pragma-no-namespace-001',
   'pragma-no-namespace-002',
   'pragma-no-namespace-003',
   'pragma-no-namespace-004',
   'pragma-no-namespace-005'].
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
'extexpr-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace ns1 = \"http://example.org/someweirdnamespace\"; (# ns1:you-do-not-know-me-as-index #) { /works/employee[12]/overtime }",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "extexpr-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<overtime>
     <day>Monday</day>
     <day>Tuesday</day>
   </overtime>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extexpr-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace ns1 = \"http://example.org/someweirdnamespace\"; (# ns1:you-do-not-know-me-as-index #) {}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "extexpr-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0079") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extexpr-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace ns1 = \"http://example.org/someweirdnamespace\"; (# ns1:you-do-not-know-me-as-index \"ABC#\" #) {/works/employee[12]/overtime}",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "extexpr-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<overtime>
     <day>Monday</day>
     <day>Tuesday</day>
   </overtime>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extexpr-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace ns1 = \"http://example.org/someweirdnamespace\"; (# ns2:you-do-not-know-me-as-index #) {/works/employee[12]/overtime}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "extexpr-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0081") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extexpr-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace ns1 = \"http://example.org/someweirdnamespace\"; (# ns1:you-do-not-know-me-as-index #) (# ns1:you-should-not-know-me-either #) {/works/employee[12]/overtime}",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "extexpr-5.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<overtime>
     <day>Monday</day>
     <day>Tuesday</day>
   </overtime>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extexpr-6'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace ns1 = \"http://example.org/someweirdnamespace\"; for $x in (# ns1:you-do-not-know-me-as-index #) {/works/employee[12]/overtime} return (# ns1:you-do-not-know-me-as-index #) {/works/employee[12]/overtime}",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "extexpr-6.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<overtime>
     <day>Monday</day>
     <day>Tuesday</day>
   </overtime>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extexpr-7'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace ns1 = \"http://example.org/someweirdnamespace\"; (# ns1:you-do-not-know-me-as-index #) {(every $x in (1,2,3) satisfies $x < 4)}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "extexpr-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extexpr-8'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace ns1 = \"http://example.org/someweirdnamespace\"; (# ns1:you-do-not-know-me-as-index #) {(some $x in (1,2,3) satisfies $x = 2)}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "extexpr-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extexpr-9'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace ns1 = \"http://example.org/someweirdnamespace\"; (# ns1:you-do-not-know-me-as-index #) {(fn:true())}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "extexpr-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extexpr-10'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace ns1 = \"http://example.org/someweirdnamespace\"; (# ns1:you-do-not-know-me-as-index #) {(fn:false())}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "extexpr-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extexpr-11'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace ns1 = \"http://example.org/someweirdnamespace\"; (# ns1:you-do-not-know-me-as-index #) {(fn:false() or fn:true())}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "extexpr-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extexpr-12'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace ns1 = \"http://example.org/someweirdnamespace\"; (# ns1:you-do-not-know-me-as-index #) {(fn:false() or fn:false())}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "extexpr-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extexpr-13'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace ns1 = \"http://example.org/someweirdnamespace\"; (# ns1:you-do-not-know-me-as-index #) {(fn:true() and fn:true())}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "extexpr-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extexpr-14'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace ns1 = \"http://example.org/someweirdnamespace\"; (# ns1:you-do-not-know-me-as-index #) {(fn:true() and fn:false())}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "extexpr-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extexpr-15'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace ns1 = \"http://example.org/someweirdnamespace\"; (# ns1:you-do-not-know-me-as-index #) {if(fn:true()) then \"passed\" else \"failed\"}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "extexpr-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "passed") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extexpr-16'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace ns1 = \"http://example.org/someweirdnamespace\"; (# ns1:you-do-not-know-me-as-index #) {if(fn:false()) then \"failed\" else \"passed\"}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "extexpr-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "passed") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extexpr-17'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace ns1 = \"http://example.org/someweirdnamespace\"; (# ns1:you-do-not-know-me-as-index #) {typeswitch (\"A String\") case $i as xs:decimal return \"test failed\" case $i as xs:integer return \"test failed\" case $i as xs:string return \"test passed\" default return \"test failed\" }",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "extexpr-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "test passed") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extexpr-18'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace ns1 = \"http://example.org/someweirdnamespace\"; (# ns1:you-do-not-know-me-as-index #) {(fn:not(fn:true()))}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "extexpr-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extexpr-19'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace ns1 = \"http://example.org/someweirdnamespace\"; (# ns1:you-do-not-know-me-as-index #) {fn:string-length(\"abc\")}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "extexpr-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"3") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extexpr-20'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace ns1 = \"http://example.org/someweirdnamespace\"; (# ns1:you-do-not-know-me-as-index #) {fn:count((1,2,3))}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "extexpr-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"3") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extexpr-21'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace ns1 = \"http://example.org/someweirdnamespace\"; (# ns1:you-do-not-know-me-as-index #) {3+2}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "extexpr-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"5") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extexpr-22'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace ns1 = \"http://example.org/someweirdnamespace\"; (# ns1:you-do-not-know-me-as-index #) {10 - 5}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "extexpr-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"5") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extexpr-23'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace ns1 = \"http://example.org/someweirdnamespace\"; (# ns1:you-do-not-know-me-as-index #) {10 * 2}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "extexpr-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"20") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extexpr-24'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace ns1 = \"http://example.org/someweirdnamespace\"; (# ns1:you-do-not-know-me-as-index #) {10 div 2}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "extexpr-24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"5") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extexpr-25'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace ns1 = \"http://example.org/someweirdnamespace\"; (# ns1:you-do-not-know-me-as-index #) {10 idiv 2}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "extexpr-25.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"5") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'extexpr-26'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace ns1 = \"http://example.org/someweirdnamespace\"; (# ns1:you-do-not-know-me-as-index#){fn:count((1,2,3))}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "extexpr-26.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"3") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ExtensionExpression-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(#local:pr content # {1}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ExtensionExpression-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ExtensionExpression-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "local:pr content #) {1}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ExtensionExpression-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ExtensionExpression-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace prefix = \"http://example.com/NotRecognized\"; (#prefix:pr content #) {1 eq 1}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ExtensionExpression-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ExtensionExpression-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"XQ10 XQ30"}.
'K-ExtensionExpression-4a'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(#name content #) {1}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ExtensionExpression-4a.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ExtensionExpression-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace prefix = \"\"; (# prefix:notRecognized #){1}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ExtensionExpression-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0081") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ExtensionExpression-6'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace prefix = \"http://example.com/NotRecognized\"; 1 eq (#prefix:notRecognized ##cont## # # ( \"# ) # )# )#ent #) {1}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ExtensionExpression-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ExtensionExpression-7'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace prefix = \"http://example.com/NotRecognized\"; (#prefix:PragmaNotSupported content #) {}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ExtensionExpression-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0079") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-ExtensionExpression-8'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace prefix = \"http://example.com/NotRecognized\";
(::)1(::)eq(::)(#prefix:name ##cont## # # ( \"# ) #
		)# )#ent #)(::){(::)1(::)}(::)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-ExtensionExpression-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-ExtensionExpression-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace xs = \"\"; (#xs:name content #) {1}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-ExtensionExpression-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0081") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-ExtensionExpression-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace ex = \"http://example.com/\"; (#ex:myExtensionExpression#) {true()}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-ExtensionExpression-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-ExtensionExpression-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace ex = \"http://example.com/\"; (#ex:myExtensionExpression #) {true()}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-ExtensionExpression-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-ExtensionExpression-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace ex = \"http://example.com/\"; (#ex:myExtensionExpression content#) {true()}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-ExtensionExpression-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-ExtensionExpression-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace ex = \"http://example.com/\"; (#ex:myExtensionExpression (:(:(:(:(: content #) {true()}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-ExtensionExpression-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-ExtensionExpression-6'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace ex = \"http://example.com/\"; (#ex:myExtensionExpression(content)#) {true()}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-ExtensionExpression-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-ExtensionExpression-7'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace ex = \"http://example.com/\";
(#ex:myExtensionExpression(:content:)#) {true()}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-ExtensionExpression-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-ExtensionExpression-8'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace ex = \"http://example.com/\"; (#ex:myExtensionExpression:)#) {true()}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-ExtensionExpression-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-ExtensionExpression-9'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace ex = \"http://example.com/\"; (#ex:myExtensionExpression:)#) {true()}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-ExtensionExpression-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-ExtensionExpression-10'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace ex = \"http://example.com/\"; (#ex:myExtensionExpression:)#) {true()}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-ExtensionExpression-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-ExtensionExpression-11'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace ex = \"http://example.com/\"; (#ex:myExtensionExpression :)#) {true()}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-ExtensionExpression-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-ExtensionExpression-12'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace ex = \"http://example.com/\"; (#ex:myExtensionExpression#) {true()}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-ExtensionExpression-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-ExtensionExpression-13'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace ex = \"http://example.com/\"; (#",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-ExtensionExpression-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-ExtensionExpression-14'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace ex = \"http://example.com/\"; (#",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-ExtensionExpression-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-ExtensionExpression-15'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace ex = \"http://example.com/\"; (# ex:name",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-ExtensionExpression-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-ExtensionExpression-16'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace ex = \"http://example.com/\"; (# ex:name",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-ExtensionExpression-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-ExtensionExpression-17'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(#xs:a#)(#xs:a#)(#local:a#){-5}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-ExtensionExpression-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-5") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'pragma-no-namespace-001'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(#Q{}unprefixed-pragma #) {}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "pragma-no-namespace-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0079") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'pragma-no-namespace-002'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(#Q{}unprefixed-pragma #) (#Q{}another-unprefixed-pragma#) {}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "pragma-no-namespace-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0079") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'pragma-no-namespace-003'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(#Q{}unprefixed-pragma #) { false() }",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "pragma-no-namespace-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'pragma-no-namespace-004'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(#Q{}unprefixed-pragma #) (#Q{}another-unprefixed-pragma #) { false() }",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "pragma-no-namespace-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'pragma-no-namespace-005'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(#Q{}unprefixed-pragma #) (#Q{http://www.example.org/}prefixed-pragma #) { false() }",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "pragma-no-namespace-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
