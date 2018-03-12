-module('fn_insert_before_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-insert-before-mix-args-001'/1]).
-export(['fn-insert-before-mix-args-002'/1]).
-export(['fn-insert-before-mix-args-003'/1]).
-export(['fn-insert-before-mix-args-004'/1]).
-export(['fn-insert-before-mix-args-005'/1]).
-export(['fn-insert-before-mix-args-006'/1]).
-export(['fn-insert-before-mix-args-007'/1]).
-export(['fn-insert-before-mix-args-008'/1]).
-export(['fn-insert-before-mix-args-009'/1]).
-export(['fn-insert-before-mix-args-010'/1]).
-export(['fn-insert-before-mix-args-011'/1]).
-export(['fn-insert-before-mix-args-012'/1]).
-export(['fn-insert-before-mix-args-013'/1]).
-export(['fn-insert-before-mix-args-014'/1]).
-export(['fn-insert-before-mix-args-015'/1]).
-export(['fn-insert-before-mix-args-016'/1]).
-export(['fn-insert-before-mix-args-017'/1]).
-export(['fn-insert-before-mix-args-018'/1]).
-export(['fn-insert-before-mix-args-019'/1]).
-export(['fn-insert-before-mix-args-020'/1]).
-export(['K-SeqInsertBeforeFunc-1'/1]).
-export(['K-SeqInsertBeforeFunc-2'/1]).
-export(['K-SeqInsertBeforeFunc-3'/1]).
-export(['K-SeqInsertBeforeFunc-4'/1]).
-export(['K-SeqInsertBeforeFunc-5'/1]).
-export(['K-SeqInsertBeforeFunc-6'/1]).
-export(['K-SeqInsertBeforeFunc-7'/1]).
-export(['K-SeqInsertBeforeFunc-8'/1]).
-export(['K-SeqInsertBeforeFunc-9'/1]).
-export(['K-SeqInsertBeforeFunc-10'/1]).
-export(['K-SeqInsertBeforeFunc-11'/1]).
-export(['K-SeqInsertBeforeFunc-12'/1]).
-export(['K-SeqInsertBeforeFunc-13'/1]).
-export(['K-SeqInsertBeforeFunc-14'/1]).
-export(['K-SeqInsertBeforeFunc-15'/1]).
-export(['K-SeqInsertBeforeFunc-16'/1]).
-export(['K-SeqInsertBeforeFunc-17'/1]).
-export(['K-SeqInsertBeforeFunc-18'/1]).
-export(['K-SeqInsertBeforeFunc-19'/1]).
-export(['K-SeqInsertBeforeFunc-20'/1]).
-export(['K-SeqInsertBeforeFunc-21'/1]).
-export(['cbcl-fn-insert-before-001'/1]).
-export(['cbcl-fn-insert-before-002'/1]).
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
   'fn-insert-before-mix-args-001',
   'fn-insert-before-mix-args-002',
   'fn-insert-before-mix-args-003',
   'fn-insert-before-mix-args-004',
   'fn-insert-before-mix-args-005',
   'fn-insert-before-mix-args-006',
   'fn-insert-before-mix-args-007',
   'fn-insert-before-mix-args-008',
   'fn-insert-before-mix-args-009',
   'fn-insert-before-mix-args-010',
   'fn-insert-before-mix-args-011',
   'fn-insert-before-mix-args-012',
   'fn-insert-before-mix-args-013',
   'fn-insert-before-mix-args-014',
   'fn-insert-before-mix-args-015',
   'fn-insert-before-mix-args-016',
   'fn-insert-before-mix-args-017',
   'fn-insert-before-mix-args-018',
   'fn-insert-before-mix-args-019',
   'fn-insert-before-mix-args-020',
   'K-SeqInsertBeforeFunc-1',
   'K-SeqInsertBeforeFunc-2',
   'K-SeqInsertBeforeFunc-3',
   'K-SeqInsertBeforeFunc-4',
   'K-SeqInsertBeforeFunc-5',
   'K-SeqInsertBeforeFunc-6',
   'K-SeqInsertBeforeFunc-7',
   'K-SeqInsertBeforeFunc-8',
   'K-SeqInsertBeforeFunc-9',
   'K-SeqInsertBeforeFunc-10',
   'K-SeqInsertBeforeFunc-11',
   'K-SeqInsertBeforeFunc-12',
   'K-SeqInsertBeforeFunc-13',
   'K-SeqInsertBeforeFunc-14',
   'K-SeqInsertBeforeFunc-15',
   'K-SeqInsertBeforeFunc-16',
   'K-SeqInsertBeforeFunc-17',
   'K-SeqInsertBeforeFunc-18',
   'K-SeqInsertBeforeFunc-19',
   'K-SeqInsertBeforeFunc-20',
   'K-SeqInsertBeforeFunc-21',
   'cbcl-fn-insert-before-001',
   'cbcl-fn-insert-before-002'].
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
'fn-insert-before-mix-args-001'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:insert-before( (\"a\", \"b\", \"c\"),1, \"z\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-insert-before-mix-args-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"z\", \"a\", \"b\", \"c\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-insert-before-mix-args-002'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:insert-before( (\"a\", \"b\", \"c\"),0, ())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-insert-before-mix-args-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"a\", \"b\", \"c\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-insert-before-mix-args-003'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:insert-before( (\"a\", \"b\", \"c\"),2, ())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-insert-before-mix-args-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"a\", \"b\", \"c\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-insert-before-mix-args-004'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:insert-before( (\"a\", \"b\", \"c\"),2, xs:string(\" \"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-insert-before-mix-args-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"a\", \" \", \"b\", \"c\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-insert-before-mix-args-005'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:insert-before( (\"a\", \"b\", \"c\"),2, xs:anyURI(\"www.example.com\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-insert-before-mix-args-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"a\", \"www.example.com\", \"b\", \"c\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-insert-before-mix-args-006'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:insert-before( (\"a\", \"b\", \"c\"),2, xs:integer(\"100\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-insert-before-mix-args-006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"a\", 100, \"b\", \"c\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-insert-before-mix-args-007'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:insert-before( (\"a\", \"b\", \"c\"),2, xs:decimal(\"1.1\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-insert-before-mix-args-007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"a\", 1.1, \"b\", \"c\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-insert-before-mix-args-008'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:insert-before( (\"a\", \"b\", \"c\"),2, xs:float(\"1.1\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-insert-before-mix-args-008.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"a\", 1.1, \"b\", \"c\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-insert-before-mix-args-009'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:insert-before( (\"a\", \"b\", \"c\"),2, xs:float(\"NaN\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-insert-before-mix-args-009.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"a\", xs:float('NaN'), \"b\", \"c\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-insert-before-mix-args-010'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:insert-before( (\"a\", \"b\", \"c\"),2, xs:float(\"-0\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-insert-before-mix-args-010.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"a\", 0, \"b\", \"c\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-insert-before-mix-args-011'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:insert-before( (\"a\", \"b\", \"c\"),2, xs:float(\"-INF\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-insert-before-mix-args-011.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"a\", xs:float('-INF'), \"b\", \"c\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-insert-before-mix-args-012'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:insert-before( (\"a\", \"b\", \"c\"),2, xs:double(\"NaN\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-insert-before-mix-args-012.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"a\", xs:double('NaN'),  \"b\", \"c\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-insert-before-mix-args-013'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:insert-before( (\"a\", \"b\", \"c\"),2, xs:double(\"INF\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-insert-before-mix-args-013.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"a\", xs:double('INF'), \"b\", \"c\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-insert-before-mix-args-014'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:insert-before( (\"a\", \"b\", \"c\"),2, xs:boolean(\"1\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-insert-before-mix-args-014.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"a\", true(), \"b\", \"c\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-insert-before-mix-args-015'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:insert-before( (\"a\", \"b\", \"c\"),2, xs:boolean(\"0\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-insert-before-mix-args-015.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"a\", false(), \"b\", \"c\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-insert-before-mix-args-016'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:insert-before( (\"a\", \"b\", \"c\"),2, xs:boolean(\"true\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-insert-before-mix-args-016.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"a\", true(), \"b\", \"c\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-insert-before-mix-args-017'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:insert-before( (\"a\", \"b\", \"c\"),2, xs:boolean(\"false\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-insert-before-mix-args-017.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"a\", false(),  \"b\",  \"c\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-insert-before-mix-args-018'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:insert-before( (\"a\", \"b\", \"c\"),4, xs:date(\"1993-03-31\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-insert-before-mix-args-018.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"a\", \"b\", \"c\", xs:date('1993-03-31')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-insert-before-mix-args-019'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:insert-before( (\"a\", \"b\", \"c\"),4, xs:dateTime(\"1972-12-31T00:00:00\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-insert-before-mix-args-019.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"a\", \"b\", \"c\", xs:dateTime('1972-12-31T00:00:00')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-insert-before-mix-args-020'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:insert-before( (\"a\", \"b\", \"c\"),4, xs:time(\"12:30:00\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-insert-before-mix-args-020.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"a\", \"b\", \"c\", xs:time('12:30:00')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqInsertBeforeFunc-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "insert-before()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqInsertBeforeFunc-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqInsertBeforeFunc-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "insert-before(\"wrong params\", 2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqInsertBeforeFunc-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqInsertBeforeFunc-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "insert-before(\"wrong params\", 2, 3, 4)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqInsertBeforeFunc-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqInsertBeforeFunc-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "insert-before((), (), \"a string\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqInsertBeforeFunc-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqInsertBeforeFunc-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "insert-before((), -31, \"a string\") eq \"a string\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqInsertBeforeFunc-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqInsertBeforeFunc-6'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "count(insert-before((1, 2, 3), 1, (4, 5, 6))) eq 6",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqInsertBeforeFunc-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqInsertBeforeFunc-7'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "insert-before((), 1, 3) eq 3",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqInsertBeforeFunc-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqInsertBeforeFunc-8'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "insert-before((), 1, \"a string\") eq \"a string\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqInsertBeforeFunc-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqInsertBeforeFunc-9'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "count(insert-before((), 1, (1, 2, 3))) eq 3",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqInsertBeforeFunc-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqInsertBeforeFunc-10'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "insert-before((), 30, 7) eq 7",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqInsertBeforeFunc-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqInsertBeforeFunc-11'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "count(insert-before((1, 2, 3, 4), 30, ())) eq 4",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqInsertBeforeFunc-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqInsertBeforeFunc-12'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "insert-before(9, 30, ()) eq 9",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqInsertBeforeFunc-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqInsertBeforeFunc-13'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "count(insert-before((1, 2, 3, 4), 1, ())) eq 4",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqInsertBeforeFunc-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqInsertBeforeFunc-14'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "count(insert-before((1, 2, 3), 30, (4, 5, 6))) eq 6",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqInsertBeforeFunc-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqInsertBeforeFunc-15'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "count(insert-before((), 30, (1, 2, 3))) eq 3",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqInsertBeforeFunc-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqInsertBeforeFunc-16'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "count(insert-before((error(), 1), 1, (1, \"two\", 3))) > 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqInsertBeforeFunc-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOER0000") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqInsertBeforeFunc-17'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(insert-before((1, current-time(), 3), 1, (4, 5, 6))[last()] treat as xs:integer) eq 3",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqInsertBeforeFunc-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqInsertBeforeFunc-18'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(insert-before((1, current-time(), 3), 10, (4, 5, 6))[last()] treat as xs:integer) eq 6",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqInsertBeforeFunc-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqInsertBeforeFunc-19'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(insert-before((1, current-time(), 3), 10, (4, 5, 6))[last() - 3] treat as xs:integer) eq 3",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqInsertBeforeFunc-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqInsertBeforeFunc-20'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(insert-before((1, current-time(), 3), 10, ())[last()] treat as xs:integer) eq 3",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqInsertBeforeFunc-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqInsertBeforeFunc-21'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "empty(insert-before((1, current-time(), 3), 0, (4, 5, 6))[last() - 10])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-SeqInsertBeforeFunc-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-fn-insert-before-001'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "insert-before(1 to 10,5,20 to 30)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-fn-insert-before-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 2 3 4 20 21 22 23 24 25 26 27 28 29 30 5 6 7 8 9 10") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-fn-insert-before-002'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        insert-before((1 to 10,(20 to 30)[. mod 2 = 0],30 to 40),12,\"blah\")
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-fn-insert-before-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 2 3 4 5 6 7 8 9 10 20 blah 22 24 26 28 30 30 31 32 33 34 35 36 37 38 39 40") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
