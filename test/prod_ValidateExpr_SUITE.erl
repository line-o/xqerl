-module('prod_ValidateExpr_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['validateexpr-1'/1]).
-export(['validateexpr-2'/1]).
-export(['validateexpr-3'/1]).
-export(['validateexpr-4'/1]).
-export(['validateexpr-5'/1]).
-export(['validateexpr-6'/1]).
-export(['validateexpr-7'/1]).
-export(['validateexpr-8'/1]).
-export(['validateexpr-9'/1]).
-export(['validateexpr-10'/1]).
-export(['validateexpr-11'/1]).
-export(['validateexpr-12'/1]).
-export(['validateexpr-13'/1]).
-export(['validateexpr-14'/1]).
-export(['validateexpr-15'/1]).
-export(['validateexpr-16'/1]).
-export(['validateexpr-17'/1]).
-export(['validateexpr-18'/1]).
-export(['validateexpr-19'/1]).
-export(['validateexpr-20'/1]).
-export(['validateexpr-21'/1]).
-export(['validateexpr-23'/1]).
-export(['validateexpr-24'/1]).
-export(['validateexpr-25'/1]).
-export(['validateexpr-26'/1]).
-export(['validateexpr-27'/1]).
-export(['validateexpr-28'/1]).
-export(['validateexpr-29'/1]).
-export(['validateexpr-30'/1]).
-export(['validateexpr-31'/1]).
-export(['validateexpr-32'/1]).
-export(['validateexpr-33'/1]).
-export(['validateexpr-34'/1]).
-export(['validateexpr-35'/1]).
-export(['validateexpr-36'/1]).
-export(['validateexpr-37'/1]).
-export(['validateexpr-38'/1]).
-export(['validateexpr-39'/1]).
-export(['validateexpr-40'/1]).
-export(['validateexpr-41'/1]).
-export(['validateexpr-42'/1]).
-export(['K2-ValidateExpression-1'/1]).
-export(['validate-constraints-1'/1]).
-export(['validate-constraints-2'/1]).
-export(['validate-constraints-3'/1]).
-export(['validate-constraints-4'/1]).
-export(['validate-sc-1'/1]).
-export(['validateexpr-sc-2'/1]).
-export(['validateexpr-sc-4'/1]).
-export(['validateexpr-sc-5'/1]).
-export(['validateexpr-sc-6'/1]).
-export(['validateexpr-sc-7'/1]).
-export(['validateexpr-sc-8'/1]).
-export(['validateexpr-sc-9'/1]).
-export(['validate-as-101'/1]).
-export(['validate-as-102'/1]).
-export(['validate-as-103'/1]).
-export(['validate-as-104'/1]).
-export(['validate-as-105'/1]).
-export(['validate-as-106'/1]).
-export(['validate-as-107'/1]).
-export(['validate-as-91011'/1]).
-export(['validate-as-91012'/1]).
-export(['validate-as-91013'/1]).
-export(['validate-as-91014'/1]).
-export(['validate-as-91015'/1]).
-export(['validate-as-91016'/1]).
-export(['validate-as-91017'/1]).
-export(['cbcl-validateexpr-1'/1]).
-export(['cbcl-validateexpr-2'/1]).
-export(['cbcl-validateexpr-3'/1]).
-export(['cbcl-validateexpr-4'/1]).
-export(['cbcl-validateexpr-5'/1]).
-export(['cbcl-validateexpr-6'/1]).
-export(['cbcl-validateexpr-7'/1]).
-export(['cbcl-validateexpr-8'/1]).
-export(['cbcl-validateexpr-9'/1]).
-export(['cbcl-validateexpr-10'/1]).
-export(['cbcl-validateexpr-11'/1]).
-export(['cbcl-validateexpr-12'/1]).
-export(['cbcl-validateexpr-13'/1]).
-export(['cbcl-validateexpr-14'/1]).
-export(['cbcl-validateexpr-15'/1]).
-export(['cbcl-validateexpr-16'/1]).
-export(['cbcl-validateexpr-17'/1]).
suite() -> [{timetrap,{seconds, 5}}].
end_per_suite(_Config) -> 
   ct:timetrap({seconds,60}), 
   xqerl_module:unload(all).
init_per_suite(Config) -> 
   xqerl_module:one_time_init(), 
   {ok,_} = application:ensure_all_started(xqerl),
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   __BaseDir = filename:join(TD, "prod"),
   [{base_dir, __BaseDir}|Config].
all() -> [
'validateexpr-1', 
'validateexpr-2', 
'validateexpr-3', 
'validateexpr-4', 
'validateexpr-5', 
'validateexpr-6', 
'validateexpr-7', 
'validateexpr-8', 
'validateexpr-9', 
'validateexpr-10', 
'validateexpr-11', 
'validateexpr-12', 
'validateexpr-13', 
'validateexpr-14', 
'validateexpr-15', 
'validateexpr-16', 
'validateexpr-17', 
'validateexpr-18', 
'validateexpr-19', 
'validateexpr-20', 
'validateexpr-21', 
'validateexpr-23', 
'validateexpr-24', 
'validateexpr-25', 
'validateexpr-26', 
'validateexpr-27', 
'validateexpr-28', 
'validateexpr-29', 
'validateexpr-30', 
'validateexpr-31', 
'validateexpr-32', 
'validateexpr-33', 
'validateexpr-34', 
'validateexpr-35', 
'validateexpr-36', 
'validateexpr-37', 
'validateexpr-38', 
'validateexpr-39', 
'validateexpr-40', 
'validateexpr-41', 
'validateexpr-42', 
'K2-ValidateExpression-1', 
'validate-constraints-1', 
'validate-constraints-2', 
'validate-constraints-3', 
'validate-constraints-4', 
'validate-sc-1', 
'validateexpr-sc-2', 
'validateexpr-sc-4', 
'validateexpr-sc-5', 
'validateexpr-sc-6', 
'validateexpr-sc-7', 
'validateexpr-sc-8', 
'validateexpr-sc-9', 
'validate-as-101', 
'validate-as-102', 
'validate-as-103', 
'validate-as-104', 
'validate-as-105', 
'validate-as-106', 
'validate-as-107', 
'validate-as-91011', 
'validate-as-91012', 
'validate-as-91013', 
'validate-as-91014', 
'validate-as-91015', 
'validate-as-91016', 
'validate-as-91017', 
'cbcl-validateexpr-1', 
'cbcl-validateexpr-2', 
'cbcl-validateexpr-3', 
'cbcl-validateexpr-4', 
'cbcl-validateexpr-5', 
'cbcl-validateexpr-6', 
'cbcl-validateexpr-7', 
'cbcl-validateexpr-8', 
'cbcl-validateexpr-9', 
'cbcl-validateexpr-10', 
'cbcl-validateexpr-11', 
'cbcl-validateexpr-12', 
'cbcl-validateexpr-13', 
'cbcl-validateexpr-14', 
'cbcl-validateexpr-15', 
'cbcl-validateexpr-16', 
'cbcl-validateexpr-17'
].
environment('orderData',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "OrderByClause/orderData.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, [{filename:join(__BaseDir, "OrderByClause/orderData.xsd"),"http://www.w3.org/XQueryTestOrderBy"}]}, 
{resources, []}, 
{modules, []}
]; 
environment('ListUnionTypes',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, [{filename:join(__BaseDir, "ValidateExpr/listunion.xsd"),"http://www.w3.org/XQueryTest/ListUnionTypes"}]}, 
{resources, []}, 
{modules, []}
]; 
environment('simplexsd',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, [{filename:join(__BaseDir, "ValidateExpr/simple.xsd"),"http://www.w3.org/XQueryTest/simple"}]}, 
{resources, []}, 
{modules, []}
]; 
environment('xq-e18xsd',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, [{filename:join(__BaseDir, "ValidateExpr/xq-e18.xsd"),"http://www.example.com/ns/test/xq-e18"}]}, 
{resources, []}, 
{modules, []}
]; 
environment('constraints',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, [{filename:join(__BaseDir, "ValidateExpr/constraints.xsd"),"http://www.w3.org/constraints"}]}, 
{resources, []}, 
{modules, []}
]; 
environment('complexSimple',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, [{filename:join(__BaseDir, "ValidateExpr/simpleContent.xsd"),"http://www.w3.org/query-test/complexSimple"}]}, 
{resources, []}, 
{modules, []}
]; 
environment('hats',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, [{filename:join(__BaseDir, "SchemaImport/hats.xsd"),"http://www.w3.org/XQueryTest/hats"}]}, 
{resources, []}, 
{modules, []}
]; 
environment('complexData',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../fn/data/complexData.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, [{filename:join(__BaseDir, "../fn/data/complexData.xsd"),"http://www.cbcl.co.uk/XQueryTest/complexData"}]}, 
{resources, []}, 
{modules, []}
]; 
environment('validate',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../fn/nilled/validate.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, [{filename:join(__BaseDir, "../fn/nilled/validate.xsd"),"http://www.w3.org/XQueryTest/testcases"}]}, 
{resources, []}, 
{modules, []}
]; 
environment('user-defined-types',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, [{filename:join(__BaseDir, "../docs/userdefined.xsd"),"http://www.w3.org/XQueryTest/userDefinedTypes"}]}, 
{resources, []}, 
{modules, []}
]; 
environment('abstract',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "ValidateExpr/AbstractType/obj.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, [{filename:join(__BaseDir, "ValidateExpr/AbstractType/schema.xsd"),"http://myns"}]}, 
{resources, []}, 
{modules, []}
].
'validateexpr-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'validateexpr-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'validateexpr-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'validateexpr-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'validateexpr-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'validateexpr-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'validateexpr-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'validateexpr-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'validateexpr-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'validateexpr-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'validateexpr-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'validateexpr-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'validateexpr-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'validateexpr-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'validateexpr-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'validateexpr-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'validateexpr-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'validateexpr-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'validateexpr-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'validateexpr-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'validateexpr-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'validateexpr-23'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'validateexpr-24'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'validateexpr-25'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'validateexpr-26'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'validateexpr-27'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'validateexpr-28'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'validateexpr-29'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'validateexpr-30'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'validateexpr-31'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'validateexpr-32'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'validateexpr-33'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'validateexpr-34'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'validateexpr-35'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'validateexpr-36'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'validateexpr-37'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'validateexpr-38'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'validateexpr-39'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'validateexpr-40'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'validateexpr-41'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'validateexpr-42'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'K2-ValidateExpression-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'validate-constraints-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'validate-constraints-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'validate-constraints-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'validate-constraints-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'validate-sc-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'validateexpr-sc-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'validateexpr-sc-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'validateexpr-sc-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'validateexpr-sc-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'validateexpr-sc-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'validateexpr-sc-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'validateexpr-sc-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'validate-as-101'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'validate-as-102'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'validate-as-103'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'validate-as-104'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'validate-as-105'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'validate-as-106'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'validate-as-107'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'validate-as-91011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'validate-as-91012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'validate-as-91013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XQ10+"}. 
'validate-as-91014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'validate-as-91015'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'validate-as-91016'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'validate-as-91017'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'cbcl-validateexpr-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'cbcl-validateexpr-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'cbcl-validateexpr-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'cbcl-validateexpr-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'cbcl-validateexpr-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'cbcl-validateexpr-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'cbcl-validateexpr-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'cbcl-validateexpr-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'cbcl-validateexpr-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'cbcl-validateexpr-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'cbcl-validateexpr-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'cbcl-validateexpr-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'cbcl-validateexpr-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'cbcl-validateexpr-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'cbcl-validateexpr-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'cbcl-validateexpr-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'cbcl-validateexpr-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.