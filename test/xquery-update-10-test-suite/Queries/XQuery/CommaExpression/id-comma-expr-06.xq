(: Name: id-comma-expr-06 :)
(: Description: Evaluation of insert expression used with comma expression where first :)
(: expression is an updating expression and the second one is a mathematical expression.  :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]/employee[1]
return
(insert node <salary>20600</salary> into $var, (6 idiv 2) + 1)