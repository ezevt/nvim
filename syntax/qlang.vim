if exists("b:current_syntax")
  finish
endif

" =========================
" Keywords
" =========================
syntax keyword qlangKeyword if then else end for while do fn return continue break let

" =========================
" Builtins
" =========================
syntax keyword qlangBuiltin print

" =========================
" Booleans / nil
" =========================
syntax keyword qlangBoolean true false
syntax keyword qlangConstant nil

" =========================
" Numbers
" =========================
syntax match qlangNumber /\v\d+(\.\d+)?/

" =========================
" Strings
" =========================
syntax region qlangString start=/"/ skip=/\\"/ end=/"/

" =========================
" Comments
" =========================
syntax match qlangComment "//.*$"

" =========================
" Operators
" =========================
syntax match qlangOperator /[-+*\/=!<>]=\?/
syntax match qlangOperator /[(),]/

" =========================
" Identifiers
" =========================
syntax match qlangIdentifier /\v[a-zA-Z_][a-zA-Z0-9_]*/

" =========================
" Highlight links
" =========================
highlight default link qlangKeyword Keyword
highlight default link qlangBuiltin Function
highlight default link qlangBoolean Boolean
highlight default link qlangConstant Constant
highlight default link qlangNumber Number
highlight default link qlangString String
highlight default link qlangComment Comment
highlight default link qlangOperator Operator
highlight default link qlangIdentifier Identifier

let b:current_syntax = "qlang"
