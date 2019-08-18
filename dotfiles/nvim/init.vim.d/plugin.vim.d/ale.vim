let g:ale_sign_column_always = 0
let g:ale_open_list = 0

let g:ale_sign_error = '•'
let g:ale_sign_warning = '•'
let g:ale_lint_on_text_changed = 'always'
let g:ale_lint_on_enter = '0'
let g:ale_lint_on_save = '0'


let g:ale_html_htmlhint_executable = 'htmlhint'

let g:ale_python_auto_pipenv = 1
let g:ale_python_flake8_options = '--ignore=E116,E501,E265,W503 --max-line-length=88'
let g:ale_python_pylint_options = "--load-plugins pylint_django --max-parents 25 --disable=all --enable=import-error, import-self, reimported, wildcard-import, misplaced-future, deprecated-module, unpacking-non-sequence, invalid-all-object, undefined-all-variable, used-before-assignment, cell-var-from-loop, global-variable-undefined, redefine-in-handler, unused-import, unused-wildcard-import, global-variable-not-assigned, undefined-loop-variable, global-statement, global-at-module-level, bad-open-mode, redundant-unittest-assert, boolean-datetime deprecated-method, anomalous-unicode-escape-in-string, anomalous-backslash-in-string, not-in-loop, continue-in-finally, abstract-class-instantiated, star-needs-assignment-target, duplicate-argument-name, return-in-init, too-many-star-expressions, nonlocal-and-global, return-outside-function, return-arg-in-generator, invalid-star-assignment-target, bad-reversed-sequence, nonexistent-operator, yield-outside-function, init-is-generator, nonlocal-without-binding, lost-exception, assert-on-tuple, dangerous-default-value, duplicate-key, useless-else-on-loop expression-not-assigned, confusing-with-statement, unnecessary-lambda, pointless-statement, pointless-string-statement, unnecessary-pass, unreachable, eval-used, exec-used, using-constant-test, bad-super-call, missing-super-argument, slots-on-old-class, super-on-old-class, property-on-old-class, not-an-iterable, not-a-mapping, format-needs-mapping, truncated-format-string, missing-format-string-key, mixed-format-string, too-few-format-args, bad-str-strip-call, too-many-format-args, bad-format-character, format-combined-specification, bad-format-string-key, bad-format-string, missing-format-attribute, missing-format-argument-key, unused-format-string-argument unused-format-string-key, invalid-format-index, bad-indentation, mixed-indentation, unnecessary-semicolon, lowercase-l-suffix, invalid-encoded-data, unpacking-in-except, import-star-module-level, long-suffix, old-octal-literal, old-ne-operator, backtick, old-raise-syntax, metaclass-assignment, next-method-called, dict-iter-method, dict-view-method, indexing-exception, raising-string, using-cmp-argument, cmp-method, coerce-method, delslice-method, getslice-method, hex-method, nonzero-method, t-method, setslice-method, old-division, logging-format-truncated, logging-too-few-args, logging-too-many-args, logging-unsupported-format, logging-format-interpolation, invalid-unary-operand-type, unsupported-binary-operation, not-callable, redundant-keyword-arg, assignment-from-no-return, assignment-from-none, not-context-manager, repeated-keyword, missing-kwoa, no-value-for-parameter, invalid-sequence-index, invalid-slice-index, unexpected-keyword-arg, unsupported-membership-test, unsubscriptable-object, access-member-before-definition, method-hidden, assigning-non-slot, duplicate-bases, inconsistent-mro, inherit-non-class, invalid-slots, invalid-slots-object, no-method-argument, no-self-argument, unexpected-special-method-signature, non-iterator-returned, arguments-differ, signature-differs, bad-staticmethod-argument, non-parent-init-called, bad-except-order, catching-non-exception, bad-exception-context, notimplemented-raised, raising-bad-type, raising-non-exception, misplaced-bare-raise, duplicate-except, broad-except, nonstandard-exception, binary-op-exception, bare-except, not-async-context-manager, yield-inside-async-function" 
let g:ale_python_mypy_options = '--ignore-missing-imports --follow-imports=silent'
let g:ale_python_black_options = '--target-version=py37 --skip-string-normalization --fast --quiet'

let g:ale_rust_rls_toolchain = 'nightly'

let g:ale_linters = {
    \ 'python': ['flake8', 'pylint', 'mypy'],
    \ 'css': ['stylelint'],
    \ 'html': ['htmlhint'],
    \ 'htmldjango': ['htmlhint'],
    \ 'dart': ['language_server'],
    \ 'rust': ['rustc'],
    \ }

let g:ale_fixers = {
\   'python': ['isort', 'black'],
\}
let g:ale_fix_on_save = 1

let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

let g:ale_virtualtext_cursor = 1
let g:ale_virtualtext_prefix = '⇝ '

hi! link ALEVirtualTextError GruvboxRedSign
hi! link ALEVirtualTextWarning GruvboxYellowSign
hi! link ALEVirtualTextInfo GruvboxBlueSign
