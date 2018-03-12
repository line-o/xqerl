-module('fn_namespace_uri_from_QName_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['NamespaceURIFromQNameFunc001'/1]).
-export(['NamespaceURIFromQNameFunc002'/1]).
-export(['NamespaceURIFromQNameFunc003'/1]).
-export(['NamespaceURIFromQNameFunc004'/1]).
-export(['NamespaceURIFromQNameFunc005'/1]).
-export(['NamespaceURIFromQNameFunc006'/1]).
-export(['NamespaceURIFromQNameFunc007'/1]).
-export(['NamespaceURIFromQNameFunc009'/1]).
-export(['NamespaceURIFromQNameFunc010'/1]).
-export(['NamespaceURIFromQNameFunc011'/1]).
-export(['NamespaceURIFromQNameFunc012'/1]).
-export(['NamespaceURIFromQNameFunc013'/1]).
-export(['NamespaceURIFromQNameFunc014'/1]).
-export(['NamespaceURIFromQNameFunc015'/1]).
-export(['NamespaceURIFromQNameFunc015a'/1]).
-export(['NamespaceURIFromQNameFunc016'/1]).
-export(['NamespaceURIFromQNameFunc017'/1]).
-export(['NamespaceURIFromQNameFunc018'/1]).
-export(['NamespaceURIFromQNameFunc019'/1]).
-export(['NamespaceURIFromQNameFunc020'/1]).
-export(['NamespaceURIFromQNameFunc021'/1]).
-export(['K-NamespaceURIFromQNameFunc-1'/1]).
-export(['K-NamespaceURIFromQNameFunc-2'/1]).
-export(['K-NamespaceURIFromQNameFunc-3'/1]).
-export(['K-NamespaceURIFromQNameFunc-4'/1]).
-export(['K-NamespaceURIFromQNameFunc-5'/1]).
-export(['K2-NamespaceURIFromQNameFunc-1'/1]).
-export(['K2-NamespaceURIFromQNameFunc-2'/1]).
-export(['K2-NamespaceURIFromQNameFunc-3'/1]).
-export(['K2-NamespaceURIFromQNameFunc-4'/1]).
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
   'NamespaceURIFromQNameFunc001',
   'NamespaceURIFromQNameFunc002',
   'NamespaceURIFromQNameFunc003',
   'NamespaceURIFromQNameFunc004',
   'NamespaceURIFromQNameFunc005',
   'NamespaceURIFromQNameFunc006',
   'NamespaceURIFromQNameFunc007',
   'NamespaceURIFromQNameFunc009',
   'NamespaceURIFromQNameFunc010',
   'NamespaceURIFromQNameFunc011',
   'NamespaceURIFromQNameFunc012',
   'NamespaceURIFromQNameFunc013',
   'NamespaceURIFromQNameFunc014',
   'NamespaceURIFromQNameFunc015',
   'NamespaceURIFromQNameFunc015a',
   'NamespaceURIFromQNameFunc016',
   'NamespaceURIFromQNameFunc017',
   'NamespaceURIFromQNameFunc018',
   'NamespaceURIFromQNameFunc019',
   'NamespaceURIFromQNameFunc020',
   'NamespaceURIFromQNameFunc021',
   'K-NamespaceURIFromQNameFunc-1',
   'K-NamespaceURIFromQNameFunc-2',
   'K-NamespaceURIFromQNameFunc-3',
   'K-NamespaceURIFromQNameFunc-4',
   'K-NamespaceURIFromQNameFunc-5',
   'K2-NamespaceURIFromQNameFunc-1',
   'K2-NamespaceURIFromQNameFunc-2',
   'K2-NamespaceURIFromQNameFunc-3',
   'K2-NamespaceURIFromQNameFunc-4'].
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
];
environment('fsx',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../prod/ForClause/fsx.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'NamespaceURIFromQNameFunc001'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'NamespaceURIFromQNameFunc002'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'NamespaceURIFromQNameFunc003'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'NamespaceURIFromQNameFunc004'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'NamespaceURIFromQNameFunc005'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'NamespaceURIFromQNameFunc006'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:namespace-uri-from-QName(())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "NamespaceURIFromQNameFunc006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'NamespaceURIFromQNameFunc007'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:namespace-uri-from-QName(((),()))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "NamespaceURIFromQNameFunc007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'NamespaceURIFromQNameFunc009'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:namespace-uri-from-QName(\"\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "NamespaceURIFromQNameFunc009.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'NamespaceURIFromQNameFunc010'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'NamespaceURIFromQNameFunc011'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:namespace-uri-from-QName()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "NamespaceURIFromQNameFunc011.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'NamespaceURIFromQNameFunc012'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'NamespaceURIFromQNameFunc013'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'NamespaceURIFromQNameFunc014'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'NamespaceURIFromQNameFunc015'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"XQ10 XP20"}.
'NamespaceURIFromQNameFunc015a'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:namespace-uri-from-QName((//Folder)[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('fsx',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "NamespaceURIFromQNameFunc015a.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0117") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'NamespaceURIFromQNameFunc016'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:namespace-uri-from-QName(xs:integer(\"100\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "NamespaceURIFromQNameFunc016.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'NamespaceURIFromQNameFunc017'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:namespace-uri-from-QName(xs:time(\"12:00:00Z\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "NamespaceURIFromQNameFunc017.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'NamespaceURIFromQNameFunc018'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'NamespaceURIFromQNameFunc019'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'NamespaceURIFromQNameFunc020'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'NamespaceURIFromQNameFunc021'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'K-NamespaceURIFromQNameFunc-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "namespace-uri-from-QName()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-NamespaceURIFromQNameFunc-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NamespaceURIFromQNameFunc-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "namespace-uri-from-QName(1, 2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-NamespaceURIFromQNameFunc-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NamespaceURIFromQNameFunc-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "empty(namespace-uri-from-QName( () ))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-NamespaceURIFromQNameFunc-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NamespaceURIFromQNameFunc-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "namespace-uri-from-QName( QName(\"example.com/\", \"pre:lname\")) eq xs:anyURI(\"example.com/\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-NamespaceURIFromQNameFunc-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NamespaceURIFromQNameFunc-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "namespace-uri-from-QName( QName(\"example.com/\", \"pre:lname\")) instance of xs:anyURI",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-NamespaceURIFromQNameFunc-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NamespaceURIFromQNameFunc-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        declare namespace ns = \"http://example.com/ANamespace\"; 
        string(<name xmlns:ns=\"http://example.com/BNamespace\">{namespace-uri-from-QName(\"ns:foo\" cast as xs:QName)}</name>)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NamespaceURIFromQNameFunc-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://example.com/BNamespace") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NamespaceURIFromQNameFunc-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        <e xmlns=\"http://example.com/\"> {namespace-uri-from-QName(node-name(element anElement{\"text\"}))} </e>/string()
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NamespaceURIFromQNameFunc-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://example.com/") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NamespaceURIFromQNameFunc-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        declare default element namespace \"http://example.com/\"; 
        <e xmlns=\"\">{namespace-uri-from-QName(xs:QName(\"l\"))}</e>/string()
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NamespaceURIFromQNameFunc-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NamespaceURIFromQNameFunc-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        declare default element namespace \"http://example.com/\"; 
        declare namespace p = \"http://example.com/2\"; 
        <e xmlns=\"\" xmlns:p=\"http://example.com/3\">[{namespace-uri-from-QName(xs:QName(\"n1\"))}|{namespace-uri-from-QName(xs:QName(\"p:n2\"))}]</e>/text()
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NamespaceURIFromQNameFunc-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "[|http://example.com/3]") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
