(: Name: namespace-errors-q5 :)
(: Description: Rename of namespaced element with implicit namespace binding that clashes. :)

declare namespace nara = "http://www.anr.fr/nara";
declare namespace univ = "http://www.education.gouv.fr";
declare namespace coop = "http://www.gouv.fr/univ-industry-coop/";
declare namespace agro = "http://www.agroplus.com";

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

rename node $input-context/grant/nara:lab as fn:QName("http://www.example.com", "nara:lab")
