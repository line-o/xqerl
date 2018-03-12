-module('prod_CopyNamespacesDecl_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['copynamespace-1'/1]).
-export(['copynamespace-2'/1]).
-export(['copynamespace-3'/1]).
-export(['copynamespace-4'/1]).
-export(['copynamespace-5'/1]).
-export(['copynamespace-6'/1]).
-export(['copynamespace-7'/1]).
-export(['copynamespace-8'/1]).
-export(['copynamespace-9'/1]).
-export(['copynamespace-10'/1]).
-export(['copynamespace-11'/1]).
-export(['copynamespace-12'/1]).
-export(['copynamespace-13'/1]).
-export(['copynamespace-14'/1]).
-export(['copynamespace-15'/1]).
-export(['copynamespace-16'/1]).
-export(['copynamespace-17'/1]).
-export(['copynamespace-18'/1]).
-export(['copynamespace-19'/1]).
-export(['copynamespace-20'/1]).
-export(['copynamespace-21'/1]).
-export(['copynamespace-22'/1]).
-export(['K-CopyNamespacesProlog-1'/1]).
-export(['K-CopyNamespacesProlog-2'/1]).
-export(['K-CopyNamespacesProlog-3'/1]).
-export(['K-CopyNamespacesProlog-4'/1]).
-export(['K-CopyNamespacesProlog-5'/1]).
-export(['K2-CopyNamespacesProlog-1'/1]).
-export(['K2-CopyNamespacesProlog-2'/1]).
-export(['K2-CopyNamespacesProlog-3'/1]).
-export(['K2-CopyNamespacesProlog-4'/1]).
-export(['K2-CopyNamespacesProlog-5'/1]).
-export(['K2-CopyNamespacesProlog-6'/1]).
-export(['K2-CopyNamespacesProlog-7'/1]).
-export(['K2-CopyNamespacesProlog-8'/1]).
-export(['K2-CopyNamespacesProlog-9'/1]).
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
   'copynamespace-1',
   'copynamespace-2',
   'copynamespace-3',
   'copynamespace-4',
   'copynamespace-5',
   'copynamespace-6',
   'copynamespace-7',
   'copynamespace-8',
   'copynamespace-9',
   'copynamespace-10',
   'copynamespace-11',
   'copynamespace-12',
   'copynamespace-13',
   'copynamespace-14',
   'copynamespace-15',
   'copynamespace-16',
   'copynamespace-17',
   'copynamespace-18',
   'copynamespace-19',
   'copynamespace-20',
   'copynamespace-21',
   'copynamespace-22',
   'K-CopyNamespacesProlog-1',
   'K-CopyNamespacesProlog-2',
   'K-CopyNamespacesProlog-3',
   'K-CopyNamespacesProlog-4',
   'K-CopyNamespacesProlog-5',
   'K2-CopyNamespacesProlog-1',
   'K2-CopyNamespacesProlog-2',
   'K2-CopyNamespacesProlog-3',
   'K2-CopyNamespacesProlog-4',
   'K2-CopyNamespacesProlog-5',
   'K2-CopyNamespacesProlog-6',
   'K2-CopyNamespacesProlog-7',
   'K2-CopyNamespacesProlog-8',
   'K2-CopyNamespacesProlog-9'].
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
'copynamespace-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare copy-namespaces preserve, no-inherit; declare copy-namespaces no-preserve, no-inherit; declare variable $input-context1 external; \"aaa\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "copynamespace-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0055") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'copynamespace-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare copy-namespaces preserve,no-inherit; 
      	declare default element namespace \"http://example.org/names\";
      	let $new := <newElement xmlns = \"http://www.example.com/mynamespace\">{element original {\"Original Content\"}}</newElement> 
      	return $new//*
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "copynamespace-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<original xmlns=\"http://www.example.com/mynamespace\">Original Content</original>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'copynamespace-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        declare namespace foo = \"http://example.org\"; 
        declare copy-namespaces preserve,no-inherit; 
        let $existingElement := <existingElement xmlns=\"http://www.existingnamespace.com\">{\"Existing Content\"}</existingElement> 
        let $new := <foo:newElement xmlns = \"http://www.mynamespace.com\">{$existingElement}</foo:newElement> 
        return in-scope-prefixes(exactly-one($new/child::node()))
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "copynamespace-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"\"\", \"xml\"") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'copynamespace-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare namespace foo = \"http://example.org\"; 
      	declare copy-namespaces preserve,inherit; 
      	let $existingElement := <existingElement xmlns=\"http://www.existingnamespace.com\">{\"Existing Content\"}</existingElement> 
      	let $new := <foo:newElement xmlns = \"http://www.mynamespace.com\">{$existingElement}</foo:newElement> 
      	for $var in (in-scope-prefixes($new//child::*)) 
      	order by exactly-one($var) ascending 
      	return $var
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "copynamespace-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, " foo xml") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'copynamespace-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare namespace foo = \"http://example.org\"; 
      	declare copy-namespaces preserve,no-inherit; 
      	let $existingElement := <foo:existingElement xmlns=\"http://www.existingnamespace.com\">{\"Existing Content\"}</foo:existingElement> 
      	let $new := <foo:newElement xmlns = \"http://www.mynamespace.com\">{$existingElement}</foo:newElement> 
      	for $var in (in-scope-prefixes($new//child::*)) 
      	order by exactly-one($var) ascending 
      	return $var
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "copynamespace-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, " foo xml") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'copynamespace-6'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare namespace foo = \"http://example.org\"; 
      	declare copy-namespaces preserve,inherit; 
      	let $existingElement := <foo:existingElement xmlns=\"http://www.existingnamespace.com\">{\"Existing Content\"}</foo:existingElement> 
      	let $new := <foo:newElement xmlns = \"http://www.mynamespace.com\">{$existingElement}</foo:newElement> 
      	for $var in (in-scope-prefixes($new//child::*)) 
      	order by exactly-one($var) ascending 
      	return $var
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "copynamespace-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, " foo xml") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'copynamespace-7'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare copy-namespaces no-preserve,no-inherit; 
      	declare variable $existingElement := <existingElement xmlns:existingNamespace=\"http://www.existingnamespace.com\">{\"Existing Content\"}</existingElement>; 
      	declare variable $new := <newElement xmlns = \"http://www.mynamespace.com\">{$existingElement}</newElement>; 
      	for $var in (in-scope-prefixes($new/existingElement)) 
      	order by exactly-one($var )ascending 
      	return $var",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "copynamespace-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "xml") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'copynamespace-8'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare copy-namespaces preserve,no-inherit; 
      	declare variable $existingElement := <existingElement xmlns:existingNamespace=\"http://www.existingnamespace.com\">{\"Existing Content\"}</existingElement>; 
      	declare variable $new := <newElement xmlns = \"http://www.mynamespace.com\">{$existingElement}</newElement>; 
      	for $var in (in-scope-prefixes($new/existingElement)) 
      	order by exactly-one($var) ascending 
      	return $var
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "copynamespace-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "existingNamespace xml") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'copynamespace-9'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare copy-namespaces no-preserve,inherit; 
      	declare variable $existingElement := <existingElement xmlns:existingNamespace=\"http://www.existingnamespace.com\">{\"Existing Content\"}</existingElement>; 
      	declare variable $new := <newElement xmlns:newNamespace = \"http://www.mynamespace.com\">{$existingElement}</newElement>; 
      	for $var in (in-scope-prefixes($new/existingElement)) 
      	order by exactly-one($var) ascending 
      	return $var",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "copynamespace-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "newNamespace xml") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'copynamespace-10'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare copy-namespaces preserve,inherit; 
      	declare variable $existingElement := <existingElement xmlns:existingNamespace=\"http://www.existingnamespace.com\">{\"Existing Content\"}</existingElement>; 
      	declare variable $new := <newElement xmlns:newNamespace = \"http://www.mynamespace.com\">{$existingElement}</newElement>; 
      	for $var in (in-scope-prefixes($new/existingElement)) 
      	order by exactly-one($var) ascending 
      	return $var
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "copynamespace-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "existingNamespace newNamespace xml") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'copynamespace-11'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare copy-namespaces preserve,inherit; 
      	declare variable $existingElement := <existingElement xmlns:existingNamespace=\"http://www.existingnamespace.com\">{\"Existing Content\"}</existingElement>; 
      	declare variable $new := <newElement xmlns:existingNamespace = \"http://www.mynamespace.com\">{$existingElement}</newElement>; 
      	for $var in (in-scope-prefixes($new/existingElement)) 
      	order by exactly-one($var) ascending 
      	return $var
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "copynamespace-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "existingNamespace xml") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'copynamespace-12'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare copy-namespaces preserve,inherit; 
      	declare variable $existingElement := <existingElement xmlns:existingNamespace=\"http://www.existingnamespace.com\">{\"Existing Content\"}</existingElement>; 
      	declare variable $new := <newElement xmlns:newNamespace = \"http://www.existingnamespace.com\">{$existingElement}</newElement>; 
      	for $var in (in-scope-prefixes($new/existingElement)) 
      	order by exactly-one($var) ascending 
      	return $var
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "copynamespace-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "existingNamespace newNamespace xml") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'copynamespace-13'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare copy-namespaces preserve,inherit; 
      	declare variable $existingElement := <existingElement>{\"Existing Content\"}</existingElement>; 
      	declare variable $new := <newElement>{$existingElement}</newElement>; 
      	for $var in (in-scope-prefixes(exactly-one($new/existingElement))) 
      	return $var
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "copynamespace-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "xml") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'copynamespace-14'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare copy-namespaces preserve,inherit; 
      	declare variable $existingElement := <existingElement xmlns:somespace=\"http://www.existingnamespace.com\">{\"Existing Content\"}</existingElement>; 
      	declare variable $new := <newElement xmlns:SOMESPACE=\"http://www.another.com\">{$existingElement}</newElement>; 
      	for $var in (in-scope-prefixes($new/existingElement)) 
      	order by exactly-one($var) ascending 
      	return $var
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "copynamespace-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "SOMESPACE somespace xml") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'copynamespace-15'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare copy-namespaces preserve,inherit; 
      	declare variable $element1 := <element1 xmlns:namespace1=\"http://www.namespace1.com\"></element1>; 
      	declare variable $element2 := <element2 xmlns:namespace2=\"http://www.namespace2.com\">{$element1}</element2>; 
      	declare variable $element3 := <element3 xmlns:namespace3=\"http://www.namespace3.com\">{$element2}</element3>; 
      	for $var in (in-scope-prefixes($element3/element2/element1)) 
      	order by exactly-one($var) ascending 
      	return $var
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "copynamespace-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "namespace1 namespace2 namespace3 xml") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'copynamespace-16'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare copy-namespaces no-preserve,inherit; 
      	declare variable $element1 := <element1 xmlns:namespace1=\"http://www.namespace1.com\"></element1>; 
      	declare variable $element2 := <element2 xmlns:namespace2=\"http://www.namespace2.com\">{$element1}</element2>; 
      	declare variable $element3 := <element3 xmlns:namespace3=\"http://www.namespace3.com\">{$element2}</element3>; 
      	for $var in (in-scope-prefixes($element3/element2/element1)) 
      	order by exactly-one($var) ascending 
      	return $var
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "copynamespace-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "namespace3 xml") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'copynamespace-17'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare copy-namespaces no-preserve,no-inherit; 
      	declare variable $element1 := <element1 xmlns:namespace1=\"http://www.namespace1.com\"></element1>; 
      	declare variable $element2 := <element2 xmlns:namespace2=\"http://www.namespace2.com\">{$element1}</element2>; 
      	declare variable $element3 := <element3 xmlns:namespace3=\"http://www.namespace3.com\">{$element2}</element3>; 
      	for $var in (in-scope-prefixes($element3/element2/element1)) 
      	order by exactly-one($var) ascending 
      	return $var
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "copynamespace-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "xml") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'copynamespace-18'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare copy-namespaces preserve,no-inherit; 
      	declare variable $element1 := <element1 xmlns:namespace1=\"http://www.namespace1.com\"></element1>; 
      	declare variable $element2 := <element2 xmlns:namespace2=\"http://www.namespace2.com\">{$element1}</element2>; 
      	declare variable $element3 := <element3 xmlns:namespace3=\"http://www.namespace3.com\">{$element2}</element3>; 
      	for $var in (in-scope-prefixes($element3/element2/element1)) 
      	order by exactly-one($var) ascending 
      	return $var
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "copynamespace-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "namespace1 xml") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'copynamespace-19'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare copy-namespaces preserve,inherit; 
      	declare variable $element1 := <element1 xmlns:namespace1=\"http://www.namespace1.com\"></element1>; 
      	declare variable $element2 := <element2 xmlns:namespace2=\"http://www.namespace2.com\">{$element1}</element2>; 
      	declare variable $element3 := <element3 xmlns:namespace3=\"http://www.namespace3.com\">{$element2}</element3>; 
      	for $var in (in-scope-prefixes($element3/element2)) 
      	order by exactly-one($var) ascending 
      	return $var
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "copynamespace-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "namespace2 namespace3 xml") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'copynamespace-20'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare copy-namespaces no-preserve,inherit; 
      	declare variable $element1 := <element1 xmlns:namespace1=\"http://www.namespace1.com\"></element1>; 
      	declare variable $element2 := <element2 xmlns:namespace2=\"http://www.namespace2.com\">{$element1}</element2>; 
      	declare variable $element3 := <element3 xmlns:namespace3=\"http://www.namespace3.com\">{$element2}</element3>; 
      	for $var in (in-scope-prefixes($element3/element2)) 
      	order by exactly-one($var) ascending 
      	return $var
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "copynamespace-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "namespace3 xml") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'copynamespace-21'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare copy-namespaces no-preserve,no-inherit; 
      	declare variable $element1 := <element1 xmlns:namespace1=\"http://www.namespace1.com\"></element1>; 
      	declare variable $element2 := <element2 xmlns:namespace2=\"http://www.namespace2.com\">{$element1}</element2>; 
      	declare variable $element3 := <element3 xmlns:namespace3=\"http://www.namespace3.com\">{$element2}</element3>; 
      	for $var in (in-scope-prefixes($element3/element2)) 
      	order by exactly-one($var) ascending 
      	return $var
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "copynamespace-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "xml") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'copynamespace-22'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare copy-namespaces preserve,no-inherit; 
      	declare variable $element1 := <element1 xmlns:namespace1=\"http://www.namespace1.com\"></element1>; 
      	declare variable $element2 := <element2 xmlns:namespace2=\"http://www.namespace2.com\">{$element1}</element2>; 
      	declare variable $element3 := <element3 xmlns:namespace3=\"http://www.namespace3.com\">{$element2}</element3>; 
      	for $var in (in-scope-prefixes($element3/element2)) 
      	order by exactly-one($var) ascending 
      	return $var
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "copynamespace-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "namespace2 xml") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-CopyNamespacesProlog-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare copy-namespaces preserve, no-inherit; declare copy-namespaces no-preserve, no-inherit; 1 eq 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-CopyNamespacesProlog-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0055") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-CopyNamespacesProlog-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare copy-namespaces no-preserve, no-inherit; 1 eq 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-CopyNamespacesProlog-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-CopyNamespacesProlog-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare copy-namespaces preserve, inherit; 1 eq 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-CopyNamespacesProlog-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-CopyNamespacesProlog-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare copy-namespaces no-inherit, no-preserve; 1 eq 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-CopyNamespacesProlog-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-CopyNamespacesProlog-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare copy-namespaces inherit, preserve; 1 eq 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-CopyNamespacesProlog-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-CopyNamespacesProlog-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare copy-namespaces no-preserve, inherit; <doc> <a>{<b xmlns:p=\"http://example.com/\"/>}</a> <a><b xmlns:p=\"http://example.com/\"/></a> </doc>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-CopyNamespacesProlog-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<doc><a><b/></a><a><b xmlns:p=\"http://example.com/\"/></a></doc>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-CopyNamespacesProlog-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "copy-namespaces lt copy-namespaces",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-CopyNamespacesProlog-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-CopyNamespacesProlog-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "namespace lt namespace",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-CopyNamespacesProlog-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-CopyNamespacesProlog-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare copy-namespaces preserve, no-inherit; <e xmlns=\"http://example.com/\"> { <b/> } </e>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-CopyNamespacesProlog-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e xmlns=\"http://example.com/\"><b/></e>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-CopyNamespacesProlog-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare copy-namespaces no-preserve, no-inherit; <e xmlns:appearsUnused=\"http://example.com/\"> { <b> <appearsUnused:c/> </b> } </e>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-CopyNamespacesProlog-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e xmlns:appearsUnused=\"http://example.com/\"><b><appearsUnused:c xmlns:appearsUnused=\"http://example.com/\"/></b></e>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-CopyNamespacesProlog-6'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace ns = \"http://example.com/\"; <e xmlns:appearsUnused=\"http://example.com/\"> { <b> <appearsUnused:c/> </b> } </e>/(for $n in (., b, b/ns:c), $i in in-scope-prefixes($n) order by $i return ($i, '|'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-CopyNamespacesProlog-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "appearsUnused | appearsUnused | appearsUnused | xml | xml | xml |") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-CopyNamespacesProlog-7'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare copy-namespaces no-preserve, no-inherit; <e> { <b> <c xmlns:unused=\"http://example.com\"/> </b> } </e>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-CopyNamespacesProlog-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e><b><c/></b></e>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-CopyNamespacesProlog-8'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare copy-namespaces no-preserve,inherit; <a> { <b>{()}</b> } </a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-CopyNamespacesProlog-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a><b/></a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-CopyNamespacesProlog-9'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare copy-namespaces preserve, no-inherit; declare variable $e1 := <e1 xmlns:namespace1=\"http://www.namespace1.com\"/>; declare variable $e2 := <e2 xmlns:namespace2=\"http://www.namespace2.com\">{$e1}</e2>; for $n in <e3 xmlns:namespace3=\"http://www.namespace3.com\">{$e2}</e3>/e2/e1, $ps in in-scope-prefixes($n) order by $ps return $ps, '|', for $n in <e3 xmlns:namespace3=\"http://www.namespace3.com\">{<e2 xmlns:namespace2=\"http://www.namespace2.com\">{<e1 xmlns:namespace1=\"http://www.namespace1.com\"/>}</e2>}</e3>/e2/e1, $ps in in-scope-prefixes($n) order by $ps return $ps",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-CopyNamespacesProlog-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "namespace1 xml | namespace1 namespace2 namespace3 xml") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
