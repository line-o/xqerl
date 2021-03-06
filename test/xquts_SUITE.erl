-module('xquts_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
         
-export(['variable-declaration-01'/1,
         'variable-declaration-02'/1,
         'id-function-declaration-01'/1,
         'id-function-declaration-02'/1,
         'id-function-declaration-03'/1,
         'id-function-declaration-04'/1,
         'id-function-declaration-05'/1,
         'id-function-declaration-06'/1,
         'id-function-declaration-07'/1,
         'id-function-declaration-08'/1,
         'id-function-declaration-09'/1,
         'id-function-declaration-010'/1,
         'id-function-declaration-011'/1,
         'id-function-declaration-012'/1,
         'id-function-declaration-013'/1,
         'id-function-declaration-014'/1,
         'id-function-declaration-015'/1,
         'id-function-declaration-016'/1,
         'id-function-declaration-017'/1,
         'function-declaration-01'/1,
         'function-declaration-02'/1,
         'function-declaration-03'/1,
         'function-declaration-04'/1,
         'id-insert-expr-01'/1,
         'id-insert-expr-02'/1,
         'id-insert-expr-03'/1,
         'id-insert-expr-04'/1,
         'id-insert-expr-05'/1,
         'id-insert-expr-06'/1,
         'id-insert-expr-07'/1,
         'id-insert-expr-08'/1,
         'id-insert-expr-09'/1,
         'id-insert-expr-010'/1,
         'id-insert-expr-011'/1,
         'id-insert-expr-012'/1,
         'id-insert-expr-013'/1,
         'id-insert-expr-014'/1,
         'id-insert-expr-015'/1,
         'id-insert-expr-016'/1,
         'id-insert-expr-017'/1,
         'id-insert-expr-018'/1,
         'id-insert-expr-019'/1,
         'id-insert-expr-020'/1,
         'id-insert-expr-021'/1,
         'id-insert-expr-022'/1,
         'id-insert-expr-023'/1,
         'id-insert-expr-024'/1,
         'id-insert-expr-025'/1,
         'id-insert-expr-026'/1,
         'id-insert-expr-027'/1,
         'id-insert-expr-028'/1,
         'id-insert-expr-029'/1,
         'id-insert-expr-030'/1,
         'id-insert-expr-031'/1,
         'id-insert-expr-032'/1,
         'id-insert-expr-033'/1,
         'id-insert-expr-034'/1,
         'id-insert-expr-035'/1,
         'id-insert-expr-036'/1,
         'id-insert-expr-037'/1,
         'id-insert-expr-038'/1,
         'id-insert-expr-039'/1,
         'id-insert-expr-040'/1,
         'id-insert-expr-041'/1,
         'id-insert-expr-042'/1,
         'id-insert-expr-043'/1,
         'id-insert-expr-044'/1,
         'id-insert-expr-045'/1,
         'id-insert-expr-046'/1,
         'id-insert-expr-047'/1,
         'id-insert-expr-048'/1,
         'id-insert-expr-049'/1,
         'id-insert-expr-050'/1,
         'id-insert-expr-051'/1,
         'id-insert-expr-052'/1,
         'id-insert-expr-053'/1,
         'id-insert-expr-054'/1,
         'id-insert-expr-055'/1,
         'id-insert-expr-056'/1,
         'id-insert-expr-057'/1,
         'id-insert-expr-058'/1,
         'id-insert-expr-059'/1,
         'id-insert-expr-060'/1,
         'id-insert-expr-061'/1,
         'id-insert-expr-062'/1,
         'id-insert-expr-063'/1,
         'id-insert-expr-064'/1,
         'id-insert-expr-065'/1,
         'id-insert-expr-066'/1,
         'id-insert-expr-067'/1,
         'id-insert-expr-068'/1,
         'id-insert-expr-069'/1,
         'id-insert-expr-070'/1,
         'id-insert-expr-071'/1,
         'id-insert-expr-072'/1,
         'id-insert-expr-073'/1,
         'id-insert-expr-074'/1,
         'id-insert-expr-075'/1,
         'id-insert-expr-076'/1,
         'id-insert-expr-077'/1,
         'id-insert-expr-078'/1,
         'id-insert-expr-079'/1,
         'id-insert-expr-080'/1,
         'id-insert-expr-081'/1,
         'id-insert-expr-082'/1,
         'id-insert-expr-083'/1,
         'id-insert-expr-084'/1,
         'id-insert-expr-085'/1,
         'id-insert-expr-086'/1,
         'id-insert-expr-081-no-inherit'/1,
         'id-insert-expr-082-no-inherit'/1,
         'id-insert-expr-083-no-inherit'/1,
         'id-insert-expr-084-no-inherit'/1,
         'id-insert-expr-085-no-inherit'/1,
         'id-insert-expr-086-no-inherit'/1,
         'id-insert-expr-087'/1,
         'id-insert-expr-088'/1,
         'id-insert-expr-089'/1,
         'id-insert-expr-090'/1,
         'id-insert-expr-091'/1,
         'id-insert-expr-092'/1,
         'id-insert-expr-093'/1,
         'id-insert-expr-094'/1,
         'id-delete-expr-01'/1,
         'id-delete-expr-02'/1,
         'id-delete-expr-03'/1,
         'id-delete-expr-04'/1,
         'id-delete-expr-05'/1,
         'id-delete-expr-06'/1,
         'id-delete-expr-07'/1,
         'id-delete-expr-08'/1,
         'id-delete-expr-09'/1,
         'id-delete-expr-010'/1,
         'id-delete-expr-011'/1,
         'id-delete-expr-012'/1,
         'id-delete-expr-013'/1,
         'id-delete-expr-014'/1,
         'id-delete-expr-015'/1,
         'id-delete-expr-016'/1,
         'id-delete-expr-017'/1,
         'id-delete-expr-018'/1,
         'id-delete-expr-019'/1,
         'id-delete-expr-020'/1,
         'id-delete-expr-021'/1,
         'id-delete-expr-022'/1,
         'complex-deletes-q3'/1,
         'complex-deletes-q4'/1,
         'complex-deletes-q5'/1,
         'complex-deletes-q10'/1,
         'complex-deletes-q11'/1,
         'complex-deletes-q12'/1,
         'complex-deletes-q13'/1,
         'complex-deletes-q14'/1,
         'id-replace-expr-01'/1,
         'id-replace-expr-02'/1,
         'id-replace-expr-03'/1,
         'id-replace-expr-04'/1,
         'id-replace-expr-010'/1,
         'id-replace-expr-011'/1,
         'id-replace-expr-012'/1,
         'id-replace-expr-013'/1,
         'id-replace-expr-014'/1,
         'id-replace-expr-015'/1,
         'id-replace-expr-016'/1,
         'id-replace-expr-022'/1,
         'id-replace-expr-023'/1,
         'id-replace-expr-028'/1,
         'id-replace-expr-029'/1,
         'id-replace-expr-030'/1,
         'id-replace-expr-031'/1,
         'id-replace-expr-032'/1,
         'id-replace-expr-033'/1,
         'id-replace-expr-034'/1,
         'id-replace-expr-045'/1,
         'id-replace-expr-045-no-inherit'/1,
         'id-replace-expr-05'/1,
         'id-replace-expr-06'/1,
         'id-replace-expr-07'/1,
         'id-replace-expr-08'/1,
         'id-replace-expr-09'/1,
         'id-replace-expr-017'/1,
         'id-replace-expr-018'/1,
         'id-replace-expr-019'/1,
         'id-replace-expr-020'/1,
         'id-replace-expr-021'/1,
         'id-replace-expr-024'/1,
         'id-replace-expr-025'/1,
         'id-replace-expr-026'/1,
         'id-replace-expr-027'/1,
         'id-replace-expr-035'/1,
         'id-replace-expr-036'/1,
         'id-replace-expr-037'/1,
         'id-replace-expr-038'/1,
         'id-replace-expr-039'/1,
         'id-replace-expr-040'/1,
         'id-replace-expr-041'/1,
         'id-replace-expr-042'/1,
         'id-replace-expr-043'/1,
         'id-replace-expr-044'/1,
         'complex-replacevalues-q3'/1,
         'complex-replacevalues-q4'/1,
         'complex-replacevalues-q5'/1,
         'complex-replacevalues-q9'/1,
         'complex-replacevalues-q10'/1,
         'complex-replacevalues-q11'/1,
         'complex-replacevalues-q12'/1,
         'complex-replacevalues-q13'/1,
         'complex-replacevalues-q14'/1,
         'id-rename-expr-01'/1,
         'id-rename-expr-02'/1,
         'id-rename-expr-03'/1,
         'id-rename-expr-04'/1,
         'id-rename-expr-05'/1,
         'id-rename-expr-06'/1,
         'id-rename-expr-07'/1,
         'id-rename-expr-08'/1,
         'id-rename-expr-09'/1,
         'id-rename-expr-010'/1,
         'id-rename-expr-011'/1,
         'id-rename-expr-012'/1,
         'id-rename-expr-013'/1,
         'id-rename-expr-014'/1,
         'id-rename-expr-015'/1,
         'id-rename-expr-016'/1,
         'id-rename-expr-017'/1,
         'id-rename-expr-018'/1,
         'id-rename-expr-019'/1,
         'id-rename-expr-020'/1,
         'id-rename-expr-021'/1,
         'id-rename-expr-022'/1,
         'id-rename-expr-023'/1,
         'id-rename-expr-024'/1,
         'id-rename-expr-025'/1,
         'id-rename-expr-026'/1,
         'id-rename-expr-027'/1,
         'id-rename-expr-028'/1,
         'id-rename-expr-029'/1,
         'id-rename-expr-030'/1,
         'id-rename-expr-031'/1,
         'id-rename-expr-032'/1,
         'id-rename-expr-033'/1,
         'id-rename-expr-034'/1,
         'id-rename-expr-033-no-inherit'/1,
         'id-rename-expr-034-no-inherit'/1,
         'id-rename-expr-035'/1,
         'id-rename-expr-036'/1,
         'id-rename-expr-037'/1,
         'complex-renames-q1'/1,
         'complex-renames-q5'/1,
         'complex-renames-q6'/1,
         'complex-renames-q7'/1,
         'complex-renames-q8'/1,
         'id-transform-expr-01'/1,
         'id-transform-expr-02'/1,
         'id-transform-expr-03'/1,
         'id-transform-expr-04'/1,
         'id-transform-expr-05'/1,
         'id-transform-expr-06'/1,
         'id-transform-expr-07'/1,
         'id-transform-expr-08'/1,
         'id-transform-expr-09'/1,
         'id-transform-expr-010'/1,
         'id-transform-expr-011'/1,
         'id-transform-expr-012'/1,
         'id-transform-expr-013'/1,
         'id-transform-expr-014'/1,
         'id-transform-expr-015'/1,
         'id-transform-expr-016'/1,
         'id-transform-expr-017'/1,
         'id-transform-expr-018'/1,
         'id-transform-expr-019'/1,
         'id-transform-expr-020'/1,
         'id-transform-expr-021'/1,
         'id-transform-expr-022'/1,
         'id-transform-expr-023'/1,
         'id-transform-expr-024'/1,
         'id-transform-expr-025'/1,
         'id-transform-expr-026'/1,
         'id-transform-expr-027'/1,
         'id-transform-expr-028'/1,
         'id-transform-expr-029'/1,
         'id-transform-expr-030'/1,
         'id-transform-expr-031'/1,
         'id-transform-expr-032'/1,
         'id-transform-expr-033'/1,
         'id-transform-expr-034'/1,
         'id-transform-expr-035'/1,
         'id-transform-expr-036'/1,
         'id-transform-expr-037'/1,
         'id-transform-expr-038'/1,
         'id-transform-expr-039'/1,
         'id-transform-expr-040'/1,
         'id-transform-expr-041'/1,
         'id-transform-expr-042'/1,
         'id-transform-expr-043'/1,
         'id-transform-expr-044'/1,
         'id-transform-expr-045'/1,
         'id-transform-expr-046'/1,
         'id-transform-expr-047'/1,
         'id-transform-expr-048'/1,
         'id-transform-expr-049'/1,
         'id-transform-expr-050'/1,
         'id-transform-expr-051'/1,
         'id-transform-expr-052'/1,
         'id-transform-expr-053'/1,
         'id-transform-expr-054'/1,
         'id-transform-expr-055'/1,
         'id-transform-expr-056'/1,
         'id-transform-expr-057'/1,
         'id-transform-expr-058'/1,
         'compatibility-001'/1,
         'compatibility-002'/1,
         'compatibility-003'/1,
         'compatibility-004'/1,
         'compatibility-005'/1,
         'compatibility-006'/1,
         'compatibility-007'/1,
         'compatibility-008'/1,
         'compatibility-009'/1,
         'compatibility-010'/1,
         'compatibility-011'/1,
         'compatibility-012'/1,
         'compatibility-013'/1,
         'compatibility-014'/1,
         'compatibility-015'/1,
         'compatibility-016'/1,
         'compatibility-017'/1,
         'compatibility-018'/1,
         'compatibility-019'/1,
         'compatibility-020'/1,
         'compatibility-021'/1,
         'compatibility-022'/1,
         'compatibility-023'/1,
         'compatibility-024'/1,
         'compatibility-025'/1,
         'compatibility-026'/1,
         'compatibility-027'/1,
         'compatibility-028'/1,
         'compatibility-029'/1,
         'compatibility-030'/1,
         'id-flwor-expr-01'/1,
         'id-flwor-expr-02'/1,
         'id-flwor-expr-03'/1,
         'id-flwor-expr-04'/1,
         'id-flwor-expr-05'/1,
         'id-flwor-expr-06'/1,
         'id-flwor-expr-07'/1,
         'id-flwor-expr-08'/1,
         'id-flwor-expr-09'/1,
         'id-flwor-expr-010'/1,
         'id-flwor-expr-011'/1,
         'id-flwor-expr-012'/1,
         'id-flwor-expr-013'/1,
         'id-flwor-expr-014'/1,
         'id-flwor-expr-015'/1,
         'id-flwor-expr-016'/1,
         'id-flwor-expr-017'/1,
         'id-flwor-expr-018'/1,
         'id-flwor-expr-019'/1,
         'id-flwor-expr-020'/1,
         'id-flwor-expr-021'/1,
         'id-flwor-expr-022'/1,
         'id-flwor-expr-023'/1,
         'id-flwor-expr-024'/1,
         'id-flwor-expr-025'/1,
         'id-typeswitch-expr-01'/1,
         'id-typeswitch-expr-02'/1,
         'id-typeswitch-expr-03'/1,
         'id-typeswitch-expr-04'/1,
         'id-typeswitch-expr-05'/1,
         'id-typeswitch-expr-06'/1,
         'id-typeswitch-expr-07'/1,
         'id-typeswitch-expr-08'/1,
         'id-typeswitch-expr-09'/1,
         'id-typeswitch-expr-010'/1,
         'id-typeswitch-expr-011'/1,
         'id-typeswitch-expr-012'/1,
         'id-typeswitch-expr-013'/1,
         'id-typeswitch-expr-014'/1,
         'id-typeswitch-expr-015'/1,
         'id-typeswitch-expr-016'/1,
         'id-typeswitch-expr-017'/1,
         'id-typeswitch-expr-018'/1,
         'id-typeswitch-expr-019'/1,
         'id-typeswitch-expr-020'/1,
         'id-typeswitch-expr-021'/1,
         'id-typeswitch-expr-022'/1,
         'id-typeswitch-expr-023'/1,
         'id-typeswitch-expr-024'/1,
         'id-typeswitch-expr-025'/1,
         'id-typeswitch-expr-026'/1,
         'id-typeswitch-expr-027'/1,
         'id-typeswitch-expr-028'/1,
         'id-typeswitch-expr-029'/1,
         'id-typeswitch-expr-030'/1,
         'id-typeswitch-expr-031'/1,
         'id-typeswitch-expr-032'/1,
         'id-typeswitch-expr-033'/1,
         'id-typeswitch-expr-034'/1,
         'id-typeswitch-expr-035'/1,
         'id-typeswitch-expr-036'/1,
         'id-typeswitch-expr-037'/1,
         'id-typeswitch-expr-038'/1,
         'id-conditional-expr-01'/1,
         'id-conditional-expr-02'/1,
         'id-conditional-expr-03'/1,
         'id-conditional-expr-04'/1,
         'id-conditional-expr-05'/1,
         'id-conditional-expr-06'/1,
         'id-conditional-expr-07'/1,
         'id-conditional-expr-08'/1,
         'id-conditional-expr-09'/1,
         'id-conditional-expr-010'/1,
         'id-conditional-expr-011'/1,
         'id-conditional-expr-012'/1,
         'id-conditional-expr-013'/1,
         'id-conditional-expr-014'/1,
         'id-conditional-expr-015'/1,
         'id-conditional-expr-016'/1,
         'id-conditional-expr-017'/1,
         'id-conditional-expr-018'/1,
         'id-conditional-expr-019'/1,
         'id-conditional-expr-020'/1,
         'id-conditional-expr-021'/1,
         'id-conditional-expr-022'/1,
         'id-conditional-expr-023'/1,
         'id-conditional-expr-024'/1,
         'id-conditional-expr-025'/1,
         'id-conditional-expr-026'/1,
         'id-conditional-expr-027'/1,
         'id-conditional-expr-028'/1,
         'id-conditional-expr-029'/1,
         'id-conditional-expr-030'/1,
         'id-conditional-expr-031'/1,
         'id-conditional-expr-032'/1,
         'id-conditional-expr-033'/1,
         'id-conditional-expr-034'/1,
         'id-conditional-expr-035'/1,
         'id-conditional-expr-036'/1,
         'id-conditional-expr-037'/1,
         'id-conditional-expr-038'/1,
         'id-comma-expr-01'/1,
         'id-comma-expr-02'/1,
         'id-comma-expr-03'/1,
         'id-comma-expr-04'/1,
         'id-comma-expr-05'/1,
         'id-comma-expr-06'/1,
         'id-comma-expr-07'/1,
         'id-comma-expr-08'/1,
         'id-comma-expr-09'/1,
         'id-comma-expr-010'/1,
         'id-comma-expr-011'/1,
         'id-comma-expr-012'/1,
         'id-comma-expr-013'/1,
         'id-comma-expr-014'/1,
         'id-comma-expr-015'/1,
         'id-comma-expr-016'/1,
         'id-comma-expr-017'/1,
         'id-comma-expr-018'/1,
         'id-comma-expr-019'/1,
         'id-comma-expr-020'/1,
         'id-comma-expr-021'/1,
         'id-comma-expr-022'/1,
         'id-comma-expr-023'/1,
         'id-comma-expr-024'/1,
         'id-comma-expr-025'/1,
         'id-comma-expr-026'/1,
         'id-comma-expr-027'/1,
         'id-comma-expr-028'/1,
         'id-comma-expr-029'/1,
         'id-comma-expr-030'/1,
         'id-comma-expr-031'/1,
         'id-comma-expr-032'/1,
         'id-comma-expr-033'/1,
         'id-comma-expr-034'/1,
         'id-comma-expr-035'/1,
         'id-comma-expr-036'/1,
         'id-comma-expr-037'/1,
         'id-comma-expr-038'/1,
         'parenthesized-expr-01'/1,
         'parenthesized-expr-02'/1,
         'parenthesized-expr-03'/1,
         'id-function-call-01'/1,
         'id-function-call-02'/1,
         'id-function-call-03'/1,
         'id-function-call-04'/1,
         'id-function-call-05'/1,
         'id-function-call-06'/1,
         'id-other-expr-01'/1,
         'id-other-expr-02'/1,
         'id-other-expr-03'/1,
         'id-other-expr-04'/1,
         'id-other-expr-05'/1,
         'id-other-expr-06'/1,
         'id-other-expr-07'/1,
         'id-other-expr-08'/1,
         'id-other-expr-09'/1,
         'id-other-expr-010'/1,
         'id-other-expr-011'/1,
         'id-other-expr-012'/1,
         'id-other-expr-013'/1,
         'id-other-expr-014'/1,
         'id-other-expr-015'/1,
         'id-other-expr-016'/1,
         'id-other-expr-017'/1,
         'id-other-expr-018'/1,
         'id-other-expr-019'/1,
         'id-other-expr-020'/1,
         'id-other-expr-021'/1,
         'id-other-expr-022'/1,
         'id-other-expr-023'/1,
         'id-other-expr-024'/1,
         'id-other-expr-025'/1,
         'id-other-expr-26'/1,
         'id-other-expr-027'/1,
         'id-other-expr-028'/1,
         'id-other-expr-029'/1,
         'id-other-expr-030'/1,
         'id-other-expr-031'/1,
         'id-other-expr-032'/1,
         'fn-put-001'/1,
         'fn-put-007'/1,
         'fn-put-008'/1,
         'fn-put-009'/1,
         'fn-put-011'/1,
         'fn-put-012'/1,
         'fn-put-013'/1,
         'fn-put-014'/1,
         'put-001'/1,
         'fn-put-002'/1,
         'fn-put-010'/1,
         'attribute-errors-q1'/1,
         'attribute-errors-q2'/1,
         'attribute-errors-q3'/1,
         'attribute-errors-q4'/1,
         'attribute-errors-q5'/1,
         'attribute-errors-q6'/1,
         'attribute-errors-q7'/1,
         'attribute-errors-q8'/1,
         'attribute-errors-q9'/1,
         'attribute-errors-q10'/1,
         'attribute-errors-q11'/1,
         'attribute-errors-q12'/1,
         'attribute-errors-q13'/1,
         'attribute-errors-q14'/1,
         'attribute-errors-q15'/1,
         'attribute-errors-q16'/1,
         'attribute-errors-q17'/1,
         'namespace-errors-q1'/1,
         'namespace-errors-q2'/1,
         'namespace-errors-q3'/1,
         'namespace-errors-q4'/1,
         'namespace-errors-q5'/1,
         'namespace-errors-q6'/1,
         'namespace-errors-q7'/1,
         'namespace-errors-q8'/1,
         'namespace-errors-q9'/1,
         'namespace-errors-q10'/1,
         'namespace-errors-q11'/1,
         'namespace-errors-q12'/1,
         'namespace-errors-q13'/1,
         'namespace-errors-q14'/1,
         'namespace-errors-q15'/1,
         'namespace-errors-q16'/1,
         'namespace-errors-q17'/1,
         'namespace-errors-q18'/1,
         'namespace-errors-q19'/1,
         'mergeUpdates-001'/1,
         'mergeUpdates-002'/1,
         'applyUpdates-001'/1,
         'applyUpdates-002'/1,
         'applyUpdates-003'/1,
         'applyUpdates-004'/1,
         'applyUpdates-005'/1,
         'applyUpdates-006'/1,
         'applyUpdates-007'/1,
         'applyUpdates-008'/1,
         'applyUpdates-009'/1,
         'applyUpdates-010'/1,
         'applyUpdates-011'/1,
         'applyUpdates-012'/1,
         'applyUpdates-013'/1,
         'applyUpdates-014'/1,
         'applyUpdates-016'/1,
         'applyUpdates-021'/1,
         'applyUpdates-022'/1,
         'applyUpdates-023'/1,
         'applyUpdates-024'/1,
         'applyUpdates-025'/1,
         'applyUpdates-026'/1,
         'setToUntyped-001'/1,
         'setToUntyped-002'/1,
         'setToUntyped-003'/1,
         'setToUntyped-004'/1,
         'setToUntyped-005'/1,
         'setToUntyped-006'/1,
         'setToUntyped-007'/1,
         'setToUntyped-008'/1,
         'setToUntyped-009'/1,
         'setToUntyped-010'/1,
         'propagateNamespaces01'/1,
         'propagateNamespaces02'/1,
         'propagateNamespaces03'/1,
         'propagateNamespaces04'/1,
         'propagateNamespaces05'/1,
         'propagateNamespaces06'/1,
         'statictyp-xqupd-01'/1,
         'statictyp-xqupd-02'/1,
         'statictyp-xqupd-03'/1,
         'statictyp-xqupd-04'/1,
         'statictyp-xqupd-05'/1,
         'statictyp-xqupd-06'/1,
         'statictyp-xqupd-07'/1,
         'statictyp-xqupd-08'/1,
         'statictyp-xqupd-09'/1,
         'statictyp-xqupd-10'/1,
         'statictyp-xqupd-11'/1,
         'statictyp-xqupd-12'/1,
         'statictyp-xqupd-13'/1,
         'statictyp-xqupd-14'/1,
         'statictyp-xqupd-15'/1,
         'statictyp-xqupd-16'/1,
         'statictyp-xqupd-17'/1,
         'statictyp-xqupd-18'/1,
         'statictyp-xqupd-19'/1,
         'statictyp-xqupd-20'/1,
         'statictyp-xqupd-21'/1,
         'statictyp-xqupd-22'/1,
         'statictyp-xqupd-23'/1,
         'statictyp-xqupd-24'/1,
         'statictyp-xqupd-25'/1,
         'statictyp-xqupd-26'/1,
         'statictyp-xqupd-27'/1,
         'statictyp-xqupd-28'/1,
         'statictyp-xqupd-29'/1,
         'statictyp-xqupd-30'/1,
         'statictyp-xqupd-31'/1,
         'statictyp-xqupd-32'/1,
         'statictyp-xqupd-33'/1,
         'statictyp-xqupd-34'/1,
         'statictyp-xqupd-35'/1,
         'statictyp-xqupd-36'/1,
         'statictyp-xqupd-37'/1,
         'statictyp-xqupd-38'/1,
         'statictyp-xqupd-39'/1,
         'statictyp-xqupd-40'/1,
         'statictyp-xqupd-41'/1,
         'statictyp-xqupd-42'/1,
         'statictyp-xqupd-43'/1,
         'statictyp-xqupd-44'/1,
         'statictyp-xqupd-45'/1,
         'statictyp-xqupd-46'/1,
         'statictyp-xqupd-47'/1,
         'statictyp-xqupd-48'/1,
         'statictyp-xqupd-49'/1,
         'statictyp-xqupd-50'/1,
         'statictyp-xqupd-51'/1,
         'statictyp-xqupd-52'/1,
         'statictyp-xqupd-53'/1,
         'statictyp-xqupd-54'/1,
         'statictyp-xqupd-55'/1,
         'statictyp-xqupd-56'/1,
         'statictyp-xqupd-57'/1,
         'statictyp-xqupd-58'/1,
         'statictyp-xqupd-59'/1,
         'statictyp-xqupd-60'/1,
         'update10keywords'/1,
         'revalidation-declaration-01-fail'/1,
         'revalidation-declaration-03-fail'/1,
         'revalidation-declaration-05'/1,
         'revalidation-declaration-06'/1,
         'complex-deletes-q1'/1,
         'complex-deletes-q2'/1,
         'complex-deletes-q6'/1,
         'complex-deletes-q7'/1,
         'complex-deletes-q8'/1,
         'complex-deletes-q9'/1,
         'complex-replacevalues-q1'/1,
         'complex-replacevalues-q2'/1,
         'complex-replacevalues-q6'/1,
         'complex-replacevalues-q7'/1,
         'complex-replacevalues-q8'/1,
         'complex-renames-q2'/1,
         'complex-renames-q3'/1,
         'complex-renames-q4'/1,
         'fn-put-003-fail'/1,
         'fn-put-004-fail'/1,
         'fn-put-005-fail'/1,
         'fn-put-006-fail'/1,
         'relational-data-q1'/1,
         'relational-data-q2'/1,
         'relational-data-q3'/1,
         'relational-data-q4'/1,
         'relational-data-q5-1'/1,
         'relational-data-q5-2'/1,
         'relational-data-q6-1'/1,
         'relational-data-q6-2'/1,
         'relational-data-q7'/1,
         'relational-data-q8'/1,
         'relational-data-q9'/1,
         'address-book-q1'/1,
         'soap-q1'/1,
         'namespaces-q1'/1,
         'parts-q1'/1,
         'parts-q2'/1,
         'parts-q3-1'/1,
         'parts-q3-2'/1,
         'parts-q4-1'/1,
         'parts-q4-2'/1,
         'parts-q6'/1,
         'nil-q1'/1]).

suite() -> [{timetrap,{seconds, 60}}].
end_per_suite(_Config) -> 
   ct:timetrap({seconds,60}), 
   xqerl_code_server:unload(all).
init_per_suite(Config) -> 
   {ok,_} = application:ensure_all_started(xqerl),
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   __BaseDir = filename:join(DD, "xquery-update-10-test-suite"),
   [{base_dir, __BaseDir}|Config].
all() -> [
   'variable-declaration-01',
   'variable-declaration-02',
   'id-function-declaration-01',
   'id-function-declaration-02',
   'id-function-declaration-03',
   'id-function-declaration-04',
   'id-function-declaration-05',
   'id-function-declaration-06',
   'id-function-declaration-07',
   'id-function-declaration-08',
   'id-function-declaration-09',
   'id-function-declaration-010',
   'id-function-declaration-011',
   'id-function-declaration-012',
   'id-function-declaration-013',
   'id-function-declaration-014',
   'id-function-declaration-015',
   'id-function-declaration-016',
   'id-function-declaration-017',
   'function-declaration-01',
   'function-declaration-02',
   'function-declaration-03',
   'function-declaration-04',
   'id-insert-expr-01',
   'id-insert-expr-02',
   'id-insert-expr-03',
   'id-insert-expr-04',
   'id-insert-expr-05',
   'id-insert-expr-06',
   'id-insert-expr-07',
   'id-insert-expr-08',
   'id-insert-expr-09',
   'id-insert-expr-010',
   'id-insert-expr-011',
   'id-insert-expr-012',
   'id-insert-expr-013',
   'id-insert-expr-014',
   'id-insert-expr-015',
   'id-insert-expr-016',
   'id-insert-expr-017',
   'id-insert-expr-018',
   'id-insert-expr-019',
   'id-insert-expr-020',
   'id-insert-expr-021',
   'id-insert-expr-022',
   'id-insert-expr-023',
   'id-insert-expr-024',
   'id-insert-expr-025',
   'id-insert-expr-026',
   'id-insert-expr-027',
   'id-insert-expr-028',
   'id-insert-expr-029',
   'id-insert-expr-030',
   'id-insert-expr-031',
   'id-insert-expr-032',
   'id-insert-expr-033',
   'id-insert-expr-034',
   'id-insert-expr-035',
   'id-insert-expr-036',
   'id-insert-expr-037',
   'id-insert-expr-038',
   'id-insert-expr-039',
   'id-insert-expr-040',
   'id-insert-expr-041',
   'id-insert-expr-042',
   'id-insert-expr-043',
   'id-insert-expr-044',
   'id-insert-expr-045',
   'id-insert-expr-046',
   'id-insert-expr-047',
   'id-insert-expr-048',
   'id-insert-expr-049',
   'id-insert-expr-050',
   'id-insert-expr-051',
   'id-insert-expr-052',
   'id-insert-expr-053',
   'id-insert-expr-054',
   'id-insert-expr-055',
   'id-insert-expr-056',
   'id-insert-expr-057',
   'id-insert-expr-058',
   'id-insert-expr-059',
   'id-insert-expr-060',
   'id-insert-expr-061',
   'id-insert-expr-062',
   'id-insert-expr-063',
   'id-insert-expr-064',
   'id-insert-expr-065',
   'id-insert-expr-066',
   'id-insert-expr-067',
   'id-insert-expr-068',
   'id-insert-expr-069',
   'id-insert-expr-070',
   'id-insert-expr-071',
   'id-insert-expr-072',
   'id-insert-expr-073',
   'id-insert-expr-074',
   'id-insert-expr-075',
   'id-insert-expr-076',
   'id-insert-expr-077',
   'id-insert-expr-078',
   'id-insert-expr-079',
   'id-insert-expr-080',
   'id-insert-expr-081',
   'id-insert-expr-082',
   'id-insert-expr-083',
   'id-insert-expr-084',
   'id-insert-expr-085',
   'id-insert-expr-086',
   'id-insert-expr-081-no-inherit',
   'id-insert-expr-082-no-inherit',
   'id-insert-expr-083-no-inherit',
   'id-insert-expr-084-no-inherit',
   'id-insert-expr-085-no-inherit',
   'id-insert-expr-086-no-inherit',
   'id-insert-expr-087',
   'id-insert-expr-088',
   'id-insert-expr-089',
   'id-insert-expr-090',
   'id-insert-expr-091',
   'id-insert-expr-092',
   'id-insert-expr-093',
   'id-insert-expr-094',
   'id-delete-expr-01',
   'id-delete-expr-02',
   'id-delete-expr-03',
   'id-delete-expr-04',
   'id-delete-expr-05',
   'id-delete-expr-06',
   'id-delete-expr-07',
   'id-delete-expr-08',
   'id-delete-expr-09',
   'id-delete-expr-010',
   'id-delete-expr-011',
   'id-delete-expr-012',
   'id-delete-expr-013',
   'id-delete-expr-014',
   'id-delete-expr-015',
   'id-delete-expr-016',
   'id-delete-expr-017',
   'id-delete-expr-018',
   'id-delete-expr-019',
   'id-delete-expr-020',
   'id-delete-expr-021',
   'id-delete-expr-022',
   'complex-deletes-q3',
   'complex-deletes-q4',
   'complex-deletes-q5',
   'complex-deletes-q10',
   'complex-deletes-q11',
   'complex-deletes-q12',
   'complex-deletes-q13',
   'complex-deletes-q14',
   'id-replace-expr-01',
   'id-replace-expr-02',
   'id-replace-expr-03',
   'id-replace-expr-04',
   'id-replace-expr-010',
   'id-replace-expr-011',
   'id-replace-expr-012',
   'id-replace-expr-013',
   'id-replace-expr-014',
   'id-replace-expr-015',
   'id-replace-expr-016',
   'id-replace-expr-022',
   'id-replace-expr-023',
   'id-replace-expr-028',
   'id-replace-expr-029',
   'id-replace-expr-030',
   'id-replace-expr-031',
   'id-replace-expr-032',
   'id-replace-expr-033',
   'id-replace-expr-034',
   'id-replace-expr-045',
   'id-replace-expr-045-no-inherit',
   'id-replace-expr-05',
   'id-replace-expr-06',
   'id-replace-expr-07',
   'id-replace-expr-08',
   'id-replace-expr-09',
   'id-replace-expr-017',
   'id-replace-expr-018',
   'id-replace-expr-019',
   'id-replace-expr-020',
   'id-replace-expr-021',
   'id-replace-expr-024',
   'id-replace-expr-025',
   'id-replace-expr-026',
   'id-replace-expr-027',
   'id-replace-expr-035',
   'id-replace-expr-036',
   'id-replace-expr-037',
   'id-replace-expr-038',
   'id-replace-expr-039',
   'id-replace-expr-040',
   'id-replace-expr-041',
   'id-replace-expr-042',
   'id-replace-expr-043',
   'id-replace-expr-044',
   'complex-replacevalues-q3',
   'complex-replacevalues-q4',
   'complex-replacevalues-q5',
   'complex-replacevalues-q9',
   'complex-replacevalues-q10',
   'complex-replacevalues-q11',
   'complex-replacevalues-q12',
   'complex-replacevalues-q13',
   'complex-replacevalues-q14',
   'id-rename-expr-01',
   'id-rename-expr-02',
   'id-rename-expr-03',
   'id-rename-expr-04',
   'id-rename-expr-05',
   'id-rename-expr-06',
   'id-rename-expr-07',
   'id-rename-expr-08',
   'id-rename-expr-09',
   'id-rename-expr-010',
   'id-rename-expr-011',
   'id-rename-expr-012',
   'id-rename-expr-013',
   'id-rename-expr-014',
   'id-rename-expr-015',
   'id-rename-expr-016',
   'id-rename-expr-017',
   'id-rename-expr-018',
   'id-rename-expr-019',
   'id-rename-expr-020',
   'id-rename-expr-021',
   'id-rename-expr-022',
   'id-rename-expr-023',
   'id-rename-expr-024',
   'id-rename-expr-025',
   'id-rename-expr-026',
   'id-rename-expr-027',
   'id-rename-expr-028',
   'id-rename-expr-029',
   'id-rename-expr-030',
   'id-rename-expr-031',
   'id-rename-expr-032',
   'id-rename-expr-033',
   'id-rename-expr-034',
   'id-rename-expr-033-no-inherit',
   'id-rename-expr-034-no-inherit',
   'id-rename-expr-035',
   'id-rename-expr-036',
   'id-rename-expr-037',
   'complex-renames-q1',
   'complex-renames-q5',
   'complex-renames-q6',
   'complex-renames-q7',
   'complex-renames-q8',
   'id-transform-expr-01',
   'id-transform-expr-02',
   'id-transform-expr-03',
   'id-transform-expr-04',
   'id-transform-expr-05',
   'id-transform-expr-06',
   'id-transform-expr-07',
   'id-transform-expr-08',
   'id-transform-expr-09',
   'id-transform-expr-010',
   'id-transform-expr-011',
   'id-transform-expr-012',
   'id-transform-expr-013',
   'id-transform-expr-014',
   'id-transform-expr-015',
   'id-transform-expr-016',
   'id-transform-expr-017',
   'id-transform-expr-018',
   'id-transform-expr-019',
   'id-transform-expr-020',
   'id-transform-expr-021',
   'id-transform-expr-022',
   'id-transform-expr-023',
   'id-transform-expr-024',
   'id-transform-expr-025',
   'id-transform-expr-026',
   'id-transform-expr-027',
   'id-transform-expr-028',
   'id-transform-expr-029',
   'id-transform-expr-030',
   'id-transform-expr-031',
   'id-transform-expr-032',
   'id-transform-expr-033',
   'id-transform-expr-034',
   'id-transform-expr-035',
   'id-transform-expr-036',
   'id-transform-expr-037',
   'id-transform-expr-038',
   'id-transform-expr-039',
   'id-transform-expr-040',
   'id-transform-expr-041',
   'id-transform-expr-042',
   'id-transform-expr-043',
   'id-transform-expr-044',
   'id-transform-expr-045',
   'id-transform-expr-046',
   'id-transform-expr-047',
   'id-transform-expr-048',
   'id-transform-expr-049',
   'id-transform-expr-050',
   'id-transform-expr-051',
   'id-transform-expr-052',
   'id-transform-expr-053',
   'id-transform-expr-054',
   'id-transform-expr-055',
   'id-transform-expr-056',
   'id-transform-expr-057',
   'id-transform-expr-058',
   'compatibility-001',
   'compatibility-002',
   'compatibility-003',
   'compatibility-004',
   'compatibility-005',
   'compatibility-006',
   'compatibility-007',
   'compatibility-008',
   'compatibility-009',
   'compatibility-010',
   'compatibility-011',
   'compatibility-012',
   'compatibility-013',
   'compatibility-014',
   'compatibility-015',
   'compatibility-016',
   'compatibility-017',
   'compatibility-018',
   'compatibility-019',
   'compatibility-020',
   'compatibility-021',
   'compatibility-022',
   'compatibility-023',
   'compatibility-024',
   'compatibility-025',
   'compatibility-026',
   'compatibility-027',
   'compatibility-028',
   'compatibility-029',
   'compatibility-030',
   'id-flwor-expr-01',
   'id-flwor-expr-02',
   'id-flwor-expr-03',
   'id-flwor-expr-04',
   'id-flwor-expr-05',
   'id-flwor-expr-06',
   'id-flwor-expr-07',
   'id-flwor-expr-08',
   'id-flwor-expr-09',
   'id-flwor-expr-010',
   'id-flwor-expr-011',
   'id-flwor-expr-012',
   'id-flwor-expr-013',
   'id-flwor-expr-014',
   'id-flwor-expr-015',
   'id-flwor-expr-016',
   'id-flwor-expr-017',
   'id-flwor-expr-018',
   'id-flwor-expr-019',
   'id-flwor-expr-020',
   'id-flwor-expr-021',
   'id-flwor-expr-022',
   'id-flwor-expr-023',
   'id-flwor-expr-024',
   'id-flwor-expr-025',
   'id-typeswitch-expr-01',
   'id-typeswitch-expr-02',
   'id-typeswitch-expr-03',
   'id-typeswitch-expr-04',
   'id-typeswitch-expr-05',
   'id-typeswitch-expr-06',
   'id-typeswitch-expr-07',
   'id-typeswitch-expr-08',
   'id-typeswitch-expr-09',
   'id-typeswitch-expr-010',
   'id-typeswitch-expr-011',
   'id-typeswitch-expr-012',
   'id-typeswitch-expr-013',
   'id-typeswitch-expr-014',
   'id-typeswitch-expr-015',
   'id-typeswitch-expr-016',
   'id-typeswitch-expr-017',
   'id-typeswitch-expr-018',
   'id-typeswitch-expr-019',
   'id-typeswitch-expr-020',
   'id-typeswitch-expr-021',
   'id-typeswitch-expr-022',
   'id-typeswitch-expr-023',
   'id-typeswitch-expr-024',
   'id-typeswitch-expr-025',
   'id-typeswitch-expr-026',
   'id-typeswitch-expr-027',
   'id-typeswitch-expr-028',
   'id-typeswitch-expr-029',
   'id-typeswitch-expr-030',
   'id-typeswitch-expr-031',
   'id-typeswitch-expr-032',
   'id-typeswitch-expr-033',
   'id-typeswitch-expr-034',
   'id-typeswitch-expr-035',
   'id-typeswitch-expr-036',
   'id-typeswitch-expr-037',
   'id-typeswitch-expr-038',
   'id-conditional-expr-01',
   'id-conditional-expr-02',
   'id-conditional-expr-03',
   'id-conditional-expr-04',
   'id-conditional-expr-05',
   'id-conditional-expr-06',
   'id-conditional-expr-07',
   'id-conditional-expr-08',
   'id-conditional-expr-09',
   'id-conditional-expr-010',
   'id-conditional-expr-011',
   'id-conditional-expr-012',
   'id-conditional-expr-013',
   'id-conditional-expr-014',
   'id-conditional-expr-015',
   'id-conditional-expr-016',
   'id-conditional-expr-017',
   'id-conditional-expr-018',
   'id-conditional-expr-019',
   'id-conditional-expr-020',
   'id-conditional-expr-021',
   'id-conditional-expr-022',
   'id-conditional-expr-023',
   'id-conditional-expr-024',
   'id-conditional-expr-025',
   'id-conditional-expr-026',
   'id-conditional-expr-027',
   'id-conditional-expr-028',
   'id-conditional-expr-029',
   'id-conditional-expr-030',
   'id-conditional-expr-031',
   'id-conditional-expr-032',
   'id-conditional-expr-033',
   'id-conditional-expr-034',
   'id-conditional-expr-035',
   'id-conditional-expr-036',
   'id-conditional-expr-037',
   'id-conditional-expr-038',
   'id-comma-expr-01',
   'id-comma-expr-02',
   'id-comma-expr-03',
   'id-comma-expr-04',
   'id-comma-expr-05',
   'id-comma-expr-06',
   'id-comma-expr-07',
   'id-comma-expr-08',
   'id-comma-expr-09',
   'id-comma-expr-010',
   'id-comma-expr-011',
   'id-comma-expr-012',
   'id-comma-expr-013',
   'id-comma-expr-014',
   'id-comma-expr-015',
   'id-comma-expr-016',
   'id-comma-expr-017',
   'id-comma-expr-018',
   'id-comma-expr-019',
   'id-comma-expr-020',
   'id-comma-expr-021',
   'id-comma-expr-022',
   'id-comma-expr-023',
   'id-comma-expr-024',
   'id-comma-expr-025',
   'id-comma-expr-026',
   'id-comma-expr-027',
   'id-comma-expr-028',
   'id-comma-expr-029',
   'id-comma-expr-030',
   'id-comma-expr-031',
   'id-comma-expr-032',
   'id-comma-expr-033',
   'id-comma-expr-034',
   'id-comma-expr-035',
   'id-comma-expr-036',
   'id-comma-expr-037',
   'id-comma-expr-038',
   'parenthesized-expr-01',
   'parenthesized-expr-02',
   'parenthesized-expr-03',
   'id-function-call-01',
   'id-function-call-02',
   'id-function-call-03',
   'id-function-call-04',
   'id-function-call-05',
   'id-function-call-06',
   'id-other-expr-01',
   'id-other-expr-02',
   'id-other-expr-03',
   'id-other-expr-04',
   'id-other-expr-05',
   'id-other-expr-06',
   'id-other-expr-07',
   'id-other-expr-08',
   'id-other-expr-09',
   'id-other-expr-010',
   'id-other-expr-011',
   'id-other-expr-012',
   'id-other-expr-013',
   'id-other-expr-014',
   'id-other-expr-015',
   'id-other-expr-016',
   'id-other-expr-017',
   'id-other-expr-018',
   'id-other-expr-019',
   'id-other-expr-020',
   'id-other-expr-021',
   'id-other-expr-022',
   'id-other-expr-023',
   'id-other-expr-024',
   'id-other-expr-025',
   'id-other-expr-26',
   'id-other-expr-027',
   'id-other-expr-028',
   'id-other-expr-029',
   'id-other-expr-030',
   'id-other-expr-031',
   'id-other-expr-032',
   'fn-put-001',
   'fn-put-007',
   'fn-put-008',
   'fn-put-009',
   'fn-put-011',
   'fn-put-012',
   'fn-put-013',
   'fn-put-014',
   'put-001',
   'fn-put-002',
   'fn-put-010',
   'attribute-errors-q1',
   'attribute-errors-q2',
   'attribute-errors-q3',
   'attribute-errors-q4',
   'attribute-errors-q5',
   'attribute-errors-q6',
   'attribute-errors-q7',
   'attribute-errors-q8',
   'attribute-errors-q9',
   'attribute-errors-q10',
   'attribute-errors-q11',
   'attribute-errors-q12',
   'attribute-errors-q13',
   'attribute-errors-q14',
   'attribute-errors-q15',
   'attribute-errors-q16',
   'attribute-errors-q17',
   'namespace-errors-q1',
   'namespace-errors-q2',
   'namespace-errors-q3',
   'namespace-errors-q4',
   'namespace-errors-q5',
   'namespace-errors-q6',
   'namespace-errors-q7',
   'namespace-errors-q8',
   'namespace-errors-q9',
   'namespace-errors-q10',
   'namespace-errors-q11',
   'namespace-errors-q12',
   'namespace-errors-q13',
   'namespace-errors-q14',
   'namespace-errors-q15',
   'namespace-errors-q16',
   'namespace-errors-q17',
   'namespace-errors-q18',
   'namespace-errors-q19',
   'mergeUpdates-001',
   'mergeUpdates-002',
   'applyUpdates-001',
   'applyUpdates-002',
   'applyUpdates-003',
   'applyUpdates-004',
   'applyUpdates-005',
   'applyUpdates-006',
   'applyUpdates-007',
   'applyUpdates-008',
   'applyUpdates-009',
   'applyUpdates-010',
   'applyUpdates-011',
   'applyUpdates-012',
   'applyUpdates-013',
   'applyUpdates-014',
   'applyUpdates-016',
   'applyUpdates-021',
   'applyUpdates-022',
   'applyUpdates-023',
   'applyUpdates-024',
   'applyUpdates-025',
   'applyUpdates-026',
   'setToUntyped-001',
   'setToUntyped-002',
   'setToUntyped-003',
   'setToUntyped-004',
   'setToUntyped-005',
   'setToUntyped-006',
   'setToUntyped-007',
   'setToUntyped-008',
   'setToUntyped-009',
   'setToUntyped-010',
   'propagateNamespaces01',
   'propagateNamespaces02',
   'propagateNamespaces03',
   'propagateNamespaces04',
   'propagateNamespaces05',
   'propagateNamespaces06',
   'statictyp-xqupd-01',
   'statictyp-xqupd-02',
   'statictyp-xqupd-03',
   'statictyp-xqupd-04',
   'statictyp-xqupd-05',
   'statictyp-xqupd-06',
   'statictyp-xqupd-07',
   'statictyp-xqupd-08',
   'statictyp-xqupd-09',
   'statictyp-xqupd-10',
   'statictyp-xqupd-11',
   'statictyp-xqupd-12',
   'statictyp-xqupd-13',
   'statictyp-xqupd-14',
   'statictyp-xqupd-15',
   'statictyp-xqupd-16',
   'statictyp-xqupd-17',
   'statictyp-xqupd-18',
   'statictyp-xqupd-19',
   'statictyp-xqupd-20',
   'statictyp-xqupd-21',
   'statictyp-xqupd-22',
   'statictyp-xqupd-23',
   'statictyp-xqupd-24',
   'statictyp-xqupd-25',
   'statictyp-xqupd-26',
   'statictyp-xqupd-27',
   'statictyp-xqupd-28',
   'statictyp-xqupd-29',
   'statictyp-xqupd-30',
   'statictyp-xqupd-31',
   'statictyp-xqupd-32',
   'statictyp-xqupd-33',
   'statictyp-xqupd-34',
   'statictyp-xqupd-35',
   'statictyp-xqupd-36',
   'statictyp-xqupd-37',
   'statictyp-xqupd-38',
   'statictyp-xqupd-39',
   'statictyp-xqupd-40',
   'statictyp-xqupd-41',
   'statictyp-xqupd-42',
   'statictyp-xqupd-43',
   'statictyp-xqupd-44',
   'statictyp-xqupd-45',
   'statictyp-xqupd-46',
   'statictyp-xqupd-47',
   'statictyp-xqupd-48',
   'statictyp-xqupd-49',
   'statictyp-xqupd-50',
   'statictyp-xqupd-51',
   'statictyp-xqupd-52',
   'statictyp-xqupd-53',
   'statictyp-xqupd-54',
   'statictyp-xqupd-55',
   'statictyp-xqupd-56',
   'statictyp-xqupd-57',
   'statictyp-xqupd-58',
   'statictyp-xqupd-59',
   'statictyp-xqupd-60',
   'update10keywords',
   'revalidation-declaration-01-fail',
   'revalidation-declaration-03-fail',
   'revalidation-declaration-05',
   'revalidation-declaration-06',
   'complex-deletes-q1',
   'complex-deletes-q2',
   'complex-deletes-q6',
   'complex-deletes-q7',
   'complex-deletes-q8',
   'complex-deletes-q9',
   'complex-replacevalues-q1',
   'complex-replacevalues-q2',
   'complex-replacevalues-q6',
   'complex-replacevalues-q7',
   'complex-replacevalues-q8',
   'complex-renames-q2',
   'complex-renames-q3',
   'complex-renames-q4',
   'fn-put-003-fail',
   'fn-put-004-fail',
   'fn-put-005-fail',
   'fn-put-006-fail',
   'relational-data-q1',
   'relational-data-q2',
   'relational-data-q3',
   'relational-data-q4',
   'relational-data-q5-1',
   'relational-data-q5-2',
   'relational-data-q6-1',
   'relational-data-q6-2',
   'relational-data-q7',
   'relational-data-q8',
   'relational-data-q9',
   'address-book-q1',
   'soap-q1',
   'namespaces-q1',
   'parts-q1',
   'parts-q2',
   'parts-q3-1',
   'parts-q3-2',
   'parts-q4-1',
   'parts-q4-2',
   'parts-q6',
   'nil-q1'].

source(BaseDir, Name) -> 
   Src = source(Name),
   filename:join(BaseDir, Src).

source('XQUTSCatalog') -> "./XQUTSCatalog.xml";
source('emptydoc') -> "./TestSources/emptydoc.xml";
source('airports') -> "./TestSources/airports.xml";
source('soapMsg') -> "./TestSources/soapMsg.xml";
source('archive') -> "./TestSources/archive.xml";
source('copy1') -> "./TestSources/copy1.xml";
source('copy2') -> "./TestSources/copy2.xml";
source('grant') -> "./TestSources/grant.xml";
source('log') -> "./TestSources/log.xml";
source('part-list') -> "./TestSources/part-list.xml";
source('part-tree') -> "./TestSources/part-tree.xml";
source('items') -> "./TestSources/items.xml";
source('bids') -> "./TestSources/bids.xml";
source('users') -> "./TestSources/users.xml";
source('users2') -> "./TestSources/users2.xml";
source('employees') -> "./TestSources/employees.xml";
source('employeesNIST') -> "./TestSources/employeesNIST.xml";
source('works-mod') -> "./TestSources/works-mod.xml";
source('books') -> "./TestSources/books.xml";
source('books2') -> "./TestSources/books2.xml";
source('books3') -> "./TestSources/books3.xml";
source('TopMany') -> "./TestSources/TopMany.xml";
source('putOutput') -> "./TestSources/putoutput.xml";
source('putOutput2') -> "./TestSources/putoutput2.xml".

%% Variable declaration with an updating expression rhs.
'variable-declaration-01'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employees-1.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employees-1.xml", source(__BaseDir, 'employees')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Prolog/VariableDeclaration/variable-declaration-01.xq"),
      Ctx1 = #{<<"employees">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employees-1.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Variable declaration with an updating expression rhs.
'variable-declaration-02'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employees-2.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employees-2.xml", source(__BaseDir, 'employees')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Prolog/VariableDeclaration/variable-declaration-02.xq"),
      Ctx1 = #{<<"employees">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employees-2.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates an insert expression used with an updating function and enclosed expression is also updating expression.
'id-function-declaration-01'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-3.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-3.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/FunctionDeclaration/id-function-declaration-01.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-3.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/FunctionDeclaration/id-function-declaration-01-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-3.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/FunctionDeclaration/id-function-declaration-01.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates an insert expression used with non updating/non external function and enclosed expression is also updating expression.
'id-function-declaration-02'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-4.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-4.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/FunctionDeclaration/id-function-declaration-02.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-4.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates an insert expression used with an updating/non external function and enclosed expression is an empty sequence.
'id-function-declaration-03'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-5.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-5.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/FunctionDeclaration/id-function-declaration-03.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-5.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/FunctionDeclaration/id-function-declaration-03-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-5.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/FunctionDeclaration/id-function-declaration-03.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates an update expression used with an updating/non external function and enclosed expression is a call to fn:error.
'id-function-declaration-04'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-6.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-6.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/FunctionDeclaration/id-function-declaration-04.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-6.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"FOER0000") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a mathematical expression used with an updating/non external function. Enclosed expression is a mathematical expression.
'id-function-declaration-05'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-7.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-7.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/FunctionDeclaration/id-function-declaration-05.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-7.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0002") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a delete expression used with an updating function and enclosed expression is also updating (delete) expression.
'id-function-declaration-06'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-8.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-8.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/FunctionDeclaration/id-function-declaration-06.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-8.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/FunctionDeclaration/id-function-declaration-06-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-8.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/FunctionDeclaration/id-function-declaration-06.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates a delete expression used with non updating/non external function and enclosed expression is an updating (delete)expression.
'id-function-declaration-07'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-9.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-9.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/FunctionDeclaration/id-function-declaration-07.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-9.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a replace expression used with an updating function and enclosed expression is also updating (replace) expression.
'id-function-declaration-08'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-10.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-10.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/FunctionDeclaration/id-function-declaration-08.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-10.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/FunctionDeclaration/id-function-declaration-08-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-10.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/FunctionDeclaration/id-function-declaration-08.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates a replace expression used with non updating/non external function and enclosed expression is also updating (replace)expression.
'id-function-declaration-09'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-11.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-11.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/FunctionDeclaration/id-function-declaration-09.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-11.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a rename expression used with an updating function and enclosed expression is also updating (rename) expression.
'id-function-declaration-010'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-12.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-12.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/FunctionDeclaration/id-function-declaration-010.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-12.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/FunctionDeclaration/id-function-declaration-010-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-12.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/FunctionDeclaration/id-function-declaration-010.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates a rename expression used with non updating/non external function and enclosed expression is also updating (rename) expression.
'id-function-declaration-011'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-13.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-13.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/FunctionDeclaration/id-function-declaration-011.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-13.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a transform expression used with an updating function and enclosed expression is also updating (transform) expression.
'id-function-declaration-012'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-14.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-14.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/FunctionDeclaration/id-function-declaration-012.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-14.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0002") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a transform expression used with non updating/non external function and enclosed expression is non updating (transform) expression.
'id-function-declaration-013'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-15.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-15.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/FunctionDeclaration/id-function-declaration-013.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-15.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/FunctionDeclaration/id-function-declaration-013.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of a function declaration declared as updating and a return type is specified.
'id-function-declaration-014'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-16.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-16.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/FunctionDeclaration/id-function-declaration-014.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-16.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0028") of 
         true -> {comment, "Correct error"};
         {false, _} -> 
            case xqerl_test:assert_error(Res1,"XUST0002") of 
               true -> {comment, "Correct error"};
               {false, Err1} ->  ct:fail(Err1) 
            end      end
   end.

%% Updating function contains updating expression in a disallowed place.
'id-function-declaration-015'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-17.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-17.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/FunctionDeclaration/id-function-declaration-015.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-17.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Updating function returns a value on a non-executed branch.
'id-function-declaration-016'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-18.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-18.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/FunctionDeclaration/id-function-declaration-016.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-18.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Recursive updating function.
'id-function-declaration-017'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/FunctionDeclaration/id-function-declaration-017.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/FunctionDeclaration/id-function-declaration-017.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Function declaration, non-updating, with updating expression.
'function-declaration-01'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employees-20.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employees-20.xml", source(__BaseDir, 'employees')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Prolog/FunctionDeclaration/function-declaration-01.xq"),
      Ctx1 = #{<<"employees">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employees-20.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Function declaration, updating, with return type.
'function-declaration-02'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employees-21.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employees-21.xml", source(__BaseDir, 'employees')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Prolog/FunctionDeclaration/function-declaration-02.xq"),
      Ctx1 = #{<<"employees">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employees-21.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0028") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Function declaration, updating, with simple expression.
'function-declaration-03'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employees-22.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employees-22.xml", source(__BaseDir, 'employees')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Prolog/FunctionDeclaration/function-declaration-03.xq"),
      Ctx1 = #{<<"employees">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employees-22.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0002") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Function declaration, updating, with vacuous expression.
'function-declaration-04'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employees-23.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employees-23.xml", source(__BaseDir, 'employees')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Prolog/FunctionDeclaration/function-declaration-04.xq"),
      Ctx1 = #{<<"employees">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employees-23.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/Prolog/FunctionDeclaration/function-declaration-04.txt")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a simple insert expression with "after" clause only. Inserts an element.
'id-insert-expr-01'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-24.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-24.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-01.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-24.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-01-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-24.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-01.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates a simple insert expression with "after" clause only. Inserts an element.
'id-insert-expr-02'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-25.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-25.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-02.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-25.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-02-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-25.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-02.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates a simple insert expression with "as first" and "into" clauses. Inserts an element.
'id-insert-expr-03'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-26.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-26.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-03.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-26.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-03-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-26.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-03.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates a simple insert expression with "as last" and "into" clauses. Inserts an element.
'id-insert-expr-04'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-27.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-27.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-04.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-27.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-04-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-27.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-04.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates a simple insert expression with "into" clause only. Inserts an element.
'id-insert-expr-05'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-28.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-28.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-05.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-28.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-05-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-28.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-05.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates a simple insert expression with "after" clause only. Inserts an attribute.
'id-insert-expr-06'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-29.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-29.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-06.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-29.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-06-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-29.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-06.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates a simple insert expression with "before" clause only. Inserts an attribute.
'id-insert-expr-07'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-30.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-30.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-07.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-30.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-07-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-30.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-07.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates a simple insert expression with "as first" and "into" clauses. Inserts an attribute.
'id-insert-expr-08'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-31.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-31.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-08.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-31.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-08-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-31.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-08.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates a simple insert expression with "as last" and "into" clauses. Inserts an attribute.
'id-insert-expr-09'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-32.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-32.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-09.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-32.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-09-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-32.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-09.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates a simple insert expression with "into" clause only. Inserts an attribute.
'id-insert-expr-010'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-33.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-33.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-010.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-33.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-010-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-33.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-010.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates a simple insert expression with "after" clause only. Inserts a comment.
'id-insert-expr-011'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-34.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-34.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-011.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-34.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-011-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-34.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-011.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates a simple insert expression with "before" clause only. Inserts a comment.
'id-insert-expr-012'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-35.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-35.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-012.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-35.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-012-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-35.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-012.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates a simple insert expression with "as first" and "into" clauses. Inserts a comment.
'id-insert-expr-013'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-36.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-36.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-013.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-36.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-013-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-36.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-013.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates a simple insert expression with "as first" and "into" clauses. Inserts a comment.
'id-insert-expr-014'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-37.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-37.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-014.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-37.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-014-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-37.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-014.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates a simple insert expression with "into" clause only. Inserts a comment.
'id-insert-expr-015'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-38.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-38.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-015.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-38.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-015-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-38.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-015.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates a simple insert expression with "before" clause only. Inserts an element into a directly constructed element node.
'id-insert-expr-016'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-39.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-39.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-016.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-39.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-016-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-39.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-016.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates a simple insert expression with "after" clause only. Inserts an element into a directly constructed element node.
'id-insert-expr-017'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-40.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-40.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-017.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-40.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-017-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-40.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-017.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates a simple insert expression with "as first" and "into" clauses. Inserts an element into a directly constructed element node.
'id-insert-expr-018'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-41.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-41.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-018.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-41.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-018-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-41.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-018.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates a simple insert expression with "as last" and "into" clauses. Inserts an element into a directly constructed element node.
'id-insert-expr-019'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-42.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-42.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-019.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-42.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-019-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-42.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-019.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates a simple insert expression with "into" clause only. Inserts an element into a directly constructed element node.
'id-insert-expr-020'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-43.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-43.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-020.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-43.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-020-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-43.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-020.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates a simple insert expression with "after" only. Insert a sequence of element nodes into a directly constructed element node.
'id-insert-expr-021'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-44.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-44.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-021.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-44.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-021-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-44.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-021.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluation of simple insert expression that uses "into" clause only to insert a sequence of element nodes into into an XML data source.
'id-insert-expr-022'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-45.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-45.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-022.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-45.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-022-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-45.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-022.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates a simple insert expression where source expression is an updating expression.
'id-insert-expr-023'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-46.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-46.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-023.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-46.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a simple insert expression where target expression is an updating expression.
'id-insert-expr-024'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-47.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-47.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-024.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-47.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a simple insert expression where both source and target expressions are updating expressions.
'id-insert-expr-025'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-48.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-48.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-025.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-48.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates an insert expression where the source sequence have an attribute node following an element node.
'id-insert-expr-026'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-49.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-49.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-026.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-49.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0004") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates an insert expression where the target expression is a sequence of nodes.
'id-insert-expr-027'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-50.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-50.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-027.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-50.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0005") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates an insert expression where the target expression is the empty sequence.
'id-insert-expr-028'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-51.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-51.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-028.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-51.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0027") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates an insert expression where the target expression evaluates to a number.
'id-insert-expr-029'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-52.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-52.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-029.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-52.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0005") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates an insert expression where the source expression evaluates to a number.
'id-insert-expr-030'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-53.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-53.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-030.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-53.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-030-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-53.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-030.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates an insert expression where the target expression is a complex expression.
'id-insert-expr-031'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-54.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-54.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-031.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-54.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-031-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-54.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-031.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluation of insert expression where a sequence of attributes is inserted as first.
'id-insert-expr-032'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-55.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-55.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-032.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-55.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-032-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-55.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-032.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluation of insert expression where a sequence of attributes is inserted as last.
'id-insert-expr-033'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-56.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-56.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-033.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-56.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-033-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-56.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-033.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluation of insert expression where a sequence of nodes is inserted as first. Make sure order is preserved.
'id-insert-expr-034'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-57.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-57.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-034.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-57.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-034-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-57.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-034.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluation of insert expression where a sequence of nodes is inserted as last. Make sure order is preserved.
'id-insert-expr-035'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-58.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-58.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-035.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-58.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-035-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-58.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-035.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluation of insert expression where a sequence of nodes is inserted using "before" clause. Make sure order is preserved.
'id-insert-expr-036'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-59.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-59.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-036.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-59.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-036-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-59.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-036.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluation of insert expression where a sequence of nodes is inserted using "after" clause. Make sure order is preserved.
'id-insert-expr-037'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-60.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-60.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-037.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-60.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-037-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-60.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-037.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluation of insert expression where a sequence of Comment nodes are inserted using "before" clause. Make sure order is preserved.
'id-insert-expr-038'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-61.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-61.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-038.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-61.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-038-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-61.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-038.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluation of insert expression where a sequence of Comment nodes are inserted using "after" clause. Make sure order is preserved.
'id-insert-expr-039'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-62.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-62.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-039.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-62.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-039-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-62.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-039.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluation of insert expression where a two groups of element nodes is inserted as using "after" clause. Make sure order is mantained within a groups.
'id-insert-expr-040'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-63.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-63.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-040.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-63.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-040-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-63.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case lists:any(fun(true) -> true; (_) -> false end, [
         xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-040.xml")}),
         xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-040-alt.xml")})]) of 
         true -> {comment, "Correct"};
         false -> ct:fail(Res2)
      end
   end.

%% Evaluation of insert expression where a two groups of element nodes is inserted as using "before" clause. Make sure order is mantained within a groups.
'id-insert-expr-041'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-64.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-64.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-041.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-64.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-041-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-64.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case lists:any(fun(true) -> true; (_) -> false end, [
         xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-041.xml")}),
         xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-041-alt.xml")})]) of 
         true -> {comment, "Correct"};
         false -> ct:fail(Res2)
      end
   end.

%% Evaluation of insert expression where two groups of element nodes are inserted as using "before" and "after" clauses respectively. Make sure order is mantained within groups.
'id-insert-expr-042'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-65.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-65.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-042.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-65.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-042-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-65.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-042.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluation of insert expression where two groups of element nodes are inserted as using "after" and "before" clauses respectively. Make sure order is mantained within groups.
'id-insert-expr-043'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-66.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-66.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-043.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-66.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-043-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-66.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-043.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluation of insert expression, where the source expression is a transform expression.
'id-insert-expr-044'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-67.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-67.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-044.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-67.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-044-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-67.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-044.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluation of insert expression, where the before clause is used and the result is a document node.
'id-insert-expr-045'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-68.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-68.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-045.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-68.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0006") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of insert expression, where the after clause is used and the result is a document node.
'id-insert-expr-046'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-69.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-69.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-046.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-69.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0006") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of insert expression, where the target is a comment node and usage of after clause.
'id-insert-expr-047'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-70.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-70.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-047.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-70.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-047-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-70.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-047.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluation of insert expression, where the target is a comment node and usage of before clause.
'id-insert-expr-048'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-71.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-71.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-048.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-71.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-048-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-71.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-048.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluation of insert expression, where two nodes are inserted into the same node using the "as first" clause.
'id-insert-expr-049'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-72.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-72.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-049.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-72.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-049-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-72.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case lists:any(fun(true) -> true; (_) -> false end, [
         xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-049.xml")}),
         xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-049-alt.xml")})]) of 
         true -> {comment, "Correct"};
         false -> ct:fail(Res2)
      end
   end.

%% Evaluation of insert expression, where two nodes are inserted into the same node using the "as last" clause.
'id-insert-expr-050'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-73.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-73.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-050.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-73.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-050-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-73.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case lists:any(fun(true) -> true; (_) -> false end, [
         xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-050.xml")}),
         xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-050-alt.xml")})]) of 
         true -> {comment, "Correct"};
         false -> ct:fail(Res2)
      end
   end.

%% Same as id-insert-expr-01, but using keyword "nodes".
'id-insert-expr-051'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-74.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-74.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-051.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-74.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-051-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-74.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-051.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Insert into respects as first, as last, before, and after.
'id-insert-expr-052'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-75.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-75.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-052.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-75.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-052-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-75.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case lists:any(fun(true) -> true; (_) -> false end, [
         xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-052a.xml")}),
         xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-052b.xml")}),
         xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-052c.xml")}),
         xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-052d.xml")}),
         xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-052e.xml")}),
         xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-052f.xml")})]) of 
         true -> {comment, "Correct"};
         false -> ct:fail(Res2)
      end
   end.

%% Insert empty sequences into, as first, as last, before, and after.
'id-insert-expr-053'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-76.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-76.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-053.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-76.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-053-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-76.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-053.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Insert an element into a comment.
'id-insert-expr-054'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-77.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-77.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-054.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-77.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0005") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Insert an element into a text node.
'id-insert-expr-055'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-78.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-78.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-055.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-78.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0005") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Insert an element into a PI.
'id-insert-expr-056'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-79.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-79.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-056.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-79.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0005") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Insert text node into a text node.
'id-insert-expr-057'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-80.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-80.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-057.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-80.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0005") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Insert an element before an attribute.
'id-insert-expr-058'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-81.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-81.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-058.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-81.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0006") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Insert an element after an attribute.
'id-insert-expr-059'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-82.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-82.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-059.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-82.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0006") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Insert an attribute before an attribute.
'id-insert-expr-060'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-83.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-83.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-060.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-83.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0006") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Insert an attribute after an attribute.
'id-insert-expr-061'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-84.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-84.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-061.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-84.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0006") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Insert an element before an element without a parent.
'id-insert-expr-062'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-85.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-85.xml", source(__BaseDir, 'emptydoc')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-062.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/emptydoc-85.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0029") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Insert an element after an element without a parent.
'id-insert-expr-063'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-86.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-86.xml", source(__BaseDir, 'emptydoc')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-063.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/emptydoc-86.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0029") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Insert an attribute into a comment.
'id-insert-expr-064'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-87.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-87.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-064.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-87.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0005") of 
         true -> {comment, "Correct error"};
         {false, _} -> 
            case xqerl_test:assert_error(Res1,"XUTY0022") of 
               true -> {comment, "Correct error"};
               {false, Err1} ->  ct:fail(Err1) 
            end      end
   end.

%% Insert an attribute into a text node.
'id-insert-expr-065'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-88.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-88.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-065.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-88.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0005") of 
         true -> {comment, "Correct error"};
         {false, _} -> 
            case xqerl_test:assert_error(Res1,"XUTY0022") of 
               true -> {comment, "Correct error"};
               {false, Err1} ->  ct:fail(Err1) 
            end      end
   end.

%% Insert an attribute into a PI.
'id-insert-expr-066'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-89.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-89.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-066.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-89.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0005") of 
         true -> {comment, "Correct error"};
         {false, _} -> 
            case xqerl_test:assert_error(Res1,"XUTY0022") of 
               true -> {comment, "Correct error"};
               {false, Err1} ->  ct:fail(Err1) 
            end      end
   end.

%% Insert an attribute into a document.
'id-insert-expr-067'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-90.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-90.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-067.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-90.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0022") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Insert an attribute into attribute.
'id-insert-expr-068'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-91.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-91.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-068.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-91.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0005") of 
         true -> {comment, "Correct error"};
         {false, _} -> 
            case xqerl_test:assert_error(Res1,"XUTY0022") of 
               true -> {comment, "Correct error"};
               {false, Err1} ->  ct:fail(Err1) 
            end      end
   end.

%% Insert an attribute before an element without a parent.
'id-insert-expr-069'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-92.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-92.xml", source(__BaseDir, 'emptydoc')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-069.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/emptydoc-92.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0029") of 
         true -> {comment, "Correct error"};
         {false, _} -> 
            case xqerl_test:assert_error(Res1,"XUDY0030") of 
               true -> {comment, "Correct error"};
               {false, Err1} ->  ct:fail(Err1) 
            end      end
   end.

%% Insert an attribute after an element without a parent.
'id-insert-expr-070'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-93.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-93.xml", source(__BaseDir, 'emptydoc')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-070.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/emptydoc-93.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0029") of 
         true -> {comment, "Correct error"};
         {false, _} -> 
            case xqerl_test:assert_error(Res1,"XUDY0030") of 
               true -> {comment, "Correct error"};
               {false, Err1} ->  ct:fail(Err1) 
            end      end
   end.

%% Insert an attribute before an text node without a parent.
'id-insert-expr-071'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-94.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-94.xml", source(__BaseDir, 'emptydoc')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-071.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/emptydoc-94.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0029") of 
         true -> {comment, "Correct error"};
         {false, _} -> 
            case xqerl_test:assert_error(Res1,"XUDY0030") of 
               true -> {comment, "Correct error"};
               {false, Err1} ->  ct:fail(Err1) 
            end      end
   end.

%% Insert an attribute after an text node without a parent.
'id-insert-expr-072'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-95.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-95.xml", source(__BaseDir, 'emptydoc')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-072.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/emptydoc-95.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0029") of 
         true -> {comment, "Correct error"};
         {false, _} -> 
            case xqerl_test:assert_error(Res1,"XUDY0030") of 
               true -> {comment, "Correct error"};
               {false, Err1} ->  ct:fail(Err1) 
            end      end
   end.

%% Insert an attribute before a comment without a parent.
'id-insert-expr-073'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-96.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-96.xml", source(__BaseDir, 'emptydoc')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-073.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/emptydoc-96.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0029") of 
         true -> {comment, "Correct error"};
         {false, _} -> 
            case xqerl_test:assert_error(Res1,"XUDY0030") of 
               true -> {comment, "Correct error"};
               {false, Err1} ->  ct:fail(Err1) 
            end      end
   end.

%% Insert an attribute after a comment without a parent.
'id-insert-expr-074'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-97.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-97.xml", source(__BaseDir, 'emptydoc')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-074.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/emptydoc-97.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0029") of 
         true -> {comment, "Correct error"};
         {false, _} -> 
            case xqerl_test:assert_error(Res1,"XUDY0030") of 
               true -> {comment, "Correct error"};
               {false, Err1} ->  ct:fail(Err1) 
            end      end
   end.

%% Insert an attribute before a PI without a parent.
'id-insert-expr-075'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-98.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-98.xml", source(__BaseDir, 'emptydoc')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-075.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/emptydoc-98.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0029") of 
         true -> {comment, "Correct error"};
         {false, _} -> 
            case xqerl_test:assert_error(Res1,"XUDY0030") of 
               true -> {comment, "Correct error"};
               {false, Err1} ->  ct:fail(Err1) 
            end      end
   end.

%% Insert an attribute after a PI without a parent.
'id-insert-expr-076'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-99.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-99.xml", source(__BaseDir, 'emptydoc')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-076.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/emptydoc-99.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0029") of 
         true -> {comment, "Correct error"};
         {false, _} -> 
            case xqerl_test:assert_error(Res1,"XUDY0030") of 
               true -> {comment, "Correct error"};
               {false, Err1} ->  ct:fail(Err1) 
            end      end
   end.

%% Insert text nodes as first, as last, before, and after.
'id-insert-expr-077'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-100.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-100.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-077.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-100.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-077-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-100.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-077.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Insert PI as first, as last, before, and after.
'id-insert-expr-078'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-101.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-101.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-078.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-101.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-078-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-101.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-078.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Insert a document as first.
'id-insert-expr-079'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-102.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-102.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-079.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-102.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-079-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-102.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-079.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Insert a mixed sequence as first, as last, before, and after.
'id-insert-expr-080'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-103.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-103.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-080.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-103.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-080-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-103.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-080.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Check namepsace propogation when inserting an element.
'id-insert-expr-081'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-104.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-104.xml", source(__BaseDir, 'emptydoc')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-081.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/emptydoc-104.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-081a.txt")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Check namepsace propogation when inserting an element.
'id-insert-expr-082'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-105.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-105.xml", source(__BaseDir, 'emptydoc')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-082.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/emptydoc-105.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-082a.txt")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Check namepsace propogation when inserting an element.
'id-insert-expr-083'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-106.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-106.xml", source(__BaseDir, 'emptydoc')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-083.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/emptydoc-106.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-083a.txt")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Check namepsace propogation when inserting an element.
'id-insert-expr-084'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-107.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-107.xml", source(__BaseDir, 'emptydoc')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-084.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/emptydoc-107.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-084a.txt")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Check namepsace propogation when inserting an element.
'id-insert-expr-085'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-108.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-108.xml", source(__BaseDir, 'emptydoc')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-085.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/emptydoc-108.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-085a.txt")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Check namepsace propogation when inserting an attribute.
'id-insert-expr-086'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-109.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-109.xml", source(__BaseDir, 'emptydoc')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-086.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/emptydoc-109.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-086a.txt")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Check namepsace propogation when inserting an element.
'id-insert-expr-081-no-inherit'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-110.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-110.xml", source(__BaseDir, 'emptydoc')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-081-no-inherit.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/emptydoc-110.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-081-no-inherit.txt")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Check namepsace propogation when inserting an element.
'id-insert-expr-082-no-inherit'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-111.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-111.xml", source(__BaseDir, 'emptydoc')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-082-no-inherit.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/emptydoc-111.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-082-no-inherit.txt")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Check namepsace propogation when inserting an element.
'id-insert-expr-083-no-inherit'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-112.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-112.xml", source(__BaseDir, 'emptydoc')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-083-no-inherit.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/emptydoc-112.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-083-no-inherit.txt")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Check namepsace propogation when inserting an element.
'id-insert-expr-084-no-inherit'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-113.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-113.xml", source(__BaseDir, 'emptydoc')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-084-no-inherit.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/emptydoc-113.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-084-no-inherit.txt")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Check namepsace propogation when inserting an element.
'id-insert-expr-085-no-inherit'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-114.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-114.xml", source(__BaseDir, 'emptydoc')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-085-no-inherit.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/emptydoc-114.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-085-no-inherit.txt")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Check namepsace propogation when inserting an attribute.
'id-insert-expr-086-no-inherit'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-115.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-115.xml", source(__BaseDir, 'emptydoc')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-086-no-inherit.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/emptydoc-115.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-086-no-inherit.txt")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Insert an attribute before an element that does not have an element parent.
'id-insert-expr-087'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-116.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-116.xml", source(__BaseDir, 'TopMany')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-087.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-116.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0030") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Insert an attribute after an element that does not have an element parent.
'id-insert-expr-088'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-117.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-117.xml", source(__BaseDir, 'TopMany')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-088.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-117.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0030") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Insert an attribute before a comment that does not have an element parent.
'id-insert-expr-089'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-118.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-118.xml", source(__BaseDir, 'TopMany')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-089.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-118.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0030") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Insert an attribute after a comment that does not have an element parent.
'id-insert-expr-090'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-119.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-119.xml", source(__BaseDir, 'TopMany')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-090.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-119.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0030") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Insert an attribute before a PI that does not have an element parent.
'id-insert-expr-091'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-120.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-120.xml", source(__BaseDir, 'TopMany')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-091.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-120.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0030") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Insert an attribute after a PI that does not have an element parent.
'id-insert-expr-092'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-121.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-121.xml", source(__BaseDir, 'TopMany')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-092.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-121.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0030") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Insert an attribute that requires creation of a new namespace node.
'id-insert-expr-093'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-122.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-122.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-093.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-122.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-093-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-122.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-093.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Insert an attribute that doesn't conflict with an element in the default namespace.
'id-insert-expr-094'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/books3-123.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/books3-123.xml", source(__BaseDir, 'books3')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-094.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/books3-123.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/InsertExpressions/id-insert-expr-094-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/books3-123.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/InsertExpressions/id-insert-expr-094.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% A delete expression that removes an element from a directly constructed element node.
'id-delete-expr-01'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-124.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-124.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/id-delete-expr-01.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-124.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/id-delete-expr-01-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-124.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/DeleteExpressions/id-delete-expr-01.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% A delete expression that removes an attribute from a directly constructed element node.
'id-delete-expr-02'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-125.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-125.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/id-delete-expr-02.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-125.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/id-delete-expr-02-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-125.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/DeleteExpressions/id-delete-expr-02.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% A delete expression that removes a comment node from a directly constructed element node.
'id-delete-expr-03'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-126.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-126.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/id-delete-expr-03.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-126.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/id-delete-expr-03-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-126.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/DeleteExpressions/id-delete-expr-03.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% A delete expression that removes multiple element nodes from an XML File.
'id-delete-expr-04'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-127.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-127.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/id-delete-expr-04.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-127.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/id-delete-expr-04-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-127.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/DeleteExpressions/id-delete-expr-04.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% A delete expression that removes a sequence of element nodes from directly constructed element nodes.
'id-delete-expr-05'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-128.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-128.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/id-delete-expr-05.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-128.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/id-delete-expr-05-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-128.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/DeleteExpressions/id-delete-expr-05.txt")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% A delete expression where the target expression is an updating expression.
'id-delete-expr-06'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-129.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-129.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/id-delete-expr-06.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-129.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% A delete expression where the target expression is a mathematical expression.
'id-delete-expr-07'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-130.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-130.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/id-delete-expr-07.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-130.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0007") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% A delete expression where the target expression results in a sequence of zero nodes.
'id-delete-expr-08'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-131.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-131.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/id-delete-expr-08.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-131.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/id-delete-expr-08-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-131.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/DeleteExpressions/id-delete-expr-08.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% A delete expression where the target expression is set to "()".
'id-delete-expr-09'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-132.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-132.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/id-delete-expr-09.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-132.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/id-delete-expr-09-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-132.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/DeleteExpressions/id-delete-expr-09.txt")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% A delete expression where the target expression is a complex one.
'id-delete-expr-010'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-133.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-133.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/id-delete-expr-010.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-133.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/id-delete-expr-010-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-133.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/DeleteExpressions/id-delete-expr-010.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% A delete expression where the target expression results in a sequence of integers.
'id-delete-expr-011'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-134.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-134.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/id-delete-expr-011.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-134.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0007") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% A delete expression with multiple delete states.
'id-delete-expr-012'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-135.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-135.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/id-delete-expr-012.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-135.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/id-delete-expr-012-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-135.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/DeleteExpressions/id-delete-expr-012.txt")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end,
   begin
      F3 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/id-delete-expr-012-1.xq"),
      Ctx3 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-135.xml')")},
      Res3 = try
                Q3 = xqerl_code_server:compile(F3),
                xqerl:run(Q3, Ctx3)
             catch _:E3 -> E3 end,
      Res3
   end,
   begin
      F4 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/id-delete-expr-012-1-test.xq"),
      Ctx4 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-135.xml')")},
      Res4 = try
                Q4 = xqerl_code_server:compile(F4),
                xqerl:run(Q4, Ctx4)
             catch _:E4 -> E4 end,
      case xqerl_test:assert_xml(Res4,{file, filename:join(__BaseDir, "ExpectedTestResults/DeleteExpressions/id-delete-expr-012-1.txt")}) of
         true -> {comment, "Correct"};
         {false, Err4} -> ct:fail(Err4) 
      end
   end.

%% Delete an element node and its parent.
'id-delete-expr-013'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-136.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-136.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/id-delete-expr-013.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-136.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/id-delete-expr-013-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-136.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/DeleteExpressions/id-delete-expr-013.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Delete an element node parent and then the element node.
'id-delete-expr-014'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-137.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-137.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/id-delete-expr-014.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-137.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/id-delete-expr-014-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-137.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/DeleteExpressions/id-delete-expr-014.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Delete an element node multiple times.
'id-delete-expr-015'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-138.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-138.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/id-delete-expr-015.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-138.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/id-delete-expr-015-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-138.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/DeleteExpressions/id-delete-expr-015.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Delete an element node multiple times.
'id-delete-expr-016'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-139.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-139.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/id-delete-expr-016.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-139.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/id-delete-expr-015-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-139.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/DeleteExpressions/id-delete-expr-016.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Delete an element node, making sure that it is remains visible in this snapshot.
'id-delete-expr-017'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-140.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-140.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/id-delete-expr-017.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-140.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/id-delete-expr-017-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-140.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/DeleteExpressions/id-delete-expr-017.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Delete an element node, making sure that it is remains visible in this snapshot.
'id-delete-expr-018'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-141.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-141.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/id-delete-expr-018.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-141.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/id-delete-expr-018-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-141.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/DeleteExpressions/id-delete-expr-018.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Delete an attribute node multiple times.
'id-delete-expr-019'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-142.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-142.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/id-delete-expr-019.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-142.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/id-delete-expr-019-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-142.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/DeleteExpressions/id-delete-expr-019.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Delete a text node multiple times.
'id-delete-expr-020'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-143.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-143.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/id-delete-expr-020.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-143.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/id-delete-expr-020-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-143.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/DeleteExpressions/id-delete-expr-020.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Delete a comment node multiple times.
'id-delete-expr-021'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-144.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-144.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/id-delete-expr-021.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-144.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/id-delete-expr-021-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-144.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/DeleteExpressions/id-delete-expr-021.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Delete a PI node multiple times.
'id-delete-expr-022'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-145.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-145.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/id-delete-expr-022.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-145.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/id-delete-expr-022-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-145.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/DeleteExpressions/id-delete-expr-022.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Delete all PIs with target "a-pi".
'complex-deletes-q3'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-146.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-146.xml", source(__BaseDir, 'TopMany')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/complex-deletes-q3.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-146.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/complex-deletes-q3-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-146.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/DeleteExpressions/complex-deletes-q3.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end,
   begin
      F3 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/complex-deletes-q3-test2.xq"),
      Ctx3 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-146.xml')")},
      Res3 = try
                Q3 = xqerl_code_server:compile(F3),
                xqerl:run(Q3, Ctx3)
             catch _:E3 -> E3 end,
      case xqerl_test:assert_xml(Res3,{file, filename:join(__BaseDir, "ExpectedTestResults/DeleteExpressions/complex-deletes-q3-2.xml")}) of
         true -> {comment, "Correct"};
         {false, Err3} -> ct:fail(Err3) 
      end
   end.

%% Delete last text node child of document element.
'complex-deletes-q4'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-147.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-147.xml", source(__BaseDir, 'TopMany')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/complex-deletes-q4.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-147.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/complex-deletes-q4-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-147.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/DeleteExpressions/complex-deletes-q4.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end,
   begin
      F3 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/complex-deletes-q4-test2.xq"),
      Ctx3 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-147.xml')")},
      Res3 = try
                Q3 = xqerl_code_server:compile(F3),
                xqerl:run(Q3, Ctx3)
             catch _:E3 -> E3 end,
      case xqerl_test:assert_xml(Res3,{file, filename:join(__BaseDir, "ExpectedTestResults/DeleteExpressions/complex-deletes-q4-2.xml")}) of
         true -> {comment, "Correct"};
         {false, Err3} -> ct:fail(Err3) 
      end
   end.

%% Delete all text node children of element "south".
'complex-deletes-q5'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-148.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-148.xml", source(__BaseDir, 'TopMany')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/complex-deletes-q5.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-148.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/complex-deletes-q5-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-148.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/DeleteExpressions/complex-deletes-q5.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end,
   begin
      F3 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/complex-deletes-q5-test2.xq"),
      Ctx3 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-148.xml')")},
      Res3 = try
                Q3 = xqerl_code_server:compile(F3),
                xqerl:run(Q3, Ctx3)
             catch _:E3 -> E3 end,
      case xqerl_test:assert_xml(Res3,{file, filename:join(__BaseDir, "ExpectedTestResults/DeleteExpressions/complex-deletes-q5-2.xml")}) of
         true -> {comment, "Correct"};
         {false, Err3} -> ct:fail(Err3) 
      end
   end.

%% Delete the element called "far-east".
'complex-deletes-q10'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-149.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-149.xml", source(__BaseDir, 'TopMany')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/complex-deletes-q10.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-149.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/complex-deletes-q10-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-149.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/DeleteExpressions/complex-deletes-q10.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end,
   begin
      F3 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/complex-deletes-q10-test2.xq"),
      Ctx3 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-149.xml')")},
      Res3 = try
                Q3 = xqerl_code_server:compile(F3),
                xqerl:run(Q3, Ctx3)
             catch _:E3 -> E3 end,
      case xqerl_test:assert_xml(Res3,{file, filename:join(__BaseDir, "ExpectedTestResults/DeleteExpressions/complex-deletes-q10-2.xml")}) of
         true -> {comment, "Correct"};
         {false, Err3} -> ct:fail(Err3) 
      end
   end.

%% Delete all attributes called "mark".
'complex-deletes-q11'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-150.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-150.xml", source(__BaseDir, 'TopMany')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/complex-deletes-q11.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-150.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/complex-deletes-q11-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-150.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/DeleteExpressions/complex-deletes-q11.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end,
   begin
      F3 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/complex-deletes-q11-test2.xq"),
      Ctx3 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-150.xml')")},
      Res3 = try
                Q3 = xqerl_code_server:compile(F3),
                xqerl:run(Q3, Ctx3)
             catch _:E3 -> E3 end,
      case xqerl_test:assert_xml(Res3,{file, filename:join(__BaseDir, "ExpectedTestResults/DeleteExpressions/complex-deletes-q11-2.xml")}) of
         true -> {comment, "Correct"};
         {false, Err3} -> ct:fail(Err3) 
      end
   end.

%% Delete all attributes on the "west" element.
'complex-deletes-q12'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-151.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-151.xml", source(__BaseDir, 'TopMany')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/complex-deletes-q12.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-151.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/complex-deletes-q12-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-151.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/DeleteExpressions/complex-deletes-q12.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end,
   begin
      F3 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/complex-deletes-q12-test2.xq"),
      Ctx3 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-151.xml')")},
      Res3 = try
                Q3 = xqerl_code_server:compile(F3),
                xqerl:run(Q3, Ctx3)
             catch _:E3 -> E3 end,
      case xqerl_test:assert_xml(Res3,{file, filename:join(__BaseDir, "ExpectedTestResults/DeleteExpressions/complex-deletes-q12-2.xml")}) of
         true -> {comment, "Correct"};
         {false, Err3} -> ct:fail(Err3) 
      end
   end.

%% Delete the attributes names "west-attr-2", "center-attr-2", and "south-attr-2".
'complex-deletes-q13'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-152.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-152.xml", source(__BaseDir, 'TopMany')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/complex-deletes-q13.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-152.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/complex-deletes-q13-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-152.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/DeleteExpressions/complex-deletes-q13.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end,
   begin
      F3 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/complex-deletes-q13-test2.xq"),
      Ctx3 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-152.xml')")},
      Res3 = try
                Q3 = xqerl_code_server:compile(F3),
                xqerl:run(Q3, Ctx3)
             catch _:E3 -> E3 end,
      case xqerl_test:assert_xml(Res3,{file, filename:join(__BaseDir, "ExpectedTestResults/DeleteExpressions/complex-deletes-q13-2.xml")}) of
         true -> {comment, "Correct"};
         {false, Err3} -> ct:fail(Err3) 
      end
   end.

%% Delete the document node.
'complex-deletes-q14'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-153.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-153.xml", source(__BaseDir, 'TopMany')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/complex-deletes-q14.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-153.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/DeleteExpressions/complex-deletes-q14.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/complex-deletes-q14-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-153.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/DeleteExpressions/complex-deletes-q14-2.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates a replace expression, which replaces an element node.
'id-replace-expr-01'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-154.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-154.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-01.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-154.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-01-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-154.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/ReplaceExpressions/id-replace-expr-01.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates a replace expression, which replaces an attribute node.
'id-replace-expr-02'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-155.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-155.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-02.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-155.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-02-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-155.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/ReplaceExpressions/id-replace-expr-02.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates a replace expression that replaces a comment node.
'id-replace-expr-03'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-156.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-156.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-03.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-156.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-03-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-156.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/ReplaceExpressions/id-replace-expr-03.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates a replace expression that replaces Processing Instruction node.
'id-replace-expr-04'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-157.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-157.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-04.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-157.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-04-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-157.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/ReplaceExpressions/id-replace-expr-04.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates a replace expression, which replaces an element node with a sequence of zero nodes.
'id-replace-expr-010'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-158.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-158.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-010.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-158.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-010-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-158.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/ReplaceExpressions/id-replace-expr-010.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates a replace expression, where expression following the "with" clause is an updating expression.
'id-replace-expr-011'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-159.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-159.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-011.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-159.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a replace expression, where the target expression is an updating expression.
'id-replace-expr-012'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-160.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-160.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-012.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-160.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a replace expression, where the target expression results in more than one node.
'id-replace-expr-013'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-161.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-161.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-013.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-161.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0008") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a replace expression, where the target expression results in a single node with no parent property.
'id-replace-expr-014'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-162.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-162.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-014.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-162.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0009") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a replace expression, where the target is a document node.
'id-replace-expr-015'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-163.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-163.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-015.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-163.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0008") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a replace expression, where an attempt is made to replace an attribute node with an element node.
'id-replace-expr-016'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-164.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-164.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-016.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-164.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0011") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of a replace expression where an Element node value is replaced with an attribute node.
'id-replace-expr-022'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-165.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-165.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-022.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-165.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0010") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of a replace expression, where the target node is an attribute and the replacement list is not exclusively attribute nodes.
'id-replace-expr-023'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-166.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-166.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-023.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-166.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0011") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of a replace expression where an empty traget is replaced with an attribute node.
'id-replace-expr-028'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-167.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-167.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-028.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-167.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0027") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Replace the values of text nodes.
'id-replace-expr-029'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-168.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-168.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-029.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-168.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-029-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-168.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/ReplaceExpressions/id-replace-expr-029.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Replace the values of text nodes.
'id-replace-expr-030'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-169.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-169.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-030.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-169.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-030-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-169.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/ReplaceExpressions/id-replace-expr-030.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Replace the value of a element node with a sequence.
'id-replace-expr-031'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-170.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-170.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-031.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-170.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-031-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-170.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/ReplaceExpressions/id-replace-expr-031.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Replace the value of a element node with a sequence.
'id-replace-expr-032'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-171.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-171.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-032.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-171.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-032-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-171.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/ReplaceExpressions/id-replace-expr-032.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Replace the value of a element node with a document.
'id-replace-expr-033'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-172.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-172.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-033.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-172.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-033-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-172.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/ReplaceExpressions/id-replace-expr-033.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Replace an attribute node with a sequence of attribute nodes.
'id-replace-expr-034'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-173.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-173.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-034.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-173.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-034-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-173.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/ReplaceExpressions/id-replace-expr-034.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Check namepsace propogation when replacing an attribute.
'id-replace-expr-045'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-174.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-174.xml", source(__BaseDir, 'emptydoc')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-045.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/emptydoc-174.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/ReplaceExpressions/id-replace-expr-045a.txt")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Check namepsace propogation when replacing an attribute.
'id-replace-expr-045-no-inherit'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-175.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-175.xml", source(__BaseDir, 'emptydoc')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-045-no-inherit.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/emptydoc-175.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/ReplaceExpressions/id-replace-expr-045-no-inherit.txt")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a replace expression, which replaces an element node and usage of "value of" keyword.
'id-replace-expr-05'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-176.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-176.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-05.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-176.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-05-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-176.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/ReplaceExpressions/id-replace-expr-05.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates a replace expression, which replaces an attribute node and usage of "value of" keyword.
'id-replace-expr-06'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-177.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-177.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-06.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-177.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-06-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-177.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/ReplaceExpressions/id-replace-expr-06.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates a replace expression, which replaces a comment node and usage of "value of" keyword.
'id-replace-expr-07'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-178.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-178.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-07.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-178.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-07-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-178.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/ReplaceExpressions/id-replace-expr-07.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates a replace expression, which replaces a Processing Instruction node and usage of "value of" keyword.
'id-replace-expr-08'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-179.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-179.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-08.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-179.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-08-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-179.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/ReplaceExpressions/id-replace-expr-08.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates a replace expression, which replaces an element node and usage of "value of" keyword. It uses an arithmetic expression.
'id-replace-expr-09'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-180.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-180.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-09.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-180.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-09-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-180.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/ReplaceExpressions/id-replace-expr-09.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates a replace expression, where expression following the "with" clause is an updating expression and usage of "value of" keyword.
'id-replace-expr-017'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-181.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-181.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-017.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-181.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a replace expression, where the target expression is an updating expression and usage of the "value of" keyword.
'id-replace-expr-018'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-182.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-182.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-018.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-182.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a replace expression, where the target expression results into more than one node and usage of the "value of" keyword.
'id-replace-expr-019'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-183.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-183.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-019.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-183.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0008") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a replace expression, where the target is a document node and usage of the "value of" keyword.
'id-replace-expr-020'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-184.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-184.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-020.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-184.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0008") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a replace expression, used to replace an attribute node's value with an element node and usage of the "value of" clause.
'id-replace-expr-021'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-185.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-185.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-021.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-185.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-021-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-185.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/ReplaceExpressions/id-replace-expr-021.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates a replace expression with value of clause, where the target is a comment node and replacement string contains two adjacents hypens.
'id-replace-expr-024'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-186.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-186.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-024.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-186.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XQDY0072") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a replace expression with value of clause, where the target is a PI node and replacement string contains "?>".
'id-replace-expr-025'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-187.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-187.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-025.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-187.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XQDY0026") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a replace expression with value of clause, where the target expression results in and empty sequence.
'id-replace-expr-026'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-188.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-188.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-026.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-188.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0027") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a replace expression with value of clause, where the target expression is set to "()"
'id-replace-expr-027'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-189.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-189.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-027.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-189.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0027") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Replace value of element with empty sequence.
'id-replace-expr-035'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-190.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-190.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-035.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-190.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-035-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-190.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/ReplaceExpressions/id-replace-expr-035.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Replace value of element with a sequence.
'id-replace-expr-036'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-191.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-191.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-036.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-191.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-036-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-191.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/ReplaceExpressions/id-replace-expr-036.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Replace value of an attribute with empty sequence.
'id-replace-expr-037'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-192.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-192.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-037.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-192.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-037-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-192.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/ReplaceExpressions/id-replace-expr-037.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Replace value of a comment with empty sequence.
'id-replace-expr-038'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-193.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-193.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-038.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-193.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-038-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-193.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/ReplaceExpressions/id-replace-expr-038.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Replace value of a PI with empty sequence.
'id-replace-expr-039'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-194.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-194.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-039.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-194.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-039-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-194.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/ReplaceExpressions/id-replace-expr-039.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Replace value of a text node with empty sequence.
'id-replace-expr-040'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-195.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-195.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-040.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-195.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-040-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-195.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/ReplaceExpressions/id-replace-expr-040.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Replace value of an attribute with a sequence.
'id-replace-expr-041'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-196.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-196.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-041.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-196.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-041-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-196.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/ReplaceExpressions/id-replace-expr-041.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Replace value of a comment with a sequence.
'id-replace-expr-042'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-197.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-197.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-042.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-197.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-042-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-197.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/ReplaceExpressions/id-replace-expr-042.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Replace value of a PI with a sequence.
'id-replace-expr-043'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-198.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-198.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-043.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-198.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-043-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-198.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/ReplaceExpressions/id-replace-expr-043.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Replace value of a text node with a sequence.
'id-replace-expr-044'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-199.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-199.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-044.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-199.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/id-replace-expr-044-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-199.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/ReplaceExpressions/id-replace-expr-044.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Replace value of all PIs with target "a-pi".
'complex-replacevalues-q3'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-200.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-200.xml", source(__BaseDir, 'TopMany')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/complex-replacevalues-q3.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-200.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/complex-replacevalues-q3-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-200.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/ReplaceExpressions/complex-replacevalues-q3.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end,
   begin
      F3 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/complex-replacevalues-q3-test2.xq"),
      Ctx3 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-200.xml')")},
      Res3 = try
                Q3 = xqerl_code_server:compile(F3),
                xqerl:run(Q3, Ctx3)
             catch _:E3 -> E3 end,
      case xqerl_test:assert_xml(Res3,{file, filename:join(__BaseDir, "ExpectedTestResults/ReplaceExpressions/complex-replacevalues-q3-2.xml")}) of
         true -> {comment, "Correct"};
         {false, Err3} -> ct:fail(Err3) 
      end
   end.

%% Replace value of last text node child of document element.
'complex-replacevalues-q4'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-201.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-201.xml", source(__BaseDir, 'TopMany')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/complex-replacevalues-q4.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-201.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/complex-replacevalues-q4-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-201.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/ReplaceExpressions/complex-replacevalues-q4.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end,
   begin
      F3 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/complex-replacevalues-q4-test2.xq"),
      Ctx3 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-201.xml')")},
      Res3 = try
                Q3 = xqerl_code_server:compile(F3),
                xqerl:run(Q3, Ctx3)
             catch _:E3 -> E3 end,
      case xqerl_test:assert_xml(Res3,{file, filename:join(__BaseDir, "ExpectedTestResults/ReplaceExpressions/complex-replacevalues-q4-2.xml")}) of
         true -> {comment, "Correct"};
         {false, Err3} -> ct:fail(Err3) 
      end
   end.

%% Replace value of all text node children of element "south".
'complex-replacevalues-q5'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-202.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-202.xml", source(__BaseDir, 'TopMany')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/complex-replacevalues-q5.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-202.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/complex-replacevalues-q5-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-202.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/ReplaceExpressions/complex-replacevalues-q5.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end,
   begin
      F3 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/complex-replacevalues-q5-test2.xq"),
      Ctx3 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-202.xml')")},
      Res3 = try
                Q3 = xqerl_code_server:compile(F3),
                xqerl:run(Q3, Ctx3)
             catch _:E3 -> E3 end,
      case xqerl_test:assert_xml(Res3,{file, filename:join(__BaseDir, "ExpectedTestResults/ReplaceExpressions/complex-replacevalues-q5-2.xml")}) of
         true -> {comment, "Correct"};
         {false, Err3} -> ct:fail(Err3) 
      end
   end.

%% Replace value of the element called "center".
'complex-replacevalues-q9'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-203.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-203.xml", source(__BaseDir, 'TopMany')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/complex-replacevalues-q9.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-203.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/complex-replacevalues-q9-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-203.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/ReplaceExpressions/complex-replacevalues-q9.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end,
   begin
      F3 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/complex-replacevalues-q9-test2.xq"),
      Ctx3 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-203.xml')")},
      Res3 = try
                Q3 = xqerl_code_server:compile(F3),
                xqerl:run(Q3, Ctx3)
             catch _:E3 -> E3 end,
      case xqerl_test:assert_xml(Res3,{file, filename:join(__BaseDir, "ExpectedTestResults/ReplaceExpressions/complex-replacevalues-q9-2.xml")}) of
         true -> {comment, "Correct"};
         {false, Err3} -> ct:fail(Err3) 
      end
   end.

%% Replace value of the element called "south".
'complex-replacevalues-q10'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-204.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-204.xml", source(__BaseDir, 'TopMany')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/complex-replacevalues-q10.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-204.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/complex-replacevalues-q10-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-204.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/ReplaceExpressions/complex-replacevalues-q10.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end,
   begin
      F3 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/complex-replacevalues-q10-test2.xq"),
      Ctx3 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-204.xml')")},
      Res3 = try
                Q3 = xqerl_code_server:compile(F3),
                xqerl:run(Q3, Ctx3)
             catch _:E3 -> E3 end,
      case xqerl_test:assert_xml(Res3,{file, filename:join(__BaseDir, "ExpectedTestResults/ReplaceExpressions/complex-replacevalues-q10-2.xml")}) of
         true -> {comment, "Correct"};
         {false, Err3} -> ct:fail(Err3) 
      end
   end.

%% Replace value of all attributes called "mark".
'complex-replacevalues-q11'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-205.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-205.xml", source(__BaseDir, 'TopMany')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/complex-replacevalues-q11.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-205.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/complex-replacevalues-q11-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-205.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/ReplaceExpressions/complex-replacevalues-q11.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end,
   begin
      F3 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/complex-replacevalues-q11-test2.xq"),
      Ctx3 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-205.xml')")},
      Res3 = try
                Q3 = xqerl_code_server:compile(F3),
                xqerl:run(Q3, Ctx3)
             catch _:E3 -> E3 end,
      case xqerl_test:assert_xml(Res3,{file, filename:join(__BaseDir, "ExpectedTestResults/ReplaceExpressions/complex-replacevalues-q11-2.xml")}) of
         true -> {comment, "Correct"};
         {false, Err3} -> ct:fail(Err3) 
      end
   end.

%% Replace value of all attributes on the "west" element.
'complex-replacevalues-q12'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-206.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-206.xml", source(__BaseDir, 'TopMany')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/complex-replacevalues-q12.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-206.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/complex-replacevalues-q12-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-206.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/ReplaceExpressions/complex-replacevalues-q12.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end,
   begin
      F3 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/complex-replacevalues-q12-test2.xq"),
      Ctx3 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-206.xml')")},
      Res3 = try
                Q3 = xqerl_code_server:compile(F3),
                xqerl:run(Q3, Ctx3)
             catch _:E3 -> E3 end,
      case xqerl_test:assert_xml(Res3,{file, filename:join(__BaseDir, "ExpectedTestResults/ReplaceExpressions/complex-replacevalues-q12-2.xml")}) of
         true -> {comment, "Correct"};
         {false, Err3} -> ct:fail(Err3) 
      end
   end.

%% Replace the value of the attributes named "west-attr-2", "center-attr-2", and "south-attr-2".
'complex-replacevalues-q13'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-207.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-207.xml", source(__BaseDir, 'TopMany')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/complex-replacevalues-q13.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-207.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/complex-replacevalues-q13-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-207.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/ReplaceExpressions/complex-replacevalues-q13.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end,
   begin
      F3 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/complex-replacevalues-q13-test2.xq"),
      Ctx3 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-207.xml')")},
      Res3 = try
                Q3 = xqerl_code_server:compile(F3),
                xqerl:run(Q3, Ctx3)
             catch _:E3 -> E3 end,
      case xqerl_test:assert_xml(Res3,{file, filename:join(__BaseDir, "ExpectedTestResults/ReplaceExpressions/complex-replacevalues-q13-2.xml")}) of
         true -> {comment, "Correct"};
         {false, Err3} -> ct:fail(Err3) 
      end
   end.

%% Replace the value of the "far-west" element with a string containing markup.
'complex-replacevalues-q14'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-208.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-208.xml", source(__BaseDir, 'TopMany')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/complex-replacevalues-q14.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-208.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/complex-replacevalues-q14-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-208.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/ReplaceExpressions/complex-replacevalues-q14.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end,
   begin
      F3 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/complex-replacevalues-q14-test2.xq"),
      Ctx3 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-208.xml')")},
      Res3 = try
                Q3 = xqerl_code_server:compile(F3),
                xqerl:run(Q3, Ctx3)
             catch _:E3 -> E3 end,
      case xqerl_test:assert_xml(Res3,{file, filename:join(__BaseDir, "ExpectedTestResults/ReplaceExpressions/complex-replacevalues-q14-2.xml")}) of
         true -> {comment, "Correct"};
         {false, Err3} -> ct:fail(Err3) 
      end
   end.

%% A rename expression that renames an element from a directly constructed element node.
'id-rename-expr-01'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-209.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-209.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/id-rename-expr-01.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-209.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/id-rename-expr-01-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-209.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/RenameExpressions/id-rename-expr-01.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% A rename expression that renames an attribute from a directly constructed element node.
'id-rename-expr-02'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-210.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-210.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/id-rename-expr-02.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-210.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/id-rename-expr-02-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-210.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/RenameExpressions/id-rename-expr-02.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% A rename expression that renames a Processing Instruction.
'id-rename-expr-03'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-211.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-211.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/id-rename-expr-03.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-211.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/id-rename-expr-03-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-211.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/RenameExpressions/id-rename-expr-03.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% A rename expression that renames an element from an xml file.
'id-rename-expr-04'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-212.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-212.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/id-rename-expr-04.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-212.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/id-rename-expr-04-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-212.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/RenameExpressions/id-rename-expr-04.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% A rename expression that renames an attribute from an xml file.
'id-rename-expr-05'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-213.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-213.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/id-rename-expr-05.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-213.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/id-rename-expr-05-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-213.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/RenameExpressions/id-rename-expr-05.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% A rename expression where the target expression is an updating expression.
'id-rename-expr-06'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-214.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-214.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/id-rename-expr-06.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-214.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% A rename expression where the target expression results in a sequence of two nodes.
'id-rename-expr-07'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-215.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-215.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/id-rename-expr-07.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-215.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0012") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% A rename expression where the target expression is the empty sequence.
'id-rename-expr-08'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-216.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-216.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/id-rename-expr-08.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-216.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0027") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% A rename expression where the new name expression is the empty sequence.
'id-rename-expr-09'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-217.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-217.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/id-rename-expr-09.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-217.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XPTY0004") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% A rename expression where the new name expression is an updating expression.
'id-rename-expr-010'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-218.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-218.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/id-rename-expr-010.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-218.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, _} -> 
            case xqerl_test:assert_error(Res1,"XPTY0004") of 
               true -> {comment, "Correct error"};
               {false, Err1} ->  ct:fail(Err1) 
            end      end
   end.

%% A rename expression where the new name expression is build dynamically (fn:string-join function).
'id-rename-expr-011'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-219.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-219.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/id-rename-expr-011.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-219.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/id-rename-expr-011-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-219.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/RenameExpressions/id-rename-expr-011.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% A rename expression where the target expression evaluates to a number.
'id-rename-expr-012'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-220.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-220.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/id-rename-expr-012.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-220.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0012") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% A rename expression where the newname expression evaluates to a number.
'id-rename-expr-013'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-221.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-221.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/id-rename-expr-013.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-221.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XPTY0004") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% A rename expression where the target expression is a complex one.
'id-rename-expr-014'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-222.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-222.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/id-rename-expr-014.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-222.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/id-rename-expr-014-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-222.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/RenameExpressions/id-rename-expr-014.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% A rename expression where the target expression evaluates to a sequence of two attribute nodes.
'id-rename-expr-015'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-223.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-223.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/id-rename-expr-015.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-223.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0012") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% A rename expression, where the new name expression uses fn:concat function.
'id-rename-expr-016'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-224.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-224.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/id-rename-expr-016.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-224.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/id-rename-expr-016-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-224.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/RenameExpressions/id-rename-expr-016.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% A rename expression, where the new name expression uses fn:substring function.
'id-rename-expr-017'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-225.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-225.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/id-rename-expr-017.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-225.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/id-rename-expr-017-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-225.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/RenameExpressions/id-rename-expr-017.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% A rename expression, where the new name expression is a transform expression that returns a node. The fn:name function is used to retrieve the name of the node.
'id-rename-expr-018'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-226.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-226.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/id-rename-expr-018.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-226.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/id-rename-expr-018-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-226.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/RenameExpressions/id-rename-expr-018.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% A rename expression where the target expression is a comment node.
'id-rename-expr-019'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-227.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-227.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/id-rename-expr-019.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-227.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0012") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% A rename expression where the new name expression is a comment node.
'id-rename-expr-020'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-228.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-228.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/id-rename-expr-020.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-228.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XQDY0074") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Rename a document node.
'id-rename-expr-021'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-229.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-229.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/id-rename-expr-021.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-229.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0012") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Rename a text node.
'id-rename-expr-022'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-230.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-230.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/id-rename-expr-022.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-230.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0012") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Rename an element using a sequence.
'id-rename-expr-023'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-231.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-231.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/id-rename-expr-023.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-231.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XPTY0004") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Rename an element using a sequence.
'id-rename-expr-024'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-232.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-232.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/id-rename-expr-024.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-232.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XPTY0004") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Rename an attribute using a number.
'id-rename-expr-025'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-233.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-233.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/id-rename-expr-025.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-233.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XPTY0004") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Rename an attribute using an invalid NCName.
'id-rename-expr-026'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-234.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-234.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/id-rename-expr-026.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-234.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XQDY0074") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Rename an element using an invalid QName.
'id-rename-expr-027'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-235.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-235.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/id-rename-expr-027.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-235.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XQDY0074") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Rename an attribute using an invalid QName.
'id-rename-expr-028'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-236.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-236.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/id-rename-expr-028.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-236.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XQDY0074") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Rename an element using a QName.
'id-rename-expr-029'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-237.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-237.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/id-rename-expr-029.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-237.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/id-rename-expr-029-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-237.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/RenameExpressions/id-rename-expr-029.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Rename an attribute using a QName.
'id-rename-expr-030'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-238.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-238.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/id-rename-expr-030.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-238.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/id-rename-expr-030-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-238.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/RenameExpressions/id-rename-expr-030.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Rename an element using a QName.
'id-rename-expr-031'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-239.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-239.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/id-rename-expr-031.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-239.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/id-rename-expr-031-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-239.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/RenameExpressions/id-rename-expr-031.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Rename an attribute using a QName.
'id-rename-expr-032'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-240.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-240.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/id-rename-expr-032.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-240.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/id-rename-expr-032-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-240.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/RenameExpressions/id-rename-expr-032.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Check namepsace propogation when renaming an element.
'id-rename-expr-033'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-241.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-241.xml", source(__BaseDir, 'emptydoc')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/id-rename-expr-033.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/emptydoc-241.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/RenameExpressions/id-rename-expr-033a.txt")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Check namepsace propogation when renaming an attribute.
'id-rename-expr-034'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-242.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-242.xml", source(__BaseDir, 'emptydoc')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/id-rename-expr-034.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/emptydoc-242.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/RenameExpressions/id-rename-expr-034a.txt")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Check namepsace propogation when renaming an element.
'id-rename-expr-033-no-inherit'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-243.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-243.xml", source(__BaseDir, 'emptydoc')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/id-rename-expr-033-no-inherit.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/emptydoc-243.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/RenameExpressions/id-rename-expr-033-no-inherit.txt")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Check namepsace propogation when renaming an attribute.
'id-rename-expr-034-no-inherit'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-244.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-244.xml", source(__BaseDir, 'emptydoc')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/id-rename-expr-034-no-inherit.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/emptydoc-244.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/RenameExpressions/id-rename-expr-034-no-inherit.txt")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Rename an element to be in a namespace (the default namespace)
'id-rename-expr-035'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-245.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-245.xml", source(__BaseDir, 'emptydoc')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/id-rename-expr-035.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/emptydoc-245.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/RenameExpressions/id-rename-expr-035.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Rename an element to be in a namespace (with a prefix)
'id-rename-expr-036'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-246.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-246.xml", source(__BaseDir, 'emptydoc')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/id-rename-expr-036.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/emptydoc-246.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/RenameExpressions/id-rename-expr-036.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Rename an attribute to be in a namespace (with a prefix)
'id-rename-expr-037'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-247.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-247.xml", source(__BaseDir, 'emptydoc')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/id-rename-expr-037.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/emptydoc-247.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/RenameExpressions/id-rename-expr-037.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Rename all PIs with target "a-pi".
'complex-renames-q1'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-248.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-248.xml", source(__BaseDir, 'TopMany')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/complex-renames-q1.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-248.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/complex-renames-q1-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-248.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/RenameExpressions/complex-renames-q1.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end,
   begin
      F3 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/complex-renames-q1-test2.xq"),
      Ctx3 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-248.xml')")},
      Res3 = try
                Q3 = xqerl_code_server:compile(F3),
                xqerl:run(Q3, Ctx3)
             catch _:E3 -> E3 end,
      case xqerl_test:assert_xml(Res3,{file, filename:join(__BaseDir, "ExpectedTestResults/RenameExpressions/complex-renames-q1-2.xml")}) of
         true -> {comment, "Correct"};
         {false, Err3} -> ct:fail(Err3) 
      end
   end.

%% Rename the element called "far-east".
'complex-renames-q5'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-249.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-249.xml", source(__BaseDir, 'TopMany')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/complex-renames-q5.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-249.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/complex-renames-q5-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-249.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/RenameExpressions/complex-renames-q5.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end,
   begin
      F3 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/complex-renames-q5-test2.xq"),
      Ctx3 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-249.xml')")},
      Res3 = try
                Q3 = xqerl_code_server:compile(F3),
                xqerl:run(Q3, Ctx3)
             catch _:E3 -> E3 end,
      case xqerl_test:assert_xml(Res3,{file, filename:join(__BaseDir, "ExpectedTestResults/RenameExpressions/complex-renames-q5-2.xml")}) of
         true -> {comment, "Correct"};
         {false, Err3} -> ct:fail(Err3) 
      end
   end.

%% Rename all attributes called "mark".
'complex-renames-q6'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-250.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-250.xml", source(__BaseDir, 'TopMany')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/complex-renames-q6.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-250.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/complex-renames-q6-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-250.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/RenameExpressions/complex-renames-q6.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end,
   begin
      F3 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/complex-renames-q6-test2.xq"),
      Ctx3 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-250.xml')")},
      Res3 = try
                Q3 = xqerl_code_server:compile(F3),
                xqerl:run(Q3, Ctx3)
             catch _:E3 -> E3 end,
      case xqerl_test:assert_xml(Res3,{file, filename:join(__BaseDir, "ExpectedTestResults/RenameExpressions/complex-renames-q6-2.xml")}) of
         true -> {comment, "Correct"};
         {false, Err3} -> ct:fail(Err3) 
      end
   end.

%% Rename all attributes on the "west" element.
'complex-renames-q7'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-251.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-251.xml", source(__BaseDir, 'TopMany')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/complex-renames-q7.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-251.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/complex-renames-q7-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-251.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/RenameExpressions/complex-renames-q7.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end,
   begin
      F3 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/complex-renames-q7-test2.xq"),
      Ctx3 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-251.xml')")},
      Res3 = try
                Q3 = xqerl_code_server:compile(F3),
                xqerl:run(Q3, Ctx3)
             catch _:E3 -> E3 end,
      case xqerl_test:assert_xml(Res3,{file, filename:join(__BaseDir, "ExpectedTestResults/RenameExpressions/complex-renames-q7-2.xml")}) of
         true -> {comment, "Correct"};
         {false, Err3} -> ct:fail(Err3) 
      end
   end.

%% Rename the attributes names "west-attr-2", "center-attr-2", and "south-attr-2".
'complex-renames-q8'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-252.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-252.xml", source(__BaseDir, 'TopMany')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/complex-renames-q8.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-252.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/complex-renames-q8-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-252.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/RenameExpressions/complex-renames-q8.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end,
   begin
      F3 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/complex-renames-q8-test2.xq"),
      Ctx3 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-252.xml')")},
      Res3 = try
                Q3 = xqerl_code_server:compile(F3),
                xqerl:run(Q3, Ctx3)
             catch _:E3 -> E3 end,
      case xqerl_test:assert_xml(Res3,{file, filename:join(__BaseDir, "ExpectedTestResults/RenameExpressions/complex-renames-q8-2.xml")}) of
         true -> {comment, "Correct"};
         {false, Err3} -> ct:fail(Err3) 
      end
   end.

%% Evaluates a transform expression with modify clause set to empty sequence.
'id-transform-expr-01'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-253.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-253.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-01.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-253.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/TransformExpressions/id-transform-expr-01.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a transform expression with modify clause set to a delete expression.
'id-transform-expr-02'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-254.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-254.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-02.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-254.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/TransformExpressions/id-transform-expr-02.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a transform expression with modify clause set to a rename expression.
'id-transform-expr-03'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-255.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-255.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-03.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-255.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/TransformExpressions/id-transform-expr-03.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a transform expression with modify clause set to an insert expression.
'id-transform-expr-04'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-256.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-256.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-04.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-256.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/TransformExpressions/id-transform-expr-04.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a transform expression with modify clause set to a replace expression.
'id-transform-expr-05'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-257.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-257.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-05.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-257.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/TransformExpressions/id-transform-expr-05.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a transform expression where multiple element nodes are bounded.
'id-transform-expr-06'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-258.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-258.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-06.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-258.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0013") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a transform expression where an attribute is transformed.
'id-transform-expr-07'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-259.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-259.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-07.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-259.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/TransformExpressions/id-transform-expr-07.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a transform expression where a comment is transformed.
'id-transform-expr-08'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-260.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-260.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-08.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-260.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/TransformExpressions/id-transform-expr-08.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a transform expression where the modify clause contains a call to fn:error()
'id-transform-expr-09'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-261.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-261.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-09.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-261.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"FOER0000") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a transform expression where two variables are bounded and only one is transformed.
'id-transform-expr-010'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-262.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-262.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-010.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-262.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/TransformExpressions/id-transform-expr-010.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a transform expression where two variables are bounded and both are transformed.
'id-transform-expr-011'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-263.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-263.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-011.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-263.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/TransformExpressions/id-transform-expr-011.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a transform expression where the source expression is an updating expression.
'id-transform-expr-012'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-264.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-264.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-012.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-264.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a transform expression where the modify clause contains a non-updating expression.
'id-transform-expr-013'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-265.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-265.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-013.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-265.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0002") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a transform expression where the return expression contains an updating expression.
'id-transform-expr-014'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-266.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-266.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-014.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-266.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a transform expression the pending update list contains a node that was not created within this transform expression.
'id-transform-expr-015'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-267.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-267.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-015.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-267.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0014") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a transform expression, which inserts a node and deletes a node with the same name.
'id-transform-expr-016'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-268.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-268.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-016.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-268.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/TransformExpressions/id-transform-expr-016.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a transform expression, which deletes a node and insert a node with the same name.
'id-transform-expr-017'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-269.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-269.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-017.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-269.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/TransformExpressions/id-transform-expr-017.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a transform expression, which contains an embedded Transform expression.
'id-transform-expr-018'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-270.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-270.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-018.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-270.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0002") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a transform expression, where an element node is affected by more than one rename expression.
'id-transform-expr-019'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-271.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-271.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-019.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-271.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0015") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a transform expression, where an element node is affected by more than one replace expression (no "value of" being specified.
'id-transform-expr-020'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-272.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-272.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-020.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-272.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0016") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a transform expression, where an attribute node is affected by more than one rename expression.
'id-transform-expr-021'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-273.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-273.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-021.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-273.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0015") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a transform expression, where an attribute node is affected by more than one replace expression (no "value of" being specified.
'id-transform-expr-022'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-274.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-274.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-022.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-274.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0016") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a transform expression, where an attribute node is affected by more than one replace value expression.
'id-transform-expr-023'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-275.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-275.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-023.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-275.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0017") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a transform expression, where an element node is affected by more than one replace value expression.
'id-transform-expr-024'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-276.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-276.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-024.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-276.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0017") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a transform expression, where an Element is modified by a "replace" expression and of its children is also updated by a "replace with value of" expression.
'id-transform-expr-025'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-277.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-277.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-025.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-277.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/TransformExpressions/id-transform-expr-025.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a transform expression, where the source expression results in more than one single element node.
'id-transform-expr-026'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-278.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-278.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-026.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-278.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0013") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a transform expression, where the source expression results in more than one single attribute node.
'id-transform-expr-027'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-279.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-279.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-027.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-279.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0013") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a transform expression, which inserts a node to insure the original data is not modified.
'id-transform-expr-028'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-280.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-280.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-028.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-280.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-028-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-280.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/TransformExpressions/id-transform-expr-028.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates a transform expression, which deletes a node to insure the original data is not modified.
'id-transform-expr-029'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-281.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-281.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-029.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-281.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-029-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-281.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/TransformExpressions/id-transform-expr-029.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates a transform expression, which contains a replace expression to insure the original data is not modified.
'id-transform-expr-030'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-282.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-282.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-030.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-282.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-030-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-282.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/TransformExpressions/id-transform-expr-030.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates a transform expression, which contains a rename expression to insure the original data is not modified.
'id-transform-expr-031'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-283.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-283.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-031.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-283.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-031-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-283.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/TransformExpressions/id-transform-expr-031.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Transform with copy binding to an empty sequence.
'id-transform-expr-032'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-284.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-284.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-032.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-284.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0013") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Transform with copy binding to an empty sequence.
'id-transform-expr-033'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-285.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-285.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-033.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-285.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/TransformExpressions/id-transform-expr-033.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Transform a document.
'id-transform-expr-034'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-286.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-286.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-034.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-286.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/TransformExpressions/id-transform-expr-034.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Transform an attribute.
'id-transform-expr-035'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-287.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-287.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-035.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-287.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/TransformExpressions/id-transform-expr-035.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Transform a text node.
'id-transform-expr-036'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-288.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-288.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-036.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-288.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/TransformExpressions/id-transform-expr-036.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Transform a comment.
'id-transform-expr-037'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-289.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-289.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-037.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-289.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/TransformExpressions/id-transform-expr-037.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Transform a PI.
'id-transform-expr-038'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-290.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-290.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-038.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-290.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/TransformExpressions/id-transform-expr-038.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Transform two elements copied from the same element.
'id-transform-expr-039'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-291.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-291.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-039.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-291.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/TransformExpressions/id-transform-expr-039.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Transform a document by changing the namespaces of its elements.
'id-transform-expr-040'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-292.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-292.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-040.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-292.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/TransformExpressions/id-transform-expr-040.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Transform a document by changing the namespaces of its elements.
'id-transform-expr-041'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-293.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-293.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-041.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-293.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/TransformExpressions/id-transform-expr-041.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Copy clause creates a new element node.
'id-transform-expr-042'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/books-294.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/books-294.xml", source(__BaseDir, 'books')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-042.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/books-294.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/TransformExpressions/id-transform-expr-042.txt")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Copy clause changes the type of the new element node.
'id-transform-expr-043'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/books-295.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/books-295.xml", source(__BaseDir, 'books')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-043.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/books-295.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/TransformExpressions/id-transform-expr-043.txt")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Copy clause changes the nilled property of the new element node.
'id-transform-expr-044'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/books2-296.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/books2-296.xml", source(__BaseDir, 'books2')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-044.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/books2-296.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/TransformExpressions/id-transform-expr-044.txt")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Copy clause changes the is-idref property of the new element node.
'id-transform-expr-045'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/books2-297.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/books2-297.xml", source(__BaseDir, 'books2')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-045.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/books2-297.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/TransformExpressions/id-transform-expr-045.txt")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Copy clause changes the is-id property of the new element node.
'id-transform-expr-046'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/books2-298.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/books2-298.xml", source(__BaseDir, 'books2')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-046.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/books2-298.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/TransformExpressions/id-transform-expr-046.txt")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Copy clause changes the id property of a new attribute node.
'id-transform-expr-047'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/books-299.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/books-299.xml", source(__BaseDir, 'books')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-047.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/books-299.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/TransformExpressions/id-transform-expr-047.txt")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Copy clause changes the is-idrefs property of a new attribute node.
'id-transform-expr-048'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/books-300.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/books-300.xml", source(__BaseDir, 'books')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-048.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/books-300.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/TransformExpressions/id-transform-expr-048.txt")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Copy clause changes the type of a new attribute node.
'id-transform-expr-049'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/books-301.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/books-301.xml", source(__BaseDir, 'books')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-049.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/books-301.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/TransformExpressions/id-transform-expr-049.txt")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Copy clause changes the type of an xml:id attribute node, but not the is-id property.
'id-transform-expr-050'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/books-302.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/books-302.xml", source(__BaseDir, 'books')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-050.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/books-302.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/TransformExpressions/id-transform-expr-050.txt")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% The copy clause sometimes changes the in-scope-namespaces.
'id-transform-expr-051'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-303.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-303.xml", source(__BaseDir, 'emptydoc')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-051.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/emptydoc-303.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/TransformExpressions/id-transform-expr-051.txt")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% The copy clause sometimes changes the in-scope-namespaces.
'id-transform-expr-052'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-304.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-304.xml", source(__BaseDir, 'emptydoc')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-052.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/emptydoc-304.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/TransformExpressions/id-transform-expr-052.txt")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% The copy clause sometimes changes the in-scope-namespaces.
'id-transform-expr-053'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-305.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-305.xml", source(__BaseDir, 'emptydoc')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-053.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/emptydoc-305.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/TransformExpressions/id-transform-expr-053.txt")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% The copy clause sometimes changes the in-scope-namespaces.
'id-transform-expr-054'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-306.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-306.xml", source(__BaseDir, 'emptydoc')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-054.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/emptydoc-306.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/TransformExpressions/id-transform-expr-054.txt")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Within a transform, an element node is renamed more than once.
'id-transform-expr-055'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-307.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-307.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-055.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-307.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0015") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Within a transform, an attribute node is renamed more than once.
'id-transform-expr-056'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-308.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-308.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-056.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-308.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0015") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Within a transform, an element node is replaced more than once.
'id-transform-expr-057'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-309.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-309.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-057.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-309.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0016") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Within a transform, the value of an element node is replaced more than once.
'id-transform-expr-058'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-310.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-310.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TransformExpressions/id-transform-expr-058.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-310.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0017") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% An element node is renamed more than once.
'compatibility-001'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-311.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-311.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Compatibility/compatibility-001.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-311.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0015") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% An element node is renamed more than once.
'compatibility-002'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-312.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-312.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Compatibility/compatibility-002.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-312.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0015") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% An attribute node is renamed more than once.
'compatibility-003'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-313.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-313.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Compatibility/compatibility-003.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-313.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0015") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% An attribute node is renamed more than once.
'compatibility-004'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-314.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-314.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Compatibility/compatibility-004.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-314.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0015") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% A PI node is renamed more than once.
'compatibility-005'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-315.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-315.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Compatibility/compatibility-005.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-315.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0015") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% A PI node is renamed more than once.
'compatibility-006'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-316.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-316.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Compatibility/compatibility-006.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-316.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0015") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% An element node is replaced more than once.
'compatibility-007'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-317.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-317.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Compatibility/compatibility-007.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-317.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0016") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% An element node is replaced more than once.
'compatibility-008'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-318.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-318.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Compatibility/compatibility-008.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-318.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0016") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% An attribute node is replaced more than once.
'compatibility-009'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-319.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-319.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Compatibility/compatibility-009.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-319.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0016") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% An attribute node is replaced more than once.
'compatibility-010'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-320.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-320.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Compatibility/compatibility-010.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-320.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0016") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% An text node is replaced more than once.
'compatibility-011'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-321.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-321.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Compatibility/compatibility-011.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-321.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0016") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% An text node is replaced more than once.
'compatibility-012'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-322.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-322.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Compatibility/compatibility-012.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-322.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0016") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% An PI node is replaced more than once.
'compatibility-013'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-323.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-323.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Compatibility/compatibility-013.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-323.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0016") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% An PI node is replaced more than once.
'compatibility-014'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-324.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-324.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Compatibility/compatibility-014.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-324.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0016") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% A comment node is replaced more than once.
'compatibility-015'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-325.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-325.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Compatibility/compatibility-015.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-325.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0016") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% A comment node is replaced more than once.
'compatibility-016'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-326.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-326.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Compatibility/compatibility-016.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-326.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0016") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% The value of an element node is replaced more than once.
'compatibility-017'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-327.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-327.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Compatibility/compatibility-017.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-327.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0017") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% The value of an element node is replaced more than once.
'compatibility-018'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-328.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-328.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Compatibility/compatibility-018.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-328.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0017") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% The value of an attribute node is replaced more than once.
'compatibility-019'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-329.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-329.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Compatibility/compatibility-019.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-329.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0017") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% The value of an attribute node is replaced more than once.
'compatibility-020'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-330.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-330.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Compatibility/compatibility-020.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-330.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0017") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% The value of a text node is replaced more than once.
'compatibility-021'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-331.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-331.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Compatibility/compatibility-021.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-331.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0017") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% The value of a text node is replaced more than once.
'compatibility-022'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-332.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-332.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Compatibility/compatibility-022.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-332.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0017") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% The value of a PI node is replaced more than once.
'compatibility-023'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-333.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-333.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Compatibility/compatibility-023.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-333.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0017") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% The value of a PI node is replaced more than once.
'compatibility-024'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-334.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-334.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Compatibility/compatibility-024.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-334.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0017") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% The value of a comment node is replaced more than once.
'compatibility-025'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-335.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-335.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Compatibility/compatibility-025.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-335.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0017") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% The value of a comment node is replaced more than once.
'compatibility-026'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-336.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-336.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Compatibility/compatibility-026.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-336.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0017") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Replace and replace value of operate on the same element.
'compatibility-027'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-337.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-337.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Compatibility/compatibility-027.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-337.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/Compatibility/compatibility-027-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-337.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/Compatibility/compatibility-027.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Replace and replace value of operate on the same element.
'compatibility-028'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-338.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-338.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Compatibility/compatibility-028.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-338.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/Compatibility/compatibility-028-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-338.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/Compatibility/compatibility-028.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Replace value of and insert operate on the same element.
'compatibility-029'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-339.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-339.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Compatibility/compatibility-029.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-339.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/Compatibility/compatibility-029-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-339.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/Compatibility/compatibility-029.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Replace value of and insert operate on the same element.
'compatibility-030'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-340.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-340.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Compatibility/compatibility-030.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-340.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/Compatibility/compatibility-030-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-340.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/Compatibility/compatibility-030.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates an insert expression used with FLWOR expression where the let clause is an updating expression.
'id-flwor-expr-01'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-341.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-341.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/FLWORExpression/id-flwor-expr-01.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-341.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates an insert expression used with FLWOR expression where the for clause is an updating expression.
'id-flwor-expr-02'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-342.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-342.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/FLWORExpression/id-flwor-expr-02.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-342.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates an insert expression used with FLWOR expression where the "where" clause is an updating expression.
'id-flwor-expr-03'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-343.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-343.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/FLWORExpression/id-flwor-expr-03.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-343.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates an insert expression used with FLWOR expression where the "order by" clause is an updating expression.
'id-flwor-expr-04'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-344.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-344.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/FLWORExpression/id-flwor-expr-04.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-344.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a delete expression used with FLWOR expression where the let clause is an updating expression.
'id-flwor-expr-05'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-345.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-345.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/FLWORExpression/id-flwor-expr-05.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-345.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a delete expression used with FLWOR expression where the for clause is an updating expression.
'id-flwor-expr-06'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-346.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-346.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/FLWORExpression/id-flwor-expr-06.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-346.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a delete expression used with FLWOR expression where the "where" clause is an updating expression.
'id-flwor-expr-07'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-347.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-347.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/FLWORExpression/id-flwor-expr-07.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-347.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a delete expression used with FLWOR expression where the "order by" clause is an updating expression.
'id-flwor-expr-08'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-348.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-348.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/FLWORExpression/id-flwor-expr-08.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-348.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a replace expression used with FLOWR expression with "let" clause set to an updating (replace) expression.
'id-flwor-expr-09'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-349.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-349.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/FLWORExpression/id-flwor-expr-09.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-349.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a replace expression used with FLOWR expression with "for" clause set to an updating (replace) expression.
'id-flwor-expr-010'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-350.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-350.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/FLWORExpression/id-flwor-expr-010.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-350.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a replace expression used with FLOWR expression with "where" clause set to an updating (replace) expression.
'id-flwor-expr-011'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-351.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-351.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/FLWORExpression/id-flwor-expr-011.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-351.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a replace expression used with FLOWR expression with "order by" clause set to an updating (replace) expression.
'id-flwor-expr-012'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-352.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-352.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/FLWORExpression/id-flwor-expr-012.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-352.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of a rename expression use with FLWOR expression where let clause is an updating expression.
'id-flwor-expr-013'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-353.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-353.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/FLWORExpression/id-flwor-expr-013.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-353.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of a rename expression use with FLWOR expression where the "for" clause is an updating expression.
'id-flwor-expr-014'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-354.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-354.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/FLWORExpression/id-flwor-expr-014.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-354.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of a rename expression use with FLWOR expression where the "where" clause is an updating expression.
'id-flwor-expr-015'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-355.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-355.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/FLWORExpression/id-flwor-expr-015.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-355.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of a rename expression use with FLWOR expression where the "order by" clause is an updating expression.
'id-flwor-expr-016'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-356.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-356.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/FLWORExpression/id-flwor-expr-016.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-356.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a transform expression together with a FLWOR expression where the "let" expression is a transform expression.
'id-flwor-expr-017'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-357.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-357.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/FLWORExpression/id-flwor-expr-017.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-357.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/FLWORExpression/id-flwor-expr-017.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a transform expression together with a FLWOR expression where the "for" expression is a non updating (transform) expression.
'id-flwor-expr-018'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-358.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-358.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/FLWORExpression/id-flwor-expr-018.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-358.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/FLWORExpression/id-flwor-expr-018.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a transform expression together with a FLWOR expression where the "where" expression is an non updating (transform) expression.
'id-flwor-expr-019'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-359.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-359.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/FLWORExpression/id-flwor-expr-019.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-359.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/FLWORExpression/id-flwor-expr-019.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a transform expression together with a FLWOR expression where the "order by" expression is a non updating (transform) expression.
'id-flwor-expr-020'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-360.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-360.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/FLWORExpression/id-flwor-expr-020.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-360.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/FLWORExpression/id-flwor-expr-020.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of a FLWOR expression, where return is a delete expression that deletes a series nodes bounded via let clause.
'id-flwor-expr-021'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-361.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-361.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/FLWORExpression/id-flwor-expr-021.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-361.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/FLWORExpression/id-flwor-expr-021-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-361.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/FLWORExpression/id-flwor-expr-021.txt")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluation of a FLWOR expression, where return is a delete expression that deletes a series nodes bounded via for clause.
'id-flwor-expr-022'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-362.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-362.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/FLWORExpression/id-flwor-expr-022.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-362.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/FLWORExpression/id-flwor-expr-022-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-362.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/FLWORExpression/id-flwor-expr-022.txt")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% For clause that contains a for expression with a simple return clause.
'id-flwor-expr-023'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-363.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-363.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/FLWORExpression/id-flwor-expr-023.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-363.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/FLWORExpression/id-flwor-expr-023.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% For clause that contains a for expression with a updating return clause.
'id-flwor-expr-024'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-364.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-364.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/FLWORExpression/id-flwor-expr-024.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-364.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% For clause that contains a for expression with a vacuous return clause.
'id-flwor-expr-025'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-365.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-365.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/FLWORExpression/id-flwor-expr-025.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-365.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/FLWORExpression/id-flwor-expr-025.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates an insert expression used with typeswitch expression where the operand is an updating expression.
'id-typeswitch-expr-01'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-366.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-366.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TypeswitchExpression/id-typeswitch-expr-01.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-366.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates an insert expression used with typeswitch expression where a branch (a "case") is an updating expression. Other branches return ().
'id-typeswitch-expr-02'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-367.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-367.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TypeswitchExpression/id-typeswitch-expr-02.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-367.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/TypeswitchExpression/id-typeswitch-expr-02-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-367.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case lists:any(fun(true) -> true; (_) -> false end, [
         xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/TypeswitchExpression/id-typeswitch-expr-02.xml")}),
         xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/TypeswitchExpression/id-typeswitch-expr-02a.xml")})]) of 
         true -> {comment, "Correct"};
         false -> ct:fail(Res2)
      end
   end.

%% Evaluates an insert expression used with typeswitch expression where a branch (the "default") is an updating expression. Other branches return ().
'id-typeswitch-expr-03'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-368.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-368.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TypeswitchExpression/id-typeswitch-expr-03.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-368.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/TypeswitchExpression/id-typeswitch-expr-03-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-368.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case lists:any(fun(true) -> true; (_) -> false end, [
         xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/TypeswitchExpression/id-typeswitch-expr-03.xml")}),
         xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/TypeswitchExpression/id-typeswitch-expr-03a.xml")})]) of 
         true -> {comment, "Correct"};
         false -> ct:fail(Res2)
      end
   end.

%% Evaluates an insert expression used with typeswitch expression where a branch (a "case") is an updating expression. Other branches return fn:error().
'id-typeswitch-expr-04'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-369.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-369.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TypeswitchExpression/id-typeswitch-expr-04.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-369.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/TypeswitchExpression/id-typeswitch-expr-04-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-369.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/TypeswitchExpression/id-typeswitch-expr-04.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates an insert expression used with typeswitch expression where a branch (the "default") is an updating expression. Other branches return fn:error().
'id-typeswitch-expr-05'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-370.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-370.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TypeswitchExpression/id-typeswitch-expr-05.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-370.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"FOER0000") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates an insert expression used with typeswitch expression where a branch (a "case") is an updating expression. Other branches return a string.
'id-typeswitch-expr-06'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-371.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-371.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TypeswitchExpression/id-typeswitch-expr-06.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-371.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates an insert expression used with typeswitch expression where a branch (the "default") is an updating expression. Other branches return a string.
'id-typeswitch-expr-07'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-372.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-372.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TypeswitchExpression/id-typeswitch-expr-07.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-372.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a delete expression used with typeswitch expression where the operand is an updating expression.
'id-typeswitch-expr-08'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-373.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-373.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TypeswitchExpression/id-typeswitch-expr-08.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-373.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a delete expression used with typeswitch expression where a branch (a case) is an updating expression. The other branches are set to "()".
'id-typeswitch-expr-09'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-374.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-374.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TypeswitchExpression/id-typeswitch-expr-09.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-374.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/TypeswitchExpression/id-typeswitch-expr-09-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-374.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/TypeswitchExpression/id-typeswitch-expr-09.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates a delete expression used with typeswitch expression where a branch (the default) is an updating expression. The other branches are set to "()".
'id-typeswitch-expr-010'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-375.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-375.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TypeswitchExpression/id-typeswitch-expr-010.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-375.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/TypeswitchExpression/id-typeswitch-expr-010-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-375.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/TypeswitchExpression/id-typeswitch-expr-010.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluation of insert expression used with typeswitch expression where branch (a "case") is an updating expression. All other branches return "fn:error()".
'id-typeswitch-expr-011'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-376.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-376.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TypeswitchExpression/id-typeswitch-expr-011.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-376.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/TypeswitchExpression/id-typeswitch-expr-011-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-376.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case lists:any(fun(true) -> true; (_) -> false end, [
         xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/TypeswitchExpression/id-typeswitch-expr-011.xml")}),
         xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/TypeswitchExpression/id-typeswitch-expr-011-2.xml")})]) of 
         true -> {comment, "Correct"};
         false -> ct:fail(Res2)
      end
   end.

%% Evaluation of insert expression used with typeswitch expression where branch (the "default") is an updating expression. All other branches return "fn:error()".
'id-typeswitch-expr-012'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-377.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-377.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TypeswitchExpression/id-typeswitch-expr-012.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-377.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"FOER0000") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of insert expression used with typeswitch expression where branch (the "case") is an updating expression. All other branches return a string.
'id-typeswitch-expr-013'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-378.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-378.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TypeswitchExpression/id-typeswitch-expr-013.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-378.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of insert expression used with typeswitch expression where branch (the "default") is an updating expression. All other branches return string.
'id-typeswitch-expr-014'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-379.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-379.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TypeswitchExpression/id-typeswitch-expr-014.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-379.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a replace expression used together with a typeswitch expression where the operand is an updating (replace) expression.
'id-typeswitch-expr-015'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-380.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-380.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TypeswitchExpression/id-typeswitch-expr-015.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-380.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a replace expression used together with a typeswitch expression where a branch (a case) is an updating (replace) expression. Other branches are the empty sequence.
'id-typeswitch-expr-016'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-381.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-381.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TypeswitchExpression/id-typeswitch-expr-016.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-381.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/TypeswitchExpression/id-typeswitch-expr-016-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-381.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/TypeswitchExpression/id-typeswitch-expr-016.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates a replace expression used together with a typeswitch expression where a branch (the default) is an updating (replace) expression. Other branches are the empty sequence.
'id-typeswitch-expr-017'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-382.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-382.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TypeswitchExpression/id-typeswitch-expr-017.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-382.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/TypeswitchExpression/id-typeswitch-expr-017-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-382.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/TypeswitchExpression/id-typeswitch-expr-017.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates a replace expression used together with a typeswitch expression where a branch (a case) is an updating (replace) expression. Other branches are a call to the fn:error function.
'id-typeswitch-expr-018'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-383.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-383.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TypeswitchExpression/id-typeswitch-expr-018.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-383.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/TypeswitchExpression/id-typeswitch-expr-018-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-383.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/TypeswitchExpression/id-typeswitch-expr-018.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates a replace expression used together with a typeswitch expression where a branch (the default) is an updating (replace) expression. Other branches are a call to the fn:error function.
'id-typeswitch-expr-019'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-384.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-384.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TypeswitchExpression/id-typeswitch-expr-019.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-384.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/TypeswitchExpression/id-typeswitch-expr-019-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-384.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/TypeswitchExpression/id-typeswitch-expr-019.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates a replace expression used together with a typeswitch expression where a branch (a case) is an updating (replace) expression. Other branches return a string.
'id-typeswitch-expr-020'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-385.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-385.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TypeswitchExpression/id-typeswitch-expr-020.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-385.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a replace expression used together with a typeswitch expression where a branch (the default) is an updating (transform) expression. Other branches return a string.
'id-typeswitch-expr-021'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-386.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-386.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TypeswitchExpression/id-typeswitch-expr-021.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-386.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of a rename expression use with a typeswitch expression where the operand is an updating expression.
'id-typeswitch-expr-022'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-387.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-387.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TypeswitchExpression/id-typeswitch-expr-022.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-387.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of a rename expression use with a typeswitch expression where a branch (a case) is an updating expression. Other branches equal to the empty sequence
'id-typeswitch-expr-023'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-388.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-388.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TypeswitchExpression/id-typeswitch-expr-023.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-388.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/TypeswitchExpression/id-typeswitch-expr-023-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-388.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/TypeswitchExpression/id-typeswitch-expr-023.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluation of a rename expression use with a typeswitch expression where a branch (the default) is an updating expression. Other branches equal to the empty sequence.
'id-typeswitch-expr-024'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-389.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-389.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TypeswitchExpression/id-typeswitch-expr-024.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-389.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/TypeswitchExpression/id-typeswitch-expr-024-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-389.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/TypeswitchExpression/id-typeswitch-expr-024.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluation of a rename expression use with a typeswitch expression where a branch (a case) is an updating expression. Other branches are an invokation to "fn:error()"
'id-typeswitch-expr-025'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-390.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-390.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TypeswitchExpression/id-typeswitch-expr-025.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-390.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/TypeswitchExpression/id-typeswitch-expr-025-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-390.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/TypeswitchExpression/id-typeswitch-expr-025.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluation of a rename expression use with a typeswitch expression where a branch (the default) is an updating expression. Other branches are an invokation to "fn:error()"
'id-typeswitch-expr-026'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-391.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-391.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TypeswitchExpression/id-typeswitch-expr-026.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-391.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"FOER0000") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of a rename expression use with a typeswitch expression a branch (a case)is an updating expression. Other branches return a string
'id-typeswitch-expr-027'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-392.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-392.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TypeswitchExpression/id-typeswitch-expr-027.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-392.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of a rename expression use with a typeswitch expression a branch (the default)is an updating expression. Other branches return a string
'id-typeswitch-expr-028'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-393.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-393.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TypeswitchExpression/id-typeswitch-expr-028.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-393.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a transform expression together with a typeswitch expression where the operand is a non updating (transform) expression.
'id-typeswitch-expr-029'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-394.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-394.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TypeswitchExpression/id-typeswitch-expr-029.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-394.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/TypeswitchExpression/id-typeswitch-expr-029.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a transform expression together with a typeswitch expression where a branch (a case) is an updating (transform) expression. Other branches are "()"
'id-typeswitch-expr-030'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-395.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-395.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TypeswitchExpression/id-typeswitch-expr-030.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-395.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/TypeswitchExpression/id-typeswitch-expr-030.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a transform expression together with a typeswitch expression where a branch (the default) is an updating (transform) expression. Other branches are "()".
'id-typeswitch-expr-031'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-396.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-396.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TypeswitchExpression/id-typeswitch-expr-031.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-396.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/TypeswitchExpression/id-typeswitch-expr-031.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a transform expression together with a typeswitch expression where a branch (a case) is a non updating (transform) expression and the other cases an invokation to fn:error.
'id-typeswitch-expr-032'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-397.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-397.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TypeswitchExpression/id-typeswitch-expr-032.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-397.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/TypeswitchExpression/id-typeswitch-expr-032.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a transform expression together with a typeswitch expression where a branch (the default)is a non updating (transform) expression and the other cases an invokation to fn:error.
'id-typeswitch-expr-033'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-398.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-398.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TypeswitchExpression/id-typeswitch-expr-033.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-398.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/TypeswitchExpression/id-typeswitch-expr-033.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a transform expression together with a typeswitch expression where a branch (a case)is an updating (transform) and the other branches return a string.
'id-typeswitch-expr-034'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-399.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-399.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TypeswitchExpression/id-typeswitch-expr-034.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-399.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/TypeswitchExpression/id-typeswitch-expr-034.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a transform expression together with a typeswitch expression where a branch (the default)is an updating (transform) and the other branches return a string.
'id-typeswitch-expr-035'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-400.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-400.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TypeswitchExpression/id-typeswitch-expr-035.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-400.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/TypeswitchExpression/id-typeswitch-expr-035.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Updating typeswitch expression in an updating typeswitch expression.
'id-typeswitch-expr-036'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-401.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-401.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TypeswitchExpression/id-typeswitch-expr-036.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-401.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/TypeswitchExpression/id-typeswitch-expr-036-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-401.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/TypeswitchExpression/id-typeswitch-expr-036.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Vacuous typeswitch expression in an updating typeswitch expression.
'id-typeswitch-expr-037'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-402.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-402.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TypeswitchExpression/id-typeswitch-expr-037.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-402.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/TypeswitchExpression/id-typeswitch-expr-037-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-402.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/TypeswitchExpression/id-typeswitch-expr-037.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Simple typeswitch expression in an updating typeswitch expression.
'id-typeswitch-expr-038'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-403.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-403.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/TypeswitchExpression/id-typeswitch-expr-038.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-403.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates an insert expression used with conditional expression where a branch (the "then") is an updating expression. Other branch return ().
'id-conditional-expr-01'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-404.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-404.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ConditionalExpression/id-conditional-expr-01.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-404.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ConditionalExpression/id-conditional-expr-01-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-404.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/ConditionalExpression/id-conditional-expr-01.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates an insert expression used with conditional expression where a branch (the "else") is an updating expression. Other branch returns ().
'id-conditional-expr-02'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-405.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-405.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ConditionalExpression/id-conditional-expr-02.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-405.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ConditionalExpression/id-conditional-expr-02-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-405.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/ConditionalExpression/id-conditional-expr-02.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates an insert expression used with conditional expression where a branch (the "then") is an updating expression. Other branch calls fn:error().
'id-conditional-expr-03'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-406.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-406.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ConditionalExpression/id-conditional-expr-03.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-406.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ConditionalExpression/id-conditional-expr-03-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-406.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/ConditionalExpression/id-conditional-expr-03.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates an insert expression used with conditional expression where a branch (the "else") is an updating expression. Other branch calls fn:error().
'id-conditional-expr-04'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-407.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-407.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ConditionalExpression/id-conditional-expr-04.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-407.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ConditionalExpression/id-conditional-expr-04-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-407.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/ConditionalExpression/id-conditional-expr-04.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates an insert expression used with conditional expression where a branch (the "then") is an updating expression. Other branch print a string.
'id-conditional-expr-05'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-408.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-408.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ConditionalExpression/id-conditional-expr-05.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-408.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates an insert expression used with conditional expression where a branch (the "else") is an updating expression. Other branch print a string.
'id-conditional-expr-06'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-409.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-409.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ConditionalExpression/id-conditional-expr-06.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-409.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of a delete expression used with conditional expression where a branch (the "then") is an updating expression. The "else" returns the empty sequence.
'id-conditional-expr-07'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-410.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-410.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ConditionalExpression/id-conditional-expr-07.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-410.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ConditionalExpression/id-conditional-expr-07-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-410.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/ConditionalExpression/id-conditional-expr-07.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluation of a delete expression used with conditional expression where a branch (the "else") is an updating expression. The "then" returns the empty sequence.
'id-conditional-expr-08'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-411.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-411.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ConditionalExpression/id-conditional-expr-08.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-411.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ConditionalExpression/id-conditional-expr-08-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-411.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/ConditionalExpression/id-conditional-expr-08.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluation of a delete expression used with conditional expression where a branch (the "then") is an updating expression. The "else" returns fn:error().
'id-conditional-expr-09'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-412.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-412.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ConditionalExpression/id-conditional-expr-09.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-412.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ConditionalExpression/id-conditional-expr-09-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-412.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/ConditionalExpression/id-conditional-expr-09.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluation of a delete expression used with conditional expression where a branch (the "else") is an updating expression. The "then" returns fn:error().
'id-conditional-expr-010'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-413.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-413.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ConditionalExpression/id-conditional-expr-010.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-413.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ConditionalExpression/id-conditional-expr-010-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-413.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/ConditionalExpression/id-conditional-expr-010.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluation of a delete expression used with conditional expression where a branch (the "then") is an updating expression. The "else" print a string
'id-conditional-expr-011'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-414.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-414.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ConditionalExpression/id-conditional-expr-011.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-414.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of a delete expression used with conditional expression where a branch (the "else") is an updating expression. The "then" print a string
'id-conditional-expr-012'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-415.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-415.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ConditionalExpression/id-conditional-expr-012.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-415.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a replace expression used together with a conditional expression where a branch (the "then") is an updating (replace) expression. The "else" return the empty sequence.
'id-conditional-expr-013'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-416.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-416.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ConditionalExpression/id-conditional-expr-013.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-416.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ConditionalExpression/id-conditional-expr-013-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-416.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/ConditionalExpression/id-conditional-expr-013.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates a replace expression used together with a conditional expression where a branch (the "else") is an updating (replace) expression. The "then" return the empty sequence.
'id-conditional-expr-014'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-417.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-417.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ConditionalExpression/id-conditional-expr-014.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-417.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ConditionalExpression/id-conditional-expr-014-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-417.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/ConditionalExpression/id-conditional-expr-014.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates a replace expression used together with a conditional expression where a branch (the "then") is an updating (replace) expression. The "else" invokes the fn:error function.
'id-conditional-expr-015'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-418.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-418.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ConditionalExpression/id-conditional-expr-015.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-418.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ConditionalExpression/id-conditional-expr-015-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-418.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/ConditionalExpression/id-conditional-expr-015.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates a replace expression used together with a conditional expression where a branch (the "else") is an updating (replace) expression. The "then" invokes the fn:error function.
'id-conditional-expr-016'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-419.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-419.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ConditionalExpression/id-conditional-expr-016.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-419.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ConditionalExpression/id-conditional-expr-016-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-419.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/ConditionalExpression/id-conditional-expr-016.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates a replace expression used together with a conditional expression where a branch (the then) is an updating (replace) expression. The "else" just return a string.
'id-conditional-expr-017'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-420.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-420.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ConditionalExpression/id-conditional-expr-017.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-420.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a replace expression used together with a conditional expression where a branch (the else) is an updating (replace) expression. The "then" just return a string.
'id-conditional-expr-018'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-421.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-421.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ConditionalExpression/id-conditional-expr-018.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-421.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of a rename expression used with a conditional expression where a branch (the "then") is an updating expression. The "else" returns the empty sequence.
'id-conditional-expr-019'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-422.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-422.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ConditionalExpression/id-conditional-expr-019.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-422.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ConditionalExpression/id-conditional-expr-019-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-422.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/ConditionalExpression/id-conditional-expr-019.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluation of a rename expression used with a conditional expression where a branch (the "else") is an updating expression. The "then" returns the empty sequence.
'id-conditional-expr-020'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-423.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-423.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ConditionalExpression/id-conditional-expr-020.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-423.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ConditionalExpression/id-conditional-expr-020-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-423.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/ConditionalExpression/id-conditional-expr-020.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluation of a rename expression used with a conditional expression where a branch (the "then") is an updating expression. The "else" invokes the fn:error function.
'id-conditional-expr-021'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-424.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-424.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ConditionalExpression/id-conditional-expr-021.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-424.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ConditionalExpression/id-conditional-expr-021-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-424.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/ConditionalExpression/id-conditional-expr-021.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluation of a rename expression used with a conditional expression where a branch (the "else") is an updating expression. The "then" invokes the fn:error function.
'id-conditional-expr-022'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-425.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-425.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ConditionalExpression/id-conditional-expr-022.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-425.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ConditionalExpression/id-conditional-expr-022-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-425.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/ConditionalExpression/id-conditional-expr-022.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluation of rename expression used with conditional expression where a branch (the "then") is an updating expression. The "else" prints a string.
'id-conditional-expr-023'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-426.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-426.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ConditionalExpression/id-conditional-expr-023.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-426.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of a rename expression used with conditional expression where a branch (the "else") is an updating expression. The "then" print a string.
'id-conditional-expr-024'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-427.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-427.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ConditionalExpression/id-conditional-expr-024.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-427.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a transform expression together with a conditional expression where a branch (the "then")is an updating (transform) and the "else" returns the empty sequence.
'id-conditional-expr-025'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-428.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-428.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ConditionalExpression/id-conditional-expr-025.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-428.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/ConditionalExpression/id-conditional-expr-025.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a transform expression together with a conditional expression where a branch (the "else")is an updating (transform) and the "then" returns the empty sequence.
'id-conditional-expr-026'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-429.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-429.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ConditionalExpression/id-conditional-expr-026.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-429.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/ConditionalExpression/id-conditional-expr-026.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a transform expression together with a conditional expression where a branch (the "then")is an updating (transform) and the "else" is an invokation to fn:error().
'id-conditional-expr-027'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-430.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-430.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ConditionalExpression/id-conditional-expr-027.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-430.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/ConditionalExpression/id-conditional-expr-027.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a transform expression together with a conditional expression where a branch (the "else")is an updating (transform) and the "then" is an invokation to fn:error().
'id-conditional-expr-028'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-431.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-431.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ConditionalExpression/id-conditional-expr-028.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-431.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/ConditionalExpression/id-conditional-expr-028.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a transform expression together with a conditional expression where a branch (the "then")is an non updating (transform) and the "else" returns a string.
'id-conditional-expr-029'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-432.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-432.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ConditionalExpression/id-conditional-expr-029.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-432.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/ConditionalExpression/id-conditional-expr-029.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a transform expression together with a conditional expression where a branch (the "else")is a non updating (transform) and the "then" return a string.
'id-conditional-expr-030'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-433.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-433.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ConditionalExpression/id-conditional-expr-030.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-433.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/ConditionalExpression/id-conditional-expr-030.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a transform expression together with a conditional expression where the if-clause is an non-updating (transform) expression.
'id-conditional-expr-031'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-434.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-434.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ConditionalExpression/id-conditional-expr-031.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-434.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/ConditionalExpression/id-conditional-expr-031.txt")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a transform expression together with a conditional expression where the if-clause is an updating (delete) expression.
'id-conditional-expr-032'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-435.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-435.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ConditionalExpression/id-conditional-expr-032.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-435.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a conditional expression, where both branches are updating expressions (delete). Both delete the same node (only one is selected).
'id-conditional-expr-033'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-436.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-436.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ConditionalExpression/id-conditional-expr-033.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-436.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ConditionalExpression/id-conditional-expr-033-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-436.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/ConditionalExpression/id-conditional-expr-033.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates a conditional expression, where the if branch contains a delete expression and the else branch contains transform expression.
'id-conditional-expr-034'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-437.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-437.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ConditionalExpression/id-conditional-expr-034.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-437.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a conditional expression, where both branches contains a transform expression.
'id-conditional-expr-035'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-438.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-438.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ConditionalExpression/id-conditional-expr-035.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-438.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/ConditionalExpression/id-conditional-expr-035.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Updating conditional expression in a conditional expression.
'id-conditional-expr-036'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-439.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-439.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ConditionalExpression/id-conditional-expr-036.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-439.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ConditionalExpression/id-conditional-expr-036-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-439.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/ConditionalExpression/id-conditional-expr-036.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Vacuous conditional expression in a conditional expression.
'id-conditional-expr-037'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-440.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-440.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ConditionalExpression/id-conditional-expr-037.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-440.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ConditionalExpression/id-conditional-expr-037-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-440.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/ConditionalExpression/id-conditional-expr-037.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Simple conditional expression in a conditional expression.
'id-conditional-expr-038'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-441.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-441.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ConditionalExpression/id-conditional-expr-038.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-441.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates an insert expression used with comma expression where a both expressions are updating expressions.
'id-comma-expr-01'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-442.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-442.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/CommaExpression/id-comma-expr-01.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-442.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/CommaExpression/id-comma-expr-01-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-442.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/CommaExpression/id-comma-expr-01.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates an insert expression used with comma expression where first expression is an updating expression and second one is ().
'id-comma-expr-02'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-443.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-443.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/CommaExpression/id-comma-expr-02.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-443.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/CommaExpression/id-comma-expr-02-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-443.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/CommaExpression/id-comma-expr-02.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates an insert expression used with comma expression where first expression is () and second expression is an updating expression.
'id-comma-expr-03'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-444.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-444.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/CommaExpression/id-comma-expr-03.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-444.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/CommaExpression/id-comma-expr-03-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-444.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/CommaExpression/id-comma-expr-03.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates an insert expression used with comma expression where first expression is an updating expression and second one is call to fn:error().
'id-comma-expr-04'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-445.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-445.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/CommaExpression/id-comma-expr-04.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-445.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"FOER0000") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/CommaExpression/id-comma-expr-04-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-445.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/CommaExpression/id-comma-expr-04.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates an insert expression used with comma expression where first expression is a call to fn:error() and second expression is an updating expression.
'id-comma-expr-05'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-446.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-446.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/CommaExpression/id-comma-expr-05.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-446.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"FOER0000") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/CommaExpression/id-comma-expr-05-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-446.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/CommaExpression/id-comma-expr-05.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluates an insert expression used with comma expression where first expression is an updating expression and second one a mathematical expression.
'id-comma-expr-06'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-447.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-447.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/CommaExpression/id-comma-expr-06.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-447.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates an insert expression used with comma expression where first expression is mathematical expression and second one is an updating expression.
'id-comma-expr-07'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-448.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-448.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/CommaExpression/id-comma-expr-07.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-448.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation a delete expression used with comma expression where both expressions are updating expressions.
'id-comma-expr-08'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-449.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-449.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/CommaExpression/id-comma-expr-08.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-449.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/CommaExpression/id-comma-expr-08-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-449.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/CommaExpression/id-comma-expr-08.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluation of a delete expression used with comma expression where first expression is an updating expression and the secon one is ().
'id-comma-expr-09'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-450.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-450.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/CommaExpression/id-comma-expr-09.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-450.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/CommaExpression/id-comma-expr-09-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-450.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/CommaExpression/id-comma-expr-09.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluation of a delete expression used with comma expression where first expression is () and second expression is an updating expression.
'id-comma-expr-010'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-451.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-451.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/CommaExpression/id-comma-expr-010.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-451.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/CommaExpression/id-comma-expr-010-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-451.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/CommaExpression/id-comma-expr-010.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluation of a delete expression used with comma expression where first expression is an updating expression and the second one a call to fn:error().
'id-comma-expr-011'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-452.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-452.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/CommaExpression/id-comma-expr-011.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-452.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"FOER0000") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of a delete expression used with comma expression where second expression is an updating expression and the first one a call to fn:error().
'id-comma-expr-012'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-453.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-453.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/CommaExpression/id-comma-expr-012.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-453.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"FOER0000") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of a delete expression used with comma expression where first expression is an updating expression and the second one is a mathematical expression.
'id-comma-expr-013'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-454.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-454.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/CommaExpression/id-comma-expr-013.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-454.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of a delete expression used with comma expression where first expression is a mathematical expression and the second one is an updating expression.
'id-comma-expr-014'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-455.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-455.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/CommaExpression/id-comma-expr-014.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-455.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of a replace expression used with comma expression where both expressions are updating (replace) expressions.
'id-comma-expr-015'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-456.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-456.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/CommaExpression/id-comma-expr-015.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-456.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/CommaExpression/id-comma-expr-015-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-456.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/CommaExpression/id-comma-expr-015.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluation of a replace expression used with comma expression where first expression is an updating (replace) expression and the second one is ().
'id-comma-expr-016'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-457.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-457.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/CommaExpression/id-comma-expr-016.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-457.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/CommaExpression/id-comma-expr-016-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-457.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/CommaExpression/id-comma-expr-016.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluation of a replace expression used with comma expression where first expression is the empty sequence and the second one is an updating (replace) expression.
'id-comma-expr-017'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-458.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-458.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/CommaExpression/id-comma-expr-017.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-458.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/CommaExpression/id-comma-expr-017-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-458.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/CommaExpression/id-comma-expr-017.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluation of a replace expression used with comma expression where first expression is an updating (replace) expression and the second one a call to fn:error().
'id-comma-expr-018'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-459.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-459.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/CommaExpression/id-comma-expr-018.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-459.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"FOER0000") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of a replace expression used with comma expression where first expression is a call to fn:error() and the second one is an updating (replace) expression.
'id-comma-expr-019'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-460.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-460.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/CommaExpression/id-comma-expr-019.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-460.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"FOER0000") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of a replace expression used with comma expression where first expression is an updating (replace) expression and the second one is a mathematical expression.
'id-comma-expr-020'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-461.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-461.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/CommaExpression/id-comma-expr-020.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-461.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of a replace expression used with comma expression where first expression is a mathematical expression and second one is an updating (replace) expression.
'id-comma-expr-021'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-462.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-462.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/CommaExpression/id-comma-expr-021.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-462.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of rename expression used with comma expression where both expressions are updating expressions.
'id-comma-expr-022'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-463.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-463.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/CommaExpression/id-comma-expr-022.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-463.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/CommaExpression/id-comma-expr-022-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-463.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/CommaExpression/id-comma-expr-022.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluation of a rename expression used with comma expression where first expression is an updating expression and the second one is ().
'id-comma-expr-023'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-464.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-464.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/CommaExpression/id-comma-expr-023.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-464.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/CommaExpression/id-comma-expr-023-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-464.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/CommaExpression/id-comma-expr-023.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluation of a rename expression used with comma expression where first expression is () and second expression is an updating expression.
'id-comma-expr-024'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-465.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-465.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/CommaExpression/id-comma-expr-024.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-465.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/CommaExpression/id-comma-expr-024-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-465.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/CommaExpression/id-comma-expr-024.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Evaluation of a rename expression used with comma expression where first expression is an updating expression and the second one a call to fn:error().
'id-comma-expr-025'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-466.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-466.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/CommaExpression/id-comma-expr-025.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-466.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"FOER0000") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of a rename expression used with comma expression where first expression is a call to fn:error() and the second one updating expression.
'id-comma-expr-026'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-467.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-467.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/CommaExpression/id-comma-expr-026.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-467.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"FOER0000") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of a rename expression used with comma expression where first expression is an updating expression and the second one is a mathematical expression.
'id-comma-expr-027'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-468.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-468.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/CommaExpression/id-comma-expr-027.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-468.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of a rename expression used with comma expression where first expression is a mathematical expression and second one is an updating expression.
'id-comma-expr-028'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-469.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-469.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/CommaExpression/id-comma-expr-028.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-469.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a transform expression together with a comma expression where both expressions are non-updating (transform) expressions.
'id-comma-expr-029'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-470.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-470.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/CommaExpression/id-comma-expr-029.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-470.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/CommaExpression/id-comma-expr-029.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a transform expression together with a comma expression where the first expression is an non-updating (transform) expression. The second one is the empty sequence.
'id-comma-expr-030'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-471.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-471.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/CommaExpression/id-comma-expr-030.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-471.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/CommaExpression/id-comma-expr-030.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a transform expression together with a comma expression where the first expression is the empty sequence and the second one is an non-updating (transform) expression.
'id-comma-expr-031'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-472.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-472.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/CommaExpression/id-comma-expr-031.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-472.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/CommaExpression/id-comma-expr-031.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a transform expression together with a comma expression where the first expression is an non-updating (transform) expression and the second one an invokation to "fn:error()".
'id-comma-expr-032'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-473.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-473.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/CommaExpression/id-comma-expr-032.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-473.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"FOER0000") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a transform expression together with a comma expression where the first expression is an invokation to "fn:error()" and the second one is an non-updating (transform) expression.
'id-comma-expr-033'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-474.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-474.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/CommaExpression/id-comma-expr-033.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-474.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"FOER0000") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a transform expression together with a comma expression where the first expression is an non-updating (transform) expression and the second one is a mathematical expression.
'id-comma-expr-034'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-475.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-475.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/CommaExpression/id-comma-expr-034.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-475.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/CommaExpression/id-comma-expr-034.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a transform expression together with a comma expression where the first expression is a mathematical expression and the second one is an non-updating (transform) expression.
'id-comma-expr-035'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-476.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-476.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/CommaExpression/id-comma-expr-035.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-476.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/CommaExpression/id-comma-expr-035.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Updating comma expression in a conditional expression.
'id-comma-expr-036'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-477.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-477.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/CommaExpression/id-comma-expr-036.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-477.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/CommaExpression/id-comma-expr-036-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-477.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/CommaExpression/id-comma-expr-036.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Vacuous comma expression in a conditional expression.
'id-comma-expr-037'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-478.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-478.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/CommaExpression/id-comma-expr-037.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-478.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/CommaExpression/id-comma-expr-037-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-478.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/CommaExpression/id-comma-expr-037.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Simple comma expression in a conditional expression.
'id-comma-expr-038'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-479.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-479.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/CommaExpression/id-comma-expr-038.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-479.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Parenthesized simple expression.
'parenthesized-expr-01'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-480.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-480.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ParenthesizedExpressions/parenthesized-expr-01.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-480.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/ParenthesizedExpressions/parenthesized-expr-01.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Parenthesized updating expression.
'parenthesized-expr-02'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-481.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-481.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ParenthesizedExpressions/parenthesized-expr-02.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-481.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Parenthesized vacuous expression.
'parenthesized-expr-03'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-482.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-482.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ParenthesizedExpressions/parenthesized-expr-03.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-482.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/ParenthesizedExpressions/parenthesized-expr-03.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates an insert expression as an parameter to a function call.
'id-function-call-01'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-483.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-483.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/FunctionCall/id-function-call-01.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-483.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a delete expression as a parameter to a function call.
'id-function-call-02'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-484.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-484.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/FunctionCall/id-function-call-02.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-484.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a replace expression as a parameter to a function call.
'id-function-call-03'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-485.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-485.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/FunctionCall/id-function-call-03.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-485.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a rename expression as a parameter to a function call.
'id-function-call-04'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-486.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-486.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/FunctionCall/id-function-call-04.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-486.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a transform expression as a parameter to a function call.
'id-function-call-05'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-487.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-487.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/FunctionCall/id-function-call-05.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-487.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/FunctionCall/id-function-call-05.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates a function call than contains two parameters, one updating (rename) and an integer.
'id-function-call-06'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-488.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-488.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/FunctionCall/id-function-call-06.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-488.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates usage of an updating expression (delete) in initializing expression for variable declaration.
'id-other-expr-01'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-489.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-489.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/OtherExpressions/id-other-expr-01.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-489.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates usage of an updating expression (insert) in initializing expression for variable declaration.
'id-other-expr-02'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-490.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-490.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/OtherExpressions/id-other-expr-02.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-490.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates usage of an updating expression (rename) in initializing expression for variable declaration.
'id-other-expr-03'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-491.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-491.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/OtherExpressions/id-other-expr-03.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-491.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates usage of an updating expression (replace) in initializing expression for variable declaration.
'id-other-expr-04'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-492.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-492.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/OtherExpressions/id-other-expr-04.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-492.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates usage of an non-updating expression (transform) in initializing expression for variable declaration.
'id-other-expr-05'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-493.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-493.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/OtherExpressions/id-other-expr-05.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-493.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/OtherExpressions/id-other-expr-05.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates usage of an updating expression (delete) as part of a logical (and) expression and usage of fn:true() function.
'id-other-expr-06'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-494.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-494.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/OtherExpressions/id-other-expr-06.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-494.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates usage of an updating expression (delete) as part of a logical (or) expression and usage of fn:true() function.
'id-other-expr-07'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-495.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-495.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/OtherExpressions/id-other-expr-07.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-495.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates usage of an updating expression (delete) as part of a logical (and) expression and usage of fn:false() function.
'id-other-expr-08'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-496.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-496.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/OtherExpressions/id-other-expr-08.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-496.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates usage of an updating expression (delete) as part of a logical (or) expression and usage of fn:false() function.
'id-other-expr-09'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-497.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-497.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/OtherExpressions/id-other-expr-09.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-497.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates usage of an updating expression (rename) as part of a logical (and) expression and usage of fn:true() function.
'id-other-expr-010'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-498.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-498.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/OtherExpressions/id-other-expr-010.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-498.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates usage of an updating expression (replace) as part of a logical (and) expression and usage of fn:true() function.
'id-other-expr-011'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-499.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-499.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/OtherExpressions/id-other-expr-011.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-499.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates usage of an updating expression (insert) as part of a logical (and) expression and usage of fn:true() function.
'id-other-expr-012'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-500.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-500.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/OtherExpressions/id-other-expr-012.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-500.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates usage of an non updating expression (transform) as part of a logical (and) expression and usage of fn:true() function.
'id-other-expr-013'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-501.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-501.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/OtherExpressions/id-other-expr-013.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-501.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/OtherExpressions/id-other-expr-013.txt")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates usage of an updating expression (rename) as part of a Node Comparison (is) expression.
'id-other-expr-014'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-502.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-502.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/OtherExpressions/id-other-expr-014.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-502.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates usage of an updating expression (delete) as part of a Node Comparison (is) expression.
'id-other-expr-015'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-503.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-503.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/OtherExpressions/id-other-expr-015.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-503.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates usage of an updating expression (replace) as part of a Node Comparison (is) expression.
'id-other-expr-016'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-504.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-504.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/OtherExpressions/id-other-expr-016.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-504.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates usage of an non updating expression (transform) as part of a node comparison (is) expression.
'id-other-expr-017'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-505.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-505.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/OtherExpressions/id-other-expr-017.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-505.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/OtherExpressions/id-other-expr-017.txt")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates usage of an non updating expression (transform) as part of a node comparison (is) expression (both operands are transform expressions).
'id-other-expr-018'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-506.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-506.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/OtherExpressions/id-other-expr-018.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-506.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/OtherExpressions/id-other-expr-018.txt")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates usage of an updating expression (insert) as part of a Node Comparison (is) expression.
'id-other-expr-019'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-507.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-507.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/OtherExpressions/id-other-expr-019.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-507.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates usage of an updating expression (insert) as part of a Value Comparison (eq operator) expression.
'id-other-expr-020'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-508.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-508.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/OtherExpressions/id-other-expr-020.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-508.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates usage of an updating expression (rename) as part of a Value Comparison (ne operator) expression.
'id-other-expr-021'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-509.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-509.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/OtherExpressions/id-other-expr-021.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-509.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates usage of an updating expression (rename) as part of a Value Comparison (gt operator) expression.
'id-other-expr-022'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-510.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-510.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/OtherExpressions/id-other-expr-022.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-510.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates usage of an updating expression (rename) as part of a Value Comparison (lt operator) expression.
'id-other-expr-023'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-511.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-511.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/OtherExpressions/id-other-expr-023.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-511.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates usage of an updating expression (rename) as part of a Value Comparison (le operator) expression.
'id-other-expr-024'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-512.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-512.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/OtherExpressions/id-other-expr-024.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-512.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates usage of an updating expression (rename) as part of a Value Comparison (ge operator) expression.
'id-other-expr-025'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-513.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-513.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/OtherExpressions/id-other-expr-025.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-513.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates usage of an updating expression (delete) as part of a sequence expression (union operator).
'id-other-expr-26'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-514.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-514.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/OtherExpressions/id-other-expr-026.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-514.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates usage of an updating expression (delete) as part of a sequence expression (intersect operator).
'id-other-expr-027'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-515.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-515.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/OtherExpressions/id-other-expr-027.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-515.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates usage of an updating expression (delete) as part of a sequence expression (except operator).
'id-other-expr-028'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-516.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-516.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/OtherExpressions/id-other-expr-028.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-516.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates usage of a non updating expression (transform) as part of a sequence expression (union operator).
'id-other-expr-029'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-517.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-517.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/OtherExpressions/id-other-expr-029.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-517.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case lists:any(fun(true) -> true; (_) -> false end, [
         xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/OtherExpressions/id-other-expr-029.xml")}),
         xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/OtherExpressions/id-other-expr-029-2.xml")})]) of 
         true -> {comment, "Correct"};
         false -> ct:fail(Res1)
      end
   end.

%% Evaluates usage of a non updating expression (transform) as part of a sequence expression (intersect operator).
'id-other-expr-030'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-518.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-518.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/OtherExpressions/id-other-expr-030.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-518.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/OtherExpressions/id-other-expr-030.txt")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates usage of a non updating expression (transform) as part of a sequence expression (except operator).
'id-other-expr-031'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-519.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-519.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/OtherExpressions/id-other-expr-031.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-519.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/OtherExpressions/id-other-expr-031.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluates usage of an updating expression (delete) as part of a range expression.
'id-other-expr-032'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-520.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employeesNIST-520.xml", source(__BaseDir, 'employeesNIST')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/OtherExpressions/id-other-expr-032.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employeesNIST-520.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Store a document.
'fn-put-001'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/putOutput-521.xml"),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Put/fn-put-001.xq"),
      Ctx1 = #{<<"input-URI">> => {xqAtomicValue, 'xs:anyURI', <<"http://xqerl.org/tests/XQUTS/1.0/putOutput-521.xml">>}},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/Put/fn-put-001-test.xq"),
      Ctx2 = #{<<"input-URI">> => {xqAtomicValue, 'xs:anyURI', <<"http://xqerl.org/tests/XQUTS/1.0/putOutput-521.xml">>}},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/Put/fn-put-001.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Bad URI as argument to fn:put.
'fn-put-007'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-522.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-522.xml", source(__BaseDir, 'emptydoc')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Put/fn-put-007.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/emptydoc-522.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"FOUP0002") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Check that fn:put is an updating function.
'fn-put-008'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/putOutput-523.xml"),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Put/fn-put-008.xq"),
      Ctx1 = #{<<"input-URI">> => {xqAtomicValue, 'xs:anyURI', <<"http://xqerl.org/tests/XQUTS/1.0/putOutput-523.xml">>}},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Check that fn:put is an updating function.
'fn-put-009'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-524.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-524.xml", source(__BaseDir, 'works-mod')),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/putOutput-524.xml"),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Put/fn-put-009.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-524.xml')"),
              <<"input-URI">> => {xqAtomicValue, 'xs:anyURI', <<"http://xqerl.org/tests/XQUTS/1.0/putOutput-524.xml">>}},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/Put/fn-put-009a-test.xq"),
      Ctx2 = #{<<"input-URI">> => {xqAtomicValue, 'xs:anyURI', <<"http://xqerl.org/tests/XQUTS/1.0/putOutput-524.xml">>}},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/Put/fn-put-009a.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end,
   begin
      F3 = filename:join(__BaseDir, "Queries/XQuery/Put/fn-put-009b-test.xq"),
      Ctx3 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-524.xml')")},
      Res3 = try
                Q3 = xqerl_code_server:compile(F3),
                xqerl:run(Q3, Ctx3)
             catch _:E3 -> E3 end,
      case xqerl_test:assert_xml(Res3,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/Put/fn-put-009b.xml")}) of
         true -> {comment, "Correct"};
         {false, Err3} -> ct:fail(Err3) 
      end
   end.

%% Check that fn:put does not become effective until after completion of the snapshot.
'fn-put-011'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-525.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-525.xml", source(__BaseDir, 'works-mod')),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/putOutput-525.xml"),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Put/fn-put-011.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-525.xml')"),
              <<"input-URI">> => {xqAtomicValue, 'xs:anyURI', <<"http://xqerl.org/tests/XQUTS/1.0/putOutput-525.xml">>}},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"FODC0002") of 
         true -> {comment, "Correct error"};
         {false, _} -> 
            case xqerl_test:assert_error(Res1,"FODC0005") of 
               true -> {comment, "Correct error"};
               {false, Err1} ->  ct:fail(Err1) 
            end      end
   end.

%% Multiple invocations of fn:put on the same URI.
'fn-put-012'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/putOutput-526.xml"),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Put/fn-put-012.xq"),
      Ctx1 = #{<<"input-URI">> => {xqAtomicValue, 'xs:anyURI', <<"http://xqerl.org/tests/XQUTS/1.0/putOutput-526.xml">>}},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0031") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Multiple invocations of fn:put on different URIs.
'fn-put-013'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/putOutput-527.xml"),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/putOutput2-527.xml"),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Put/fn-put-013.xq"),
      Ctx1 = #{<<"input-URI">> => {xqAtomicValue, 'xs:anyURI', <<"http://xqerl.org/tests/XQUTS/1.0/putOutput-527.xml">>},
              <<"input-URI-2">> => {xqAtomicValue, 'xs:anyURI', <<"http://xqerl.org/tests/XQUTS/1.0/putOutput2-527.xml">>}},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/Put/fn-put-013a-test.xq"),
      Ctx2 = #{<<"input-URI">> => {xqAtomicValue, 'xs:anyURI', <<"http://xqerl.org/tests/XQUTS/1.0/putOutput-527.xml">>}},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/Put/fn-put-013a.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end,
   begin
      F3 = filename:join(__BaseDir, "Queries/XQuery/Put/fn-put-013b-test.xq"),
      Ctx3 = #{<<"input-URI-2">> => {xqAtomicValue, 'xs:anyURI', <<"http://xqerl.org/tests/XQUTS/1.0/putOutput2-527.xml">>}},
      Res3 = try
                Q3 = xqerl_code_server:compile(F3),
                xqerl:run(Q3, Ctx3)
             catch _:E3 -> E3 end,
      case xqerl_test:assert_xml(Res3,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/Put/fn-put-013b.xml")}) of
         true -> {comment, "Correct"};
         {false, Err3} -> ct:fail(Err3) 
      end
   end.

%% Multiple invocations of fn:put on the same URI.
'fn-put-014'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/putOutput-528.xml"),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Put/fn-put-014.xq"),
      Ctx1 = #{<<"input-URI">> => {xqAtomicValue, 'xs:anyURI', <<"http://xqerl.org/tests/XQUTS/1.0/putOutput-528.xml">>}},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0031") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% simple test of fn:put function
'put-001'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/putOutput-529.xml"),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Put/put-001.xq"),
      Ctx1 = #{<<"input-URI">> => {xqAtomicValue, 'xs:anyURI', <<"http://xqerl.org/tests/XQUTS/1.0/putOutput-529.xml">>}},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/Put/put-001-test.xq"),
      Ctx2 = #{<<"input-URI">> => {xqAtomicValue, 'xs:anyURI', <<"http://xqerl.org/tests/XQUTS/1.0/putOutput-529.xml">>}},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/Put/put-001.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Store an element.
'fn-put-002'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/putOutput-530.xml"),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Put/fn-put-002.xq"),
      Ctx1 = #{<<"input-URI">> => {xqAtomicValue, 'xs:anyURI', <<"http://xqerl.org/tests/XQUTS/1.0/putOutput-530.xml">>}},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/Put/fn-put-002-test.xq"),
      Ctx2 = #{<<"input-URI">> => {xqAtomicValue, 'xs:anyURI', <<"http://xqerl.org/tests/XQUTS/1.0/putOutput-530.xml">>}},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/Put/fn-put-002.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Check that fn:put is an updating function.
'fn-put-010'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-531.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-531.xml", source(__BaseDir, 'works-mod')),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/putOutput-531.xml"),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Put/fn-put-010.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-531.xml')"),
              <<"input-URI">> => {xqAtomicValue, 'xs:anyURI', <<"http://xqerl.org/tests/XQUTS/1.0/putOutput-531.xml">>}},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/Put/fn-put-010a-test.xq"),
      Ctx2 = #{<<"input-URI">> => {xqAtomicValue, 'xs:anyURI', <<"http://xqerl.org/tests/XQUTS/1.0/putOutput-531.xml">>}},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/Put/fn-put-010a.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end,
   begin
      F3 = filename:join(__BaseDir, "Queries/XQuery/Put/fn-put-010b-test.xq"),
      Ctx3 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-531.xml')")},
      Res3 = try
                Q3 = xqerl_code_server:compile(F3),
                xqerl:run(Q3, Ctx3)
             catch _:E3 -> E3 end,
      case xqerl_test:assert_xml(Res3,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/Put/fn-put-010b.xml")}) of
         true -> {comment, "Correct"};
         {false, Err3} -> ct:fail(Err3) 
      end
   end.

%% 
'attribute-errors-q1'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-532.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-532.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdatePrimitives/AttributeErrors/attribute-errors-q1.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-532.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0021") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% 
'attribute-errors-q2'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-533.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-533.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdatePrimitives/AttributeErrors/attribute-errors-q2.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-533.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0021") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% 
'attribute-errors-q3'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-534.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-534.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdatePrimitives/AttributeErrors/attribute-errors-q3.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-534.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0021") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% 
'attribute-errors-q4'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-535.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-535.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdatePrimitives/AttributeErrors/attribute-errors-q4.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-535.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0021") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% 
'attribute-errors-q5'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-536.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-536.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdatePrimitives/AttributeErrors/attribute-errors-q5.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-536.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0021") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% 
'attribute-errors-q6'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-537.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-537.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdatePrimitives/AttributeErrors/attribute-errors-q6.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-537.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0021") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% 
'attribute-errors-q7'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-538.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-538.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdatePrimitives/AttributeErrors/attribute-errors-q7.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-538.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0021") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% 
'attribute-errors-q8'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-539.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-539.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdatePrimitives/AttributeErrors/attribute-errors-q8.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-539.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/UpdatePrimitives/AttributeErrors/attribute-errors-q8-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-539.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/UpdatePrimitives/AttributeErrors/attribute-errors-q8.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% 
'attribute-errors-q9'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-540.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-540.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdatePrimitives/AttributeErrors/attribute-errors-q9.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-540.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0021") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% 
'attribute-errors-q10'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-541.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-541.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdatePrimitives/AttributeErrors/attribute-errors-q10.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-541.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0021") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% 
'attribute-errors-q11'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-542.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-542.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdatePrimitives/AttributeErrors/attribute-errors-q11.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-542.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/UpdatePrimitives/AttributeErrors/attribute-errors-q11-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-542.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/UpdatePrimitives/AttributeErrors/attribute-errors-q11.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% 
'attribute-errors-q12'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-543.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-543.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdatePrimitives/AttributeErrors/attribute-errors-q12.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-543.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0021") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% 
'attribute-errors-q13'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-544.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-544.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdatePrimitives/AttributeErrors/attribute-errors-q13.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-544.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0021") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% 
'attribute-errors-q14'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-545.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-545.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdatePrimitives/AttributeErrors/attribute-errors-q14.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-545.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/UpdatePrimitives/AttributeErrors/attribute-errors-q14.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% 
'attribute-errors-q15'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-546.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-546.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdatePrimitives/AttributeErrors/attribute-errors-q15.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-546.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0021") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% 
'attribute-errors-q16'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-547.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-547.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdatePrimitives/AttributeErrors/attribute-errors-q16.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-547.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0021") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% 
'attribute-errors-q17'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-548.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-548.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdatePrimitives/AttributeErrors/attribute-errors-q17.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-548.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0021") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Insert after of attribute with implicit namespace binding that clashes.
'namespace-errors-q1'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/grant-549.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/grant-549.xml", source(__BaseDir, 'grant')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdatePrimitives/NamespaceErrors/namespace-errors-q1.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/grant-549.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0023") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Insert of attribute with implicit namespace binding that clashes.
'namespace-errors-q2'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/grant-550.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/grant-550.xml", source(__BaseDir, 'grant')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdatePrimitives/NamespaceErrors/namespace-errors-q2.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/grant-550.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0023") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Insert as first of attribute with implicit namespace binding that clashes.
'namespace-errors-q3'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/grant-551.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/grant-551.xml", source(__BaseDir, 'grant')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdatePrimitives/NamespaceErrors/namespace-errors-q3.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/grant-551.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0023") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Rename of no namespace element with implicit namespace binding that clashes.
'namespace-errors-q4'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/grant-552.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/grant-552.xml", source(__BaseDir, 'grant')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdatePrimitives/NamespaceErrors/namespace-errors-q4.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/grant-552.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0023") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Rename of namespaced element with implicit namespace binding that clashes.
'namespace-errors-q5'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/grant-553.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/grant-553.xml", source(__BaseDir, 'grant')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdatePrimitives/NamespaceErrors/namespace-errors-q5.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/grant-553.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0023") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Rename of attribute with implicit namespace binding that clashes.
'namespace-errors-q6'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/grant-554.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/grant-554.xml", source(__BaseDir, 'grant')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdatePrimitives/NamespaceErrors/namespace-errors-q6.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/grant-554.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0023") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Replace of attribute with implicit namespace binding that clashes.
'namespace-errors-q7'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/grant-555.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/grant-555.xml", source(__BaseDir, 'grant')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdatePrimitives/NamespaceErrors/namespace-errors-q7.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/grant-555.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0023") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Replace of attribute with muliple attributes, one of which has an implicit namespace binding that clashes.
'namespace-errors-q8'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/grant-556.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/grant-556.xml", source(__BaseDir, 'grant')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdatePrimitives/NamespaceErrors/namespace-errors-q8.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/grant-556.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0023") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Multiple inserts of attribute with implicit namespace binding that clashes.
'namespace-errors-q9'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/grant-557.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/grant-557.xml", source(__BaseDir, 'grant')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdatePrimitives/NamespaceErrors/namespace-errors-q9.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/grant-557.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0024") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Insert and replace of attributes with implicit namespace binding that clashes.
'namespace-errors-q10'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/grant-558.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/grant-558.xml", source(__BaseDir, 'grant')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdatePrimitives/NamespaceErrors/namespace-errors-q10.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/grant-558.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0024") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Multiple replaces of attributes with implicit namespace binding that clashes.
'namespace-errors-q11'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/grant-559.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/grant-559.xml", source(__BaseDir, 'grant')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdatePrimitives/NamespaceErrors/namespace-errors-q11.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/grant-559.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0024") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Replace and rename of attributes with implicit namespace binding that clashes.
'namespace-errors-q12'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/grant-560.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/grant-560.xml", source(__BaseDir, 'grant')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdatePrimitives/NamespaceErrors/namespace-errors-q12.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/grant-560.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0024") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Two renames of attributes with implicit namespace binding that clashes.
'namespace-errors-q13'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/grant-561.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/grant-561.xml", source(__BaseDir, 'grant')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdatePrimitives/NamespaceErrors/namespace-errors-q13.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/grant-561.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0024") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Rename and insert of attributes with implicit namespace binding that clashes.
'namespace-errors-q14'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/grant-562.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/grant-562.xml", source(__BaseDir, 'grant')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdatePrimitives/NamespaceErrors/namespace-errors-q14.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/grant-562.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0024") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Rename of element and insert of attribute with implicit namespace binding that clashes.
'namespace-errors-q15'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/grant-563.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/grant-563.xml", source(__BaseDir, 'grant')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdatePrimitives/NamespaceErrors/namespace-errors-q15.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/grant-563.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0024") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Rename of element with non-prefixed implicit namespace binding that does not clash.
'namespace-errors-q16'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/grant-564.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/grant-564.xml", source(__BaseDir, 'grant')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdatePrimitives/NamespaceErrors/namespace-errors-q16.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/grant-564.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/UpdatePrimitives/NamespaceErrors/namespace-errors-q16-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/grant-564.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/UpdatePrimitives/NamespaceErrors/namespace-errors-q16.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Insert new attributes with implicit namespace bindings that clash.
'namespace-errors-q17'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/grant-565.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/grant-565.xml", source(__BaseDir, 'grant')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdatePrimitives/NamespaceErrors/namespace-errors-q17.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/grant-565.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0024") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Insert new attributes with implicit namespace bindings that clash.
'namespace-errors-q18'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/grant-566.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/grant-566.xml", source(__BaseDir, 'grant')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdatePrimitives/NamespaceErrors/namespace-errors-q18.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/grant-566.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0024") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Replace introduces new attributes with implicit namespace bindings that clash.
'namespace-errors-q19'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/grant-567.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/grant-567.xml", source(__BaseDir, 'grant')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdatePrimitives/NamespaceErrors/namespace-errors-q19.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/grant-567.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0024") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Multiple operations that add non-conflicting namespace bindings to a node.
'mergeUpdates-001'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-568.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-568.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdateRoutines/mergeUpdates/mergeUpdates-001.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-568.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/UpdateRoutines/mergeUpdates/mergeUpdates-001-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-568.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/UpdateRoutines/mergeUpdates/mergeUpdates-001.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Multiple operations that add conflicting namespace bindings to a node.
'mergeUpdates-002'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-569.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-569.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdateRoutines/mergeUpdates/mergeUpdates-002.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-569.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0024") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Apply insertInto then delete.
'applyUpdates-001'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-570.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-570.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdateRoutines/applyUpdates/applyUpdates-001.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-570.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/UpdateRoutines/applyUpdates/applyUpdates-001-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-570.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/UpdateRoutines/applyUpdates/applyUpdates-001.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Apply insertInto then delete.
'applyUpdates-002'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-571.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-571.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdateRoutines/applyUpdates/applyUpdates-002.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-571.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/UpdateRoutines/applyUpdates/applyUpdates-002-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-571.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/UpdateRoutines/applyUpdates/applyUpdates-002.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Apply insertBefore then replaceNode.
'applyUpdates-003'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-572.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-572.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdateRoutines/applyUpdates/applyUpdates-003.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-572.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/UpdateRoutines/applyUpdates/applyUpdates-003-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-572.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/UpdateRoutines/applyUpdates/applyUpdates-003.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Apply insertBefore then replaceNode.
'applyUpdates-004'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-573.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-573.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdateRoutines/applyUpdates/applyUpdates-004.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-573.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/UpdateRoutines/applyUpdates/applyUpdates-004-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-573.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/UpdateRoutines/applyUpdates/applyUpdates-004.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Apply insertAsFirst then replaceElementContent.
'applyUpdates-005'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-574.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-574.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdateRoutines/applyUpdates/applyUpdates-005.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-574.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/UpdateRoutines/applyUpdates/applyUpdates-005-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-574.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/UpdateRoutines/applyUpdates/applyUpdates-005.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Apply insertAsFirst then replaceElementContent.
'applyUpdates-006'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-575.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-575.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdateRoutines/applyUpdates/applyUpdates-006.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-575.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/UpdateRoutines/applyUpdates/applyUpdates-006-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-575.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/UpdateRoutines/applyUpdates/applyUpdates-006.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Apply replaceNode then delete.
'applyUpdates-007'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-576.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-576.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdateRoutines/applyUpdates/applyUpdates-007.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-576.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/UpdateRoutines/applyUpdates/applyUpdates-007-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-576.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/UpdateRoutines/applyUpdates/applyUpdates-007.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Apply replaceNode then delete.
'applyUpdates-008'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-577.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-577.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdateRoutines/applyUpdates/applyUpdates-008.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-577.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/UpdateRoutines/applyUpdates/applyUpdates-008-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-577.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/UpdateRoutines/applyUpdates/applyUpdates-008.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Apply multiple operations to the same node.
'applyUpdates-009'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-578.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-578.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdateRoutines/applyUpdates/applyUpdates-009.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-578.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/UpdateRoutines/applyUpdates/applyUpdates-009-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-578.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/UpdateRoutines/applyUpdates/applyUpdates-009.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Apply multiple operations to the same node.
'applyUpdates-010'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-579.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-579.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdateRoutines/applyUpdates/applyUpdates-010.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-579.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/UpdateRoutines/applyUpdates/applyUpdates-010-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-579.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/UpdateRoutines/applyUpdates/applyUpdates-010.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Delete elements and merge text nodes.
'applyUpdates-011'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-580.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-580.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdateRoutines/applyUpdates/applyUpdates-011.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-580.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/UpdateRoutines/applyUpdates/applyUpdates-011-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-580.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/UpdateRoutines/applyUpdates/applyUpdates-011.txt")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Delete the content of a text node.
'applyUpdates-012'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-581.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-581.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdateRoutines/applyUpdates/applyUpdates-012.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-581.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/UpdateRoutines/applyUpdates/applyUpdates-012-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-581.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/UpdateRoutines/applyUpdates/applyUpdates-012.txt")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Insert and delete attributes with the same name.
'applyUpdates-013'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-582.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-582.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdateRoutines/applyUpdates/applyUpdates-013.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-582.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/UpdateRoutines/applyUpdates/applyUpdates-013-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-582.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/UpdateRoutines/applyUpdates/applyUpdates-013.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Insert and delete attributes with the same name.
'applyUpdates-014'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-583.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-583.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdateRoutines/applyUpdates/applyUpdates-014.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-583.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/UpdateRoutines/applyUpdates/applyUpdates-014-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-583.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/UpdateRoutines/applyUpdates/applyUpdates-014.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Check atomicity with a good operation and a bad operation.
'applyUpdates-016'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-584.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-584.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdateRoutines/applyUpdates/applyUpdates-016.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-584.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/UpdateRoutines/applyUpdates/applyUpdates-016-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-584.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/UpdateRoutines/applyUpdates/applyUpdates-016.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Insert and rename attributes with the same name.
'applyUpdates-021'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-585.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-585.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdateRoutines/applyUpdates/applyUpdates-021.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-585.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/UpdateRoutines/applyUpdates/applyUpdates-021-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-585.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/UpdateRoutines/applyUpdates/applyUpdates-021.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Insert and replace attributes with the same name.
'applyUpdates-022'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-586.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-586.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdateRoutines/applyUpdates/applyUpdates-022.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-586.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/UpdateRoutines/applyUpdates/applyUpdates-022-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-586.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/UpdateRoutines/applyUpdates/applyUpdates-022.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Insert two attributes with the same name and delete the containing element.
'applyUpdates-023'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-587.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-587.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdateRoutines/applyUpdates/applyUpdates-023.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-587.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0021") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Insert two attributes with the same name and delete the containing element's parent.
'applyUpdates-024'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-588.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-588.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdateRoutines/applyUpdates/applyUpdates-024.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-588.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0021") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Swap the names of two attribute nodes.
'applyUpdates-025'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-589.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-589.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdateRoutines/applyUpdates/applyUpdates-025.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-589.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/UpdateRoutines/applyUpdates/applyUpdates-025-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-589.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/UpdateRoutines/applyUpdates/applyUpdates-025.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Rename one attribute node, replace another.
'applyUpdates-026'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-590.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/works-mod-590.xml", source(__BaseDir, 'works-mod')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdateRoutines/applyUpdates/applyUpdates-026.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-590.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/UpdateRoutines/applyUpdates/applyUpdates-026-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/works-mod-590.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/UpdateRoutines/applyUpdates/applyUpdates-026.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Check that all properties are set correctly by upd:setToUntyped.
'setToUntyped-001'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/books2-591.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/books2-591.xml", source(__BaseDir, 'books2')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdateRoutines/setToUntyped/setToUntyped-001.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/books2-591.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/UpdateRoutines/setToUntyped/setToUntyped-001.txt")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Check that all properties are set correctly by upd:setToUntyped.
'setToUntyped-002'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/books2-592.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/books2-592.xml", source(__BaseDir, 'books2')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdateRoutines/setToUntyped/setToUntyped-002.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/books2-592.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/UpdateRoutines/setToUntyped/setToUntyped-002.txt")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Check that all properties are set correctly by upd:setToUntyped.
'setToUntyped-003'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/books2-593.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/books2-593.xml", source(__BaseDir, 'books2')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdateRoutines/setToUntyped/setToUntyped-003.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/books2-593.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/UpdateRoutines/setToUntyped/setToUntyped-003.txt")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Check that all properties are set correctly by upd:setToUntyped.
'setToUntyped-004'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/books2-594.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/books2-594.xml", source(__BaseDir, 'books2')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdateRoutines/setToUntyped/setToUntyped-004.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/books2-594.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/UpdateRoutines/setToUntyped/setToUntyped-004.txt")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Check that all properties are set correctly by upd:setToUntyped.
'setToUntyped-005'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/books2-595.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/books2-595.xml", source(__BaseDir, 'books2')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdateRoutines/setToUntyped/setToUntyped-005.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/books2-595.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/UpdateRoutines/setToUntyped/setToUntyped-005.txt")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Check that all properties are set correctly by upd:setToUntyped.
'setToUntyped-006'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/books2-596.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/books2-596.xml", source(__BaseDir, 'books2')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdateRoutines/setToUntyped/setToUntyped-006.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/books2-596.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/UpdateRoutines/setToUntyped/setToUntyped-006.txt")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Check that all properties are set correctly by upd:setToUntyped.
'setToUntyped-007'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/books-597.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/books-597.xml", source(__BaseDir, 'books')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdateRoutines/setToUntyped/setToUntyped-007.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/books-597.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/UpdateRoutines/setToUntyped/setToUntyped-007.txt")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Check that all properties are set correctly by upd:setToUntyped.
'setToUntyped-008'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/books-598.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/books-598.xml", source(__BaseDir, 'books')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdateRoutines/setToUntyped/setToUntyped-008.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/books-598.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/UpdateRoutines/setToUntyped/setToUntyped-008.txt")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Check that all properties are set correctly by upd:setToUntyped.
'setToUntyped-009'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/books2-599.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/books2-599.xml", source(__BaseDir, 'books2')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdateRoutines/setToUntyped/setToUntyped-009.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/books2-599.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/UpdateRoutines/setToUntyped/setToUntyped-009.txt")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Check that all properties are set correctly by upd:setToUntyped.
'setToUntyped-010'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/books2-600.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/books2-600.xml", source(__BaseDir, 'books2')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdateRoutines/setToUntyped/setToUntyped-010.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/books2-600.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/UpdateRoutines/setToUntyped/setToUntyped-010.txt")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Check that all properties are set correctly by upd:propagateNamespaces.
'propagateNamespaces01'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdateRoutines/propagateNamespaces/propagateNamespaces01.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/UpdateRoutines/propagateNamespaces/propagateNamespaces01.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Check that all properties are set correctly by upd:propagateNamespaces.
'propagateNamespaces02'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdateRoutines/propagateNamespaces/propagateNamespaces02.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/UpdateRoutines/propagateNamespaces/propagateNamespaces02.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Check that all properties are set correctly by upd:propagateNamespaces.
'propagateNamespaces03'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdateRoutines/propagateNamespaces/propagateNamespaces03.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/UpdateRoutines/propagateNamespaces/propagateNamespaces03.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Check that all properties are set correctly by upd:propagateNamespaces.
'propagateNamespaces04'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdateRoutines/propagateNamespaces/propagateNamespaces04.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/UpdateRoutines/propagateNamespaces/propagateNamespaces04.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Check that all properties are set correctly by upd:propagateNamespaces.
'propagateNamespaces05'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdateRoutines/propagateNamespaces/propagateNamespaces05.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/UpdateRoutines/propagateNamespaces/propagateNamespaces05.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Check that all properties are set correctly by upd:propagateNamespaces.
'propagateNamespaces06'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UpdateRoutines/propagateNamespaces/propagateNamespaces06.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/UpdateRoutines/propagateNamespaces/propagateNamespaces06.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with delete expression.
'statictyp-xqupd-01'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-01.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0007") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with delete expression.
'statictyp-xqupd-02'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-02.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0007") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with insert into expression.
'statictyp-xqupd-03'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-03.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0005") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with insert into expression.
'statictyp-xqupd-04'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-04.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0005") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with insert into expression.
'statictyp-xqupd-05'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-05.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0005") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with insert into expression.
'statictyp-xqupd-06'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-06.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0005") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with insert into expression.
'statictyp-xqupd-07'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-07.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0005") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with insert into expression.
'statictyp-xqupd-08'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-08.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0005") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with insert into expression.
'statictyp-xqupd-09'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-09.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0022") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with insert before expression.
'statictyp-xqupd-10'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-10.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0006") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with insert before expression.
'statictyp-xqupd-11'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-11.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0006") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with insert before expression.
'statictyp-xqupd-12'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-12.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0006") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with insert before expression.
'statictyp-xqupd-13'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-13.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0006") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with insert before expression.
'statictyp-xqupd-14'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-14.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0006") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with insert before expression.
'statictyp-xqupd-15'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-15.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0006") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with insert before expression.
'statictyp-xqupd-16'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-16.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0006") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with delete expression.
'statictyp-xqupd-17'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-17.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0006") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with insert after expression.
'statictyp-xqupd-18'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-18.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0006") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with insert after expression.
'statictyp-xqupd-19'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-19.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0006") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with insert after expression.
'statictyp-xqupd-20'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-20.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0006") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with insert after expression.
'statictyp-xqupd-21'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-21.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0006") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with insert after expression.
'statictyp-xqupd-22'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-22.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0006") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with insert after expression.
'statictyp-xqupd-23'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-23.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0006") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with insert after expression.
'statictyp-xqupd-24'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-24.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0006") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with insert into expression.
'statictyp-xqupd-25'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-25.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0022") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with replace expression.
'statictyp-xqupd-26'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-26.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0008") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with replace expression.
'statictyp-xqupd-27'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-27.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0010") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with replace expression.
'statictyp-xqupd-28'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-28.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0010") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with replace expression.
'statictyp-xqupd-29'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-29.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0010") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with replace expression.
'statictyp-xqupd-30'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-30.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0010") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with replace expression.
'statictyp-xqupd-31'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-31.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0010") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with replace expression.
'statictyp-xqupd-32'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-32.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0010") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with replace expression.
'statictyp-xqupd-33'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-33.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0010") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with replace expression.
'statictyp-xqupd-34'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-34.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0010") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with replace expression.
'statictyp-xqupd-35'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-35.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0010") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with replace expression.
'statictyp-xqupd-36'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-36.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0010") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with replace expression.
'statictyp-xqupd-37'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-37.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0010") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with replace expression.
'statictyp-xqupd-38'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-38.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0010") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with replace expression.
'statictyp-xqupd-39'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-39.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0010") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with replace expression.
'statictyp-xqupd-40'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-40.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0010") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with replace expression.
'statictyp-xqupd-41'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-41.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0010") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with replace expression.
'statictyp-xqupd-42'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-42.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0010") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with replace expression.
'statictyp-xqupd-43'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-43.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0011") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with replace expression.
'statictyp-xqupd-44'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-44.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0011") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with replace expression.
'statictyp-xqupd-45'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-45.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0011") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with replace expression.
'statictyp-xqupd-46'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-46.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0011") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with replace expression.
'statictyp-xqupd-47'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-47.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0008") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with replace expression.
'statictyp-xqupd-48'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-48.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0008") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with replace expression.
'statictyp-xqupd-49'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-49.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0008") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with replace expression.
'statictyp-xqupd-50'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-50.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0008") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with rename expression.
'statictyp-xqupd-51'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-51.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0012") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with rename expression.
'statictyp-xqupd-52'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-52.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0012") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with rename expression.
'statictyp-xqupd-53'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-53.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0012") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with rename expression.
'statictyp-xqupd-54'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-54.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0012") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with rename expression.
'statictyp-xqupd-55'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-55.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0012") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with transform expression.
'statictyp-xqupd-56'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-56.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0013") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with transform expression.
'statictyp-xqupd-57'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-57.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUTY0013") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with rename expression.
'statictyp-xqupd-58'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-58.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XPTY0004") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with rename expression.
'statictyp-xqupd-59'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-59.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XPTY0004") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Evaluation of static typing feature with rename expression.
'statictyp-xqupd-60'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Static-typing-xqupd/statictyp-xqupd-60.xq"),
      Ctx1 = #{},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XPTY0004") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% keywords can be used as variable names
'update10keywords'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-667.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-667.xml", source(__BaseDir, 'emptydoc')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Other/update10keywords.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/emptydoc-667.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/Other/update10keywords.txt")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% One declare validation specifying strict
'revalidation-declaration-01-fail'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-668.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-668.xml", source(__BaseDir, 'emptydoc')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Prolog/RevalidationDeclaration/revalidation-declaration-01.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/emptydoc-668.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0026") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% One declare validation specifying lax
'revalidation-declaration-03-fail'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-669.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-669.xml", source(__BaseDir, 'emptydoc')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Prolog/RevalidationDeclaration/revalidation-declaration-03.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/emptydoc-669.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0026") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% One declare validation specifying skip
'revalidation-declaration-05'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-670.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-670.xml", source(__BaseDir, 'emptydoc')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Prolog/RevalidationDeclaration/revalidation-declaration-05.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/emptydoc-670.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/Prolog/RevalidationDeclaration/revalidation-declaration-05.txt")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Two declare validation specifying skip
'revalidation-declaration-06'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-671.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/emptydoc-671.xml", source(__BaseDir, 'emptydoc')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Prolog/RevalidationDeclaration/revalidation-declaration-06.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/emptydoc-671.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUST0003") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Delete leading comments of document element.
'complex-deletes-q1'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-672.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-672.xml", source(__BaseDir, 'TopMany')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/complex-deletes-q1.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-672.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/complex-deletes-q1-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-672.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/DeleteExpressions/complex-deletes-q1.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end,
   begin
      F3 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/complex-deletes-q1-test2.xq"),
      Ctx3 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-672.xml')")},
      Res3 = try
                Q3 = xqerl_code_server:compile(F3),
                xqerl:run(Q3, Ctx3)
             catch _:E3 -> E3 end,
      case xqerl_test:assert_xml(Res3,{file, filename:join(__BaseDir, "ExpectedTestResults/DeleteExpressions/complex-deletes-q1-2.xml")}) of
         true -> {comment, "Correct"};
         {false, Err3} -> ct:fail(Err3) 
      end
   end.

%% Delete trailing comments of document element.
'complex-deletes-q2'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-673.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-673.xml", source(__BaseDir, 'TopMany')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/complex-deletes-q2.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-673.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/complex-deletes-q2-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-673.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{doc_file, filename:join(__BaseDir, "ExpectedTestResults/DeleteExpressions/complex-deletes-q2.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end,
   begin
      F3 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/complex-deletes-q2-test2.xq"),
      Ctx3 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-673.xml')")},
      Res3 = try
                Q3 = xqerl_code_server:compile(F3),
                xqerl:run(Q3, Ctx3)
             catch _:E3 -> E3 end,
      case xqerl_test:assert_xml(Res3,{file, filename:join(__BaseDir, "ExpectedTestResults/DeleteExpressions/complex-deletes-q2-2.xml")}) of
         true -> {comment, "Correct"};
         {false, Err3} -> ct:fail(Err3) 
      end
   end.

%% Delete the text node child of element "east".
'complex-deletes-q6'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-674.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-674.xml", source(__BaseDir, 'TopMany')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/complex-deletes-q6.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-674.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/complex-deletes-q6-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-674.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/DeleteExpressions/complex-deletes-q6.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end,
   begin
      F3 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/complex-deletes-q6-test2.xq"),
      Ctx3 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-674.xml')")},
      Res3 = try
                Q3 = xqerl_code_server:compile(F3),
                xqerl:run(Q3, Ctx3)
             catch _:E3 -> E3 end,
      case xqerl_test:assert_xml(Res3,{file, filename:join(__BaseDir, "ExpectedTestResults/DeleteExpressions/complex-deletes-q6-2.xml")}) of
         true -> {comment, "Correct"};
         {false, Err3} -> ct:fail(Err3) 
      end
   end.

%% Delete all text nodes that come directly after a comment or PI.
'complex-deletes-q7'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-675.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-675.xml", source(__BaseDir, 'TopMany')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/complex-deletes-q7.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-675.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/complex-deletes-q7-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-675.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/DeleteExpressions/complex-deletes-q7.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end,
   begin
      F3 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/complex-deletes-q7-test2.xq"),
      Ctx3 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-675.xml')")},
      Res3 = try
                Q3 = xqerl_code_server:compile(F3),
                xqerl:run(Q3, Ctx3)
             catch _:E3 -> E3 end,
      case xqerl_test:assert_xml(Res3,{file, filename:join(__BaseDir, "ExpectedTestResults/DeleteExpressions/complex-deletes-q7-2.xml")}) of
         true -> {comment, "Correct"};
         {false, Err3} -> ct:fail(Err3) 
      end
   end.

%% Delete all elements called "south-east".
'complex-deletes-q8'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-676.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-676.xml", source(__BaseDir, 'TopMany')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/complex-deletes-q8.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-676.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/complex-deletes-q8-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-676.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/DeleteExpressions/complex-deletes-q8.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end,
   begin
      F3 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/complex-deletes-q8-test2.xq"),
      Ctx3 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-676.xml')")},
      Res3 = try
                Q3 = xqerl_code_server:compile(F3),
                xqerl:run(Q3, Ctx3)
             catch _:E3 -> E3 end,
      case xqerl_test:assert_xml(Res3,{file, filename:join(__BaseDir, "ExpectedTestResults/DeleteExpressions/complex-deletes-q8-2.xml")}) of
         true -> {comment, "Correct"};
         {false, Err3} -> ct:fail(Err3) 
      end
   end.

%% Delete the element called "center".
'complex-deletes-q9'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-677.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-677.xml", source(__BaseDir, 'TopMany')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/complex-deletes-q9.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-677.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/complex-deletes-q9-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-677.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/DeleteExpressions/complex-deletes-q9.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end,
   begin
      F3 = filename:join(__BaseDir, "Queries/XQuery/DeleteExpressions/complex-deletes-q9-test2.xq"),
      Ctx3 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-677.xml')")},
      Res3 = try
                Q3 = xqerl_code_server:compile(F3),
                xqerl:run(Q3, Ctx3)
             catch _:E3 -> E3 end,
      case xqerl_test:assert_xml(Res3,{file, filename:join(__BaseDir, "ExpectedTestResults/DeleteExpressions/complex-deletes-q9-2.xml")}) of
         true -> {comment, "Correct"};
         {false, Err3} -> ct:fail(Err3) 
      end
   end.

%% Replace the value of the leading comments of document element.
'complex-replacevalues-q1'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-678.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-678.xml", source(__BaseDir, 'TopMany')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/complex-replacevalues-q1.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-678.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/complex-replacevalues-q1-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-678.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/ReplaceExpressions/complex-replacevalues-q1.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end,
   begin
      F3 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/complex-replacevalues-q1-test2.xq"),
      Ctx3 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-678.xml')")},
      Res3 = try
                Q3 = xqerl_code_server:compile(F3),
                xqerl:run(Q3, Ctx3)
             catch _:E3 -> E3 end,
      case xqerl_test:assert_xml(Res3,{file, filename:join(__BaseDir, "ExpectedTestResults/ReplaceExpressions/complex-replacevalues-q1-2.xml")}) of
         true -> {comment, "Correct"};
         {false, Err3} -> ct:fail(Err3) 
      end
   end.

%% Replace values of trailing comments of document element.
'complex-replacevalues-q2'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-679.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-679.xml", source(__BaseDir, 'TopMany')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/complex-replacevalues-q2.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-679.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/complex-replacevalues-q2-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-679.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/ReplaceExpressions/complex-replacevalues-q2.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end,
   begin
      F3 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/complex-replacevalues-q2-test2.xq"),
      Ctx3 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-679.xml')")},
      Res3 = try
                Q3 = xqerl_code_server:compile(F3),
                xqerl:run(Q3, Ctx3)
             catch _:E3 -> E3 end,
      case xqerl_test:assert_xml(Res3,{file, filename:join(__BaseDir, "ExpectedTestResults/ReplaceExpressions/complex-replacevalues-q2-2.xml")}) of
         true -> {comment, "Correct"};
         {false, Err3} -> ct:fail(Err3) 
      end
   end.

%% Replace value of the text node child of element "east".
'complex-replacevalues-q6'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-680.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-680.xml", source(__BaseDir, 'TopMany')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/complex-replacevalues-q6.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-680.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/complex-replacevalues-q6-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-680.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/ReplaceExpressions/complex-replacevalues-q6.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end,
   begin
      F3 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/complex-replacevalues-q6-test2.xq"),
      Ctx3 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-680.xml')")},
      Res3 = try
                Q3 = xqerl_code_server:compile(F3),
                xqerl:run(Q3, Ctx3)
             catch _:E3 -> E3 end,
      case xqerl_test:assert_xml(Res3,{file, filename:join(__BaseDir, "ExpectedTestResults/ReplaceExpressions/complex-replacevalues-q6-2.xml")}) of
         true -> {comment, "Correct"};
         {false, Err3} -> ct:fail(Err3) 
      end
   end.

%% Replace the value of all text nodes that come directly after a comment or PI.
'complex-replacevalues-q7'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-681.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-681.xml", source(__BaseDir, 'TopMany')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/complex-replacevalues-q7.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-681.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/complex-replacevalues-q7-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-681.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/ReplaceExpressions/complex-replacevalues-q7.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end,
   begin
      F3 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/complex-replacevalues-q7-test2.xq"),
      Ctx3 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-681.xml')")},
      Res3 = try
                Q3 = xqerl_code_server:compile(F3),
                xqerl:run(Q3, Ctx3)
             catch _:E3 -> E3 end,
      case xqerl_test:assert_xml(Res3,{file, filename:join(__BaseDir, "ExpectedTestResults/ReplaceExpressions/complex-replacevalues-q7-2.xml")}) of
         true -> {comment, "Correct"};
         {false, Err3} -> ct:fail(Err3) 
      end
   end.

%% Replace value of all elements called "south-east".
'complex-replacevalues-q8'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-682.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-682.xml", source(__BaseDir, 'TopMany')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/complex-replacevalues-q8.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-682.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/complex-replacevalues-q8-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-682.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/ReplaceExpressions/complex-replacevalues-q8.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end,
   begin
      F3 = filename:join(__BaseDir, "Queries/XQuery/ReplaceExpressions/complex-replacevalues-q8-test2.xq"),
      Ctx3 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-682.xml')")},
      Res3 = try
                Q3 = xqerl_code_server:compile(F3),
                xqerl:run(Q3, Ctx3)
             catch _:E3 -> E3 end,
      case xqerl_test:assert_xml(Res3,{file, filename:join(__BaseDir, "ExpectedTestResults/ReplaceExpressions/complex-replacevalues-q8-2.xml")}) of
         true -> {comment, "Correct"};
         {false, Err3} -> ct:fail(Err3) 
      end
   end.

%% Rename all elements called "south-east".
'complex-renames-q2'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-683.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-683.xml", source(__BaseDir, 'TopMany')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/complex-renames-q2.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-683.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/complex-renames-q2-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-683.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/RenameExpressions/complex-renames-q2.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end,
   begin
      F3 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/complex-renames-q2-test2.xq"),
      Ctx3 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-683.xml')")},
      Res3 = try
                Q3 = xqerl_code_server:compile(F3),
                xqerl:run(Q3, Ctx3)
             catch _:E3 -> E3 end,
      case xqerl_test:assert_xml(Res3,{file, filename:join(__BaseDir, "ExpectedTestResults/RenameExpressions/complex-renames-q2-2.xml")}) of
         true -> {comment, "Correct"};
         {false, Err3} -> ct:fail(Err3) 
      end
   end.

%% Rename the element called "center".
'complex-renames-q3'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-684.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-684.xml", source(__BaseDir, 'TopMany')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/complex-renames-q3.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-684.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/complex-renames-q3-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-684.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/RenameExpressions/complex-renames-q3.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end,
   begin
      F3 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/complex-renames-q3-test2.xq"),
      Ctx3 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-684.xml')")},
      Res3 = try
                Q3 = xqerl_code_server:compile(F3),
                xqerl:run(Q3, Ctx3)
             catch _:E3 -> E3 end,
      case xqerl_test:assert_xml(Res3,{file, filename:join(__BaseDir, "ExpectedTestResults/RenameExpressions/complex-renames-q3-2.xml")}) of
         true -> {comment, "Correct"};
         {false, Err3} -> ct:fail(Err3) 
      end
   end.

%% Rename one of the elements called "south-east".
'complex-renames-q4'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-685.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/TopMany-685.xml", source(__BaseDir, 'TopMany')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/complex-renames-q4.xq"),
      Ctx1 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-685.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/complex-renames-q4-test.xq"),
      Ctx2 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-685.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/RenameExpressions/complex-renames-q4.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end,
   begin
      F3 = filename:join(__BaseDir, "Queries/XQuery/RenameExpressions/complex-renames-q4-test2.xq"),
      Ctx3 = #{<<"input-context">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/TopMany-685.xml')")},
      Res3 = try
                Q3 = xqerl_code_server:compile(F3),
                xqerl:run(Q3, Ctx3)
             catch _:E3 -> E3 end,
      case xqerl_test:assert_xml(Res3,{file, filename:join(__BaseDir, "ExpectedTestResults/RenameExpressions/complex-renames-q4-2.xml")}) of
         true -> {comment, "Correct"};
         {false, Err3} -> ct:fail(Err3) 
      end
   end.

%% Store a comment.
'fn-put-003-fail'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/putOutput-686.xml"),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Put/fn-put-003.xq"),
      Ctx1 = #{<<"input-URI">> => {xqAtomicValue, 'xs:anyURI', <<"http://xqerl.org/tests/XQUTS/1.0/putOutput-686.xml">>}},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"FOUP0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Store a PI.
'fn-put-004-fail'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/putOutput-687.xml"),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Put/fn-put-004.xq"),
      Ctx1 = #{<<"input-URI">> => {xqAtomicValue, 'xs:anyURI', <<"http://xqerl.org/tests/XQUTS/1.0/putOutput-687.xml">>}},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"FOUP0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Store an attribute.
'fn-put-005-fail'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/putOutput-688.xml"),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Put/fn-put-005.xq"),
      Ctx1 = #{<<"input-URI">> => {xqAtomicValue, 'xs:anyURI', <<"http://xqerl.org/tests/XQUTS/1.0/putOutput-688.xml">>}},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"FOUP0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Store a text node.
'fn-put-006-fail'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/putOutput-689.xml"),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/Put/fn-put-006.xq"),
      Ctx1 = #{<<"input-URI">> => {xqAtomicValue, 'xs:anyURI', <<"http://xqerl.org/tests/XQUTS/1.0/putOutput-689.xml">>}},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"FOUP0001") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Update Use Case # 1
'relational-data-q1'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/users-690.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/users-690.xml", source(__BaseDir, 'users')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UseCases/RelationalDataUpdates/relational-data-q1.xq"),
      Ctx1 = #{<<"users">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/users-690.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/UseCases/RelationalDataUpdates/relational-data-q1-test.xq"),
      Ctx2 = #{<<"users">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/users-690.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/UseCases/RelationalDataUpdates/relational-data-q1-results.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Update Use Case # 2
'relational-data-q2'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/users2-691.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/users2-691.xml", source(__BaseDir, 'users2')),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/bids-691.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/bids-691.xml", source(__BaseDir, 'bids')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UseCases/RelationalDataUpdates/relational-data-q2.xq"),
      Ctx1 = #{<<"users">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/users2-691.xml')"),
              <<"bids">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/bids-691.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/UseCases/RelationalDataUpdates/relational-data-q2-test.xq"),
      Ctx2 = #{<<"users">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/users2-691.xml')"),
              <<"bids">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/bids-691.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/UseCases/RelationalDataUpdates/relational-data-q2-results.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Update Use Case # 3
'relational-data-q3'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/users2-692.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/users2-692.xml", source(__BaseDir, 'users2')),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/bids-692.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/bids-692.xml", source(__BaseDir, 'bids')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UseCases/RelationalDataUpdates/relational-data-q3.xq"),
      Ctx1 = #{<<"users">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/users2-692.xml')"),
              <<"bids">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/bids-692.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/UseCases/RelationalDataUpdates/relational-data-q3-test.xq"),
      Ctx2 = #{<<"users">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/users2-692.xml')"),
              <<"bids">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/bids-692.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/UseCases/RelationalDataUpdates/relational-data-q3-results.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Update Use Case # 4
'relational-data-q4'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/users2-693.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/users2-693.xml", source(__BaseDir, 'users2')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UseCases/RelationalDataUpdates/relational-data-q4.xq"),
      Ctx1 = #{<<"users">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/users2-693.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/UseCases/RelationalDataUpdates/relational-data-q4-test.xq"),
      Ctx2 = #{<<"users">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/users2-693.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/UseCases/RelationalDataUpdates/relational-data-q4-results.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Update Use Case # 5
'relational-data-q5-1'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/users2-694.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/users2-694.xml", source(__BaseDir, 'users2')),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/bids-694.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/bids-694.xml", source(__BaseDir, 'bids')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UseCases/RelationalDataUpdates/relational-data-q5-1.xq"),
      Ctx1 = #{<<"users">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/users2-694.xml')"),
              <<"bids">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/bids-694.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/UseCases/RelationalDataUpdates/relational-data-q5-1-test.xq"),
      Ctx2 = #{<<"users">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/users2-694.xml')"),
              <<"bids">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/bids-694.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/UseCases/RelationalDataUpdates/relational-data-q5-results-1.txt")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Update Use Case # 5
'relational-data-q5-2'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/users2-695.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/users2-695.xml", source(__BaseDir, 'users2')),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/bids-695.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/bids-695.xml", source(__BaseDir, 'bids')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UseCases/RelationalDataUpdates/relational-data-q5-2.xq"),
      Ctx1 = #{<<"users">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/users2-695.xml')"),
              <<"bids">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/bids-695.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/UseCases/RelationalDataUpdates/relational-data-q5-2-test.xq"),
      Ctx2 = #{<<"users">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/users2-695.xml')"),
              <<"bids">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/bids-695.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/UseCases/RelationalDataUpdates/relational-data-q5-results-2.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Update Use Case # 6
'relational-data-q6-1'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/users-696.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/users-696.xml", source(__BaseDir, 'users')),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/items-696.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/items-696.xml", source(__BaseDir, 'items')),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/bids-696.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/bids-696.xml", source(__BaseDir, 'bids')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UseCases/RelationalDataUpdates/relational-data-q6-1.xq"),
      Ctx1 = #{<<"users">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/users-696.xml')"),
              <<"items">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/items-696.xml')"),
              <<"bids">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/bids-696.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/UseCases/RelationalDataUpdates/relational-data-q6-test.xq"),
      Ctx2 = #{<<"users">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/users-696.xml')"),
              <<"items">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/items-696.xml')"),
              <<"bids">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/bids-696.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/UseCases/RelationalDataUpdates/relational-data-q6-results-1.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Update Use Case # 6 - Alternate method
'relational-data-q6-2'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/users-697.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/users-697.xml", source(__BaseDir, 'users')),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/items-697.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/items-697.xml", source(__BaseDir, 'items')),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/bids-697.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/bids-697.xml", source(__BaseDir, 'bids')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UseCases/RelationalDataUpdates/relational-data-q6-2.xq"),
      Ctx1 = #{<<"users">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/users-697.xml')"),
              <<"items">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/items-697.xml')"),
              <<"bids">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/bids-697.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/UseCases/RelationalDataUpdates/relational-data-q6-test.xq"),
      Ctx2 = #{<<"users">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/users-697.xml')"),
              <<"items">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/items-697.xml')"),
              <<"bids">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/bids-697.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/UseCases/RelationalDataUpdates/relational-data-q6-results-1.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Update Use Case # 7
'relational-data-q7'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/items-698.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/items-698.xml", source(__BaseDir, 'items')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UseCases/RelationalDataUpdates/relational-data-q7.xq"),
      Ctx1 = #{<<"items">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/items-698.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/UseCases/RelationalDataUpdates/relational-data-q7-results-1.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/UseCases/RelationalDataUpdates/relational-data-q7-test.xq"),
      Ctx2 = #{<<"items">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/items-698.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/UseCases/RelationalDataUpdates/relational-data-q7-results-2.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Update Use Case # 8
'relational-data-q8'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/users2-699.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/users2-699.xml", source(__BaseDir, 'users2')),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/bids-699.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/bids-699.xml", source(__BaseDir, 'bids')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UseCases/RelationalDataUpdates/relational-data-q8.xq"),
      Ctx1 = #{<<"users">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/users2-699.xml')"),
              <<"bids">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/bids-699.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/UseCases/RelationalDataUpdates/relational-data-q8-results-1.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/UseCases/RelationalDataUpdates/relational-data-q8-test.xq"),
      Ctx2 = #{<<"users">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/users2-699.xml')"),
              <<"bids">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/bids-699.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case lists:any(fun(true) -> true; (_) -> false end, [
         xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/UseCases/RelationalDataUpdates/relational-data-q8-results-2.xml")}),
         xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/UseCases/RelationalDataUpdates/relational-data-q8-results-3.xml")})]) of 
         true -> {comment, "Correct"};
         false -> ct:fail(Res2)
      end
   end.

%% Update Use Case # 9
'relational-data-q9'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/users2-700.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/users2-700.xml", source(__BaseDir, 'users2')),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/bids-700.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/bids-700.xml", source(__BaseDir, 'bids')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UseCases/RelationalDataUpdates/relational-data-q9.xq"),
      Ctx1 = #{<<"users">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/users2-700.xml')"),
              <<"bids">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/bids-700.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/UseCases/RelationalDataUpdates/relational-data-q9-results-1.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/UseCases/RelationalDataUpdates/relational-data-q9-test.xq"),
      Ctx2 = #{<<"users">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/users2-700.xml')"),
              <<"bids">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/bids-700.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case lists:any(fun(true) -> true; (_) -> false end, [
         xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/UseCases/RelationalDataUpdates/relational-data-q9-results-2.xml")}),
         xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/UseCases/RelationalDataUpdates/relational-data-q9-results-3.xml")})]) of 
         true -> {comment, "Correct"};
         false -> ct:fail(Res2)
      end
   end.

%% Address Book Use case # 1
'address-book-q1'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/archive-701.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/archive-701.xml", source(__BaseDir, 'archive')),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/copy1-701.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/copy1-701.xml", source(__BaseDir, 'copy1')),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/copy2-701.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/copy2-701.xml", source(__BaseDir, 'copy2')),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/log-701.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/log-701.xml", source(__BaseDir, 'log')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UseCases/AddressBookUpdates/address-book-q1.xq"),
      Ctx1 = #{<<"archive">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/archive-701.xml')"),
              <<"copy1">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/copy1-701.xml')"),
              <<"copy2">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/copy2-701.xml')"),
              <<"log">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/log-701.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_error(Res1,"XUDY0017") of 
         true -> {comment, "Correct error"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% Soap Use case # 1
'soap-q1'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/airports-702.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/airports-702.xml", source(__BaseDir, 'airports')),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/soapMsg-702.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/soapMsg-702.xml", source(__BaseDir, 'soapMsg')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UseCases/SoapUpdates/soap-q1.xq"),
      Ctx1 = #{<<"airportsDoc">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/airports-702.xml')"),
              <<"msg">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/soapMsg-702.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/UseCases/SoapUpdates/soap-q1-results.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.

%% namespaces Use case # 1
'namespaces-q1'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/grant-703.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/grant-703.xml", source(__BaseDir, 'grant')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UseCases/NamespacesUpdates/namespaces-q1.xq"),
      Ctx1 = #{<<"grant">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/grant-703.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/UseCases/NamespacesUpdates/namespaces-q1-test.xq"),
      Ctx2 = #{<<"grant">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/grant-703.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/UseCases/NamespacesUpdates/namespaces-q1-results.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Parts Use case # 1
'parts-q1'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/part-tree-704.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/part-tree-704.xml", source(__BaseDir, 'part-tree')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UseCases/PartsUpdates/parts-q1.xq"),
      Ctx1 = #{<<"part-tree">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/part-tree-704.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/UseCases/PartsUpdates/parts-q1-test.xq"),
      Ctx2 = #{<<"part-tree">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/part-tree-704.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/UseCases/PartsUpdates/parts-q1-results.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Parts Use case # 2
'parts-q2'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/part-tree-705.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/part-tree-705.xml", source(__BaseDir, 'part-tree')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UseCases/PartsUpdates/parts-q2.xq"),
      Ctx1 = #{<<"part-tree">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/part-tree-705.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/UseCases/PartsUpdates/parts-q2-test.xq"),
      Ctx2 = #{<<"part-tree">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/part-tree-705.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/UseCases/PartsUpdates/parts-q2-results.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Parts Use case # 3
'parts-q3-1'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/part-tree-706.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/part-tree-706.xml", source(__BaseDir, 'part-tree')),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/part-list-706.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/part-list-706.xml", source(__BaseDir, 'part-list')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UseCases/PartsUpdates/parts-q3-1.xq"),
      Ctx1 = #{<<"part-tree">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/part-tree-706.xml')"),
              <<"part-list">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/part-list-706.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/UseCases/PartsUpdates/parts-q3-test.xq"),
      Ctx2 = #{<<"part-list">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/part-list-706.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/UseCases/PartsUpdates/parts-q3-results.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Parts Use case # 3 (alternate solution)
'parts-q3-2'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/part-list-707.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/part-list-707.xml", source(__BaseDir, 'part-list')),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/part-tree-707.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/part-tree-707.xml", source(__BaseDir, 'part-tree')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UseCases/PartsUpdates/parts-q3-2.xq"),
      Ctx1 = #{<<"part-list">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/part-list-707.xml')"),
              <<"part-tree">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/part-tree-707.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/UseCases/PartsUpdates/empty-sequence.txt")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/UseCases/PartsUpdates/parts-q3-test.xq"),
      Ctx2 = #{<<"part-list">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/part-list-707.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case lists:any(fun(true) -> true; (_) -> false end, [
         xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/UseCases/PartsUpdates/parts-q3-results.xml")}),
         xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/UseCases/PartsUpdates/parts-q3-results-no-update.xml")})]) of 
         true -> {comment, "Correct"};
         false -> ct:fail(Res2)
      end
   end.

%% Parts Use case # 4
'parts-q4-1'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/part-tree-708.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/part-tree-708.xml", source(__BaseDir, 'part-tree')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UseCases/PartsUpdates/parts-q4-1.xq"),
      Ctx1 = #{<<"part-tree">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/part-tree-708.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/UseCases/PartsUpdates/parts-q4-test.xq"),
      Ctx2 = #{<<"part-tree">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/part-tree-708.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/UseCases/PartsUpdates/parts-q4-results.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Parts Use case # 4. Alternate solution.
'parts-q4-2'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/part-tree-709.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/part-tree-709.xml", source(__BaseDir, 'part-tree')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UseCases/PartsUpdates/parts-q4-2.xq"),
      Ctx1 = #{<<"part-tree">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/part-tree-709.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/UseCases/PartsUpdates/parts-q4-test.xq"),
      Ctx2 = #{<<"part-tree">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/part-tree-709.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/UseCases/PartsUpdates/parts-q4-results.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Parts Use case # 6
'parts-q6'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/part-tree-710.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/part-tree-710.xml", source(__BaseDir, 'part-tree')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UseCases/PartsUpdates/parts-q6.xq"),
      Ctx1 = #{<<"part-tree">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/part-tree-710.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      Res1
   end,
   begin
      F2 = filename:join(__BaseDir, "Queries/XQuery/UseCases/PartsUpdates/parts-q6-test.xq"),
      Ctx2 = #{<<"part-tree">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/part-tree-710.xml')")},
      Res2 = try
                Q2 = xqerl_code_server:compile(F2),
                xqerl:run(Q2, Ctx2)
             catch _:E2 -> E2 end,
      case xqerl_test:assert_xml(Res2,{file, filename:join(__BaseDir, "ExpectedTestResults/UseCases/PartsUpdates/parts-q6-results.xml")}) of
         true -> {comment, "Correct"};
         {false, Err2} -> ct:fail(Err2) 
      end
   end.

%% Nil Use case # 1
'nil-q1'(Config) -> 
   __BaseDir = ?config(base_dir, Config),
   xqldb_dml:delete_doc("http://xqerl.org/tests/XQUTS/1.0/employees-711.xml"),
   xqldb_dml:insert_doc("http://xqerl.org/tests/XQUTS/1.0/employees-711.xml", source(__BaseDir, 'employees')),
   begin
      F1 = filename:join(__BaseDir, "Queries/XQuery/UseCases/NilUpdates/nil-q1.xq"),
      Ctx1 = #{<<"employees">> => xqerl:run("doc('http://xqerl.org/tests/XQUTS/1.0/employees-711.xml')")},
      Res1 = try
                Q1 = xqerl_code_server:compile(F1),
                xqerl:run(Q1, Ctx1)
             catch _:E1 -> E1 end,
      case xqerl_test:assert_xml(Res1,{file, filename:join(__BaseDir, "ExpectedTestResults/UseCases/NilUpdates/nil-q1-results.xml")}) of
         true -> {comment, "Correct"};
         {false, Err1} -> ct:fail(Err1) 
      end
   end.
