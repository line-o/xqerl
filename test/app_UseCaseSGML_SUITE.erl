-module('app_UseCaseSGML_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['sgml-queries-results-q1'/1]).
-export(['sgml-queries-results-q2'/1]).
-export(['sgml-queries-results-q3'/1]).
-export(['sgml-queries-results-q4'/1]).
-export(['sgml-queries-results-q5'/1]).
-export(['sgml-queries-results-q6'/1]).
-export(['sgml-queries-results-q7'/1]).
-export(['sgml-queries-results-q8a'/1]).
-export(['sgml-queries-results-q8b'/1]).
-export(['sgml-queries-results-q9'/1]).
-export(['sgml-queries-results-q10'/1]).
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
    'sgml-queries-results-q1', 
    'sgml-queries-results-q2', 
    'sgml-queries-results-q3', 
    'sgml-queries-results-q4', 
    'sgml-queries-results-q5', 
    'sgml-queries-results-q6', 
    'sgml-queries-results-q7', 
    'sgml-queries-results-q8a', 
    'sgml-queries-results-q8b', 
    'sgml-queries-results-q9', 
    'sgml-queries-results-q10']}].
environment('sgml',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/sgml.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
].
'sgml-queries-results-q1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<result> { //report//para } </result>", 
   {Env,Opts} = xqerl_test:handle_environment(environment('sgml',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "sgml-queries-results-q1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result><para>With the ever-changing and growing global market, companies and
 large organizations are searching for ways to become more viable and
 competitive. Downsizing and other cost-cutting measures demand more
 efficient use of corporate resources. One very important resource is
 an organization's information.</para><para>As part of the move toward integrated information management,
 whole industries are developing and implementing standards for
 exchanging technical information. This report describes how one such
 standard, the Standard Generalized Markup Language (SGML), works as
 part of an overall information management strategy.</para><para>While SGML is a fairly recent technology, the use of
 <emph>markup</emph> in computer-generated documents has existed for a
 while.</para><para>Markup is everything in a document that is not content. The
 traditional meaning of markup is the manual <emph>marking</emph> up
 of typewritten text to give instructions for a typesetter or
 compositor about how to fit the text on a page and what typefaces to
 use. This kind of markup is known as <emph>procedural markup</emph>.</para><para>Most electronic publishing systems today use some form of
 procedural markup. Procedural markup codes are good for one
 presentation of the information.</para><para>Generic markup (also known as descriptive markup) describes the
 <emph>purpose</emph> of the text in a document. A basic concept of
 generic markup is that the content of a document must be separate from
 the style. Generic markup allows for multiple presentations of the
 information.</para><para>Industries involved in technical documentation increasingly
 prefer generic over procedural markup schemes. When a company changes
 software or hardware systems, enormous data translation tasks arise,
 often resulting in errors.</para><para>SGML defines a strict markup scheme with a syntax for defining
 document data elements and an overall framework for marking up
 documents.</para><para>SGML can describe and create documents that are not dependent on
 any hardware, software, formatter, or operating system. Since SGML documents
 conform to an international standard, they are portable.</para><para>You can break a typical document into three layers: structure,
 content, and style. SGML works by separating these three aspects and
 deals mainly with the relationship between structure and content.</para><para>At the heart of an SGML application is a file called the DTD, or
 Document Type Definition. The DTD sets up the structure of a document,
 much like a database schema describes the types of information it
 handles.</para><para>A database schema also defines the relationships between the
 various types of data. Similarly, a DTD specifies <emph>rules</emph>
 to help ensure documents have a consistent, logical structure.</para><para>Content is the information itself. The method for identifying
 the information and its meaning within this framework is called
 <emph>tagging</emph>. Tagging must
 conform to the rules established in the DTD (see <xref xrefid=\"top4\"/>).</para><para>SGML does not standardize style or other processing methods for
 information stored in SGML.</para><para>The Graphic Communications Association has been
 instrumental in the development of SGML. GCA provides conferences,
 tutorials, newsletters, and publication sales for both members and
 non-members.</para><para security=\"c\">Exiled members of the former Soviet Union's secret
 police, the KGB, have infiltrated the upper ranks of the GCA and are
 planning the Final Revolution as soon as DSSSL is completed.</para></result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'sgml-queries-results-q2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<result> { //intro/para } </result>", 
   {Env,Opts} = xqerl_test:handle_environment(environment('sgml',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "sgml-queries-results-q2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result><para>With the ever-changing and growing global market, companies and
 large organizations are searching for ways to become more viable and
 competitive. Downsizing and other cost-cutting measures demand more
 efficient use of corporate resources. One very important resource is
 an organization's information.</para><para>As part of the move toward integrated information management,
 whole industries are developing and implementing standards for
 exchanging technical information. This report describes how one such
 standard, the Standard Generalized Markup Language (SGML), works as
 part of an overall information management strategy.</para><para>While SGML is a fairly recent technology, the use of
 <emph>markup</emph> in computer-generated documents has existed for a
 while.</para><para>Markup is everything in a document that is not content. The
 traditional meaning of markup is the manual <emph>marking</emph> up
 of typewritten text to give instructions for a typesetter or
 compositor about how to fit the text on a page and what typefaces to
 use. This kind of markup is known as <emph>procedural markup</emph>.</para><para>SGML defines a strict markup scheme with a syntax for defining
 document data elements and an overall framework for marking up
 documents.</para><para>SGML can describe and create documents that are not dependent on
 any hardware, software, formatter, or operating system. Since SGML documents
 conform to an international standard, they are portable.</para><para>You can break a typical document into three layers: structure,
 content, and style. SGML works by separating these three aspects and
 deals mainly with the relationship between structure and content.</para><para>The Graphic Communications Association has been
 instrumental in the development of SGML. GCA provides conferences,
 tutorials, newsletters, and publication sales for both members and
 non-members.</para><para security=\"c\">Exiled members of the former Soviet Union's secret
 police, the KGB, have infiltrated the upper ranks of the GCA and are
 planning the Final Revolution as soon as DSSSL is completed.</para></result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'sgml-queries-results-q3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<result> { for $c in //chapter where empty($c/intro) return $c/section/intro/para } </result>", 
   {Env,Opts} = xqerl_test:handle_environment(environment('sgml',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "sgml-queries-results-q3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result><para>The Graphic Communications Association has been
 instrumental in the development of SGML. GCA provides conferences,
 tutorials, newsletters, and publication sales for both members and
 non-members.</para><para security=\"c\">Exiled members of the former Soviet Union's secret
 police, the KGB, have infiltrated the upper ranks of the GCA and are
 planning the Final Revolution as soon as DSSSL is completed.</para></result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'sgml-queries-results-q4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<result> { (((//chapter)[2]//section)[3]//para)[2] } </result>", 
   {Env,Opts} = xqerl_test:handle_environment(environment('sgml',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "sgml-queries-results-q4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result><para>At the heart of an SGML application is a file called the DTD, or
 Document Type Definition. The DTD sets up the structure of a document,
 much like a database schema describes the types of information it
 handles.</para></result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'sgml-queries-results-q5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<result> { //para[@security = \"c\"] } </result>", 
   {Env,Opts} = xqerl_test:handle_environment(environment('sgml',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "sgml-queries-results-q5.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result><para security=\"c\">Exiled members of the former Soviet Union's secret
 police, the KGB, have infiltrated the upper ranks of the GCA and are
 planning the Final Revolution as soon as DSSSL is completed.</para></result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'sgml-queries-results-q6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<result> { for $s in //section/@shorttitle return <stitle>{ $s }</stitle> } </result>", 
   {Env,Opts} = xqerl_test:handle_environment(environment('sgml',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "sgml-queries-results-q6.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result><stitle shorttitle=\"What is markup?\"/><stitle shorttitle=\"What is SGML?\"/><stitle shorttitle=\"How does SGML work?\"/></result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'sgml-queries-results-q7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<result> { for $i in //intro/para[1] return <first_letter>{ substring(string($i), 1, 1) }</first_letter> } </result>", 
   {Env,Opts} = xqerl_test:handle_environment(environment('sgml',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "sgml-queries-results-q7.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result><first_letter>W</first_letter><first_letter>W</first_letter><first_letter>M</first_letter><first_letter>S</first_letter><first_letter>Y</first_letter><first_letter>T</first_letter></result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'sgml-queries-results-q8a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<result> { //section[.//title[contains(., \"is SGML\")]] } </result>", 
   {Env,Opts} = xqerl_test:handle_environment(environment('sgml',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "sgml-queries-results-q8a.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result><section shorttitle=\"What is SGML?\">
 <title>What <emph>is</emph> SGML in the grand scheme of the universe, anyway?</title>
 <intro>
 <para>SGML defines a strict markup scheme with a syntax for defining
 document data elements and an overall framework for marking up
 documents.</para>
 <para>SGML can describe and create documents that are not dependent on
 any hardware, software, formatter, or operating system. Since SGML documents
 conform to an international standard, they are portable.</para></intro></section><section shorttitle=\"How does SGML work?\">
 <title>How is SGML and would you recommend it to your grandmother?</title>
 <intro>
 <para>You can break a typical document into three layers: structure,
 content, and style. SGML works by separating these three aspects and
 deals mainly with the relationship between structure and content.</para></intro>
 <topic topicid=\"top4\">
 <title>Structure</title>
 <para>At the heart of an SGML application is a file called the DTD, or
 Document Type Definition. The DTD sets up the structure of a document,
 much like a database schema describes the types of information it
 handles.</para>
 <para>A database schema also defines the relationships between the
 various types of data. Similarly, a DTD specifies <emph>rules</emph>
 to help ensure documents have a consistent, logical structure.</para></topic>
 <topic topicid=\"top5\">
 <title>Content</title>
 <para>Content is the information itself. The method for identifying
 the information and its meaning within this framework is called
 <emph>tagging</emph>. Tagging must
 conform to the rules established in the DTD (see <xref xrefid=\"top4\"/>).</para>
 <graphic graphname=\"tagexamp\"/></topic>
 <topic topicid=\"top6\">
 <title>Style</title>
 <para>SGML does not standardize style or other processing methods for
 information stored in SGML.</para></topic></section></result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'sgml-queries-results-q8b'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<result> { //section[.//title/text()[contains(., \"is SGML\")]] } </result>", 
   {Env,Opts} = xqerl_test:handle_environment(environment('sgml',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "sgml-queries-results-q8b.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<result><section shorttitle=\"How does SGML work?\">
 <title>How is SGML and would you recommend it to your grandmother?</title>
 <intro>
 <para>You can break a typical document into three layers: structure,
 content, and style. SGML works by separating these three aspects and
 deals mainly with the relationship between structure and content.</para></intro>
 <topic topicid=\"top4\">
 <title>Structure</title>
 <para>At the heart of an SGML application is a file called the DTD, or
 Document Type Definition. The DTD sets up the structure of a document,
 much like a database schema describes the types of information it
 handles.</para>
 <para>A database schema also defines the relationships between the
 various types of data. Similarly, a DTD specifies <emph>rules</emph>
 to help ensure documents have a consistent, logical structure.</para></topic>
 <topic topicid=\"top5\">
 <title>Content</title>
 <para>Content is the information itself. The method for identifying
 the information and its meaning within this framework is called
 <emph>tagging</emph>. Tagging must
 conform to the rules established in the DTD (see <xref xrefid=\"top4\"/>).</para>
 <graphic graphname=\"tagexamp\"/></topic>
 <topic topicid=\"top6\">
 <title>Style</title>
 <para>SGML does not standardize style or other processing methods for
 information stored in SGML.</para></topic></section></result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'sgml-queries-results-q9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<result> { for $id in //xref/@xrefid return //topic[@topicid = $id] } </result>", 
   {Env,Opts} = xqerl_test:handle_environment(environment('sgml',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "sgml-queries-results-q9.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result><topic topicid=\"top4\">
 <title>Structure</title>
 <para>At the heart of an SGML application is a file called the DTD, or
 Document Type Definition. The DTD sets up the structure of a document,
 much like a database schema describes the types of information it
 handles.</para>
 <para>A database schema also defines the relationships between the
 various types of data. Similarly, a DTD specifies <emph>rules</emph>
 to help ensure documents have a consistent, logical structure.</para></topic></result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'sgml-queries-results-q10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<result> { let $x := //xref[@xrefid = \"top4\"], $t := //title[. << exactly-one($x)] return $t[last()] } </result>", 
   {Env,Opts} = xqerl_test:handle_environment(environment('sgml',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "sgml-queries-results-q10.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result><title>Content</title></result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.