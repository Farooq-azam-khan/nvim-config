if exists("b:current_syntax")
  finish
endif

" Case sensitivity
syn case match

[cite_start]" Comments [cite: 54, 55]
syn match   belugaComment "%.*$"
syn region  belugaComment start="%{" end="}%"

[cite_start]" Pragmas [cite: 33, 34, 36, 38, 39, 40, 41, 42, 43, 44, 45, 46, 322, 326, 329, 549, 554, 573]
syn keyword belugaPragma --coverage --warncoverage --nostrengthen --infix --prefix --assoc --name --abbrev --not --open contained
syn match   belugaPragma "^\s*--\w\+" contains=belugaPragma

[cite_start]" Keywords [cite: 24, 25, 26, 27, 28, 29, 30, 31, 168, 169, 171, 172]
syn keyword belugaKeyword FN and block case else fn if in impossible let module of rec schema some struct then
syn keyword belugaFunction fn FN mlam rec let
syn keyword belugaConditional if else case
syn keyword belugaType type ctype Bool schema
[cite_start]syn keyword belugaBoolean ttrue ffalse " Note: from [cite: 28, 29]

[cite_start]" Special hole character for incomplete programs [cite: 30, 473, 527]
syn keyword belugaTodo ?

[cite_start]" Numbers (used for precedence, etc.) [cite: 325, 542]
syn match   belugaNumber "\<\d\+\>"

[cite_start]" Operators and Reserved Characters [cite: 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 91, 160]
syn match   belugaOperator "[.:,;\[\](){}<>|]"
syn match   belugaOperator "->" "<-" "=>" "|-" "::" "\*"

" Special Variables
[cite_start]" Parameter variable: # followed by lowercase id [cite: 362, 264]
syn match   belugaParameter "#\l\w*"
[cite_start]" Substitution variable: # followed by uppercase id [cite: 403, 263]
syn match   belugaSubstVar  "#\u\w*"

[cite_start]" Uppercase Identifiers for Modules, Constructors, Meta-variables [cite: 71, 191, 302, 553]
syn match   belugaUpperId "\<\u\w*\>"

[cite_start]" HTML Documentation Block [cite: 624]
syn region  belugaHtmlBlock start="```" end="```" contains=belugaHtmlHeader,belugaHtmlBold,belugaHtmlItalic,belugaHtmlCode,belugaHtmlEntity,belugaHtmlList
syn match   belugaHtmlHeader "^\s*#\+.*"      contained
syn region  belugaHtmlBold   start="\*\*" end="\*\*" contained
syn region  belugaHtmlItalic start="\*"  end="\*"  contained
syn region  belugaHtmlCode   start="'"   end="'"   contained
syn match   belugaHtmlEntity "&\w\+;"          contained
syn match   belugaHtmlList   "^\s*[-*] "       contained
syn match   belugaHtmlList   "^\s*\d\+\. "     contained

" --- Highlighting Links ---

hi def link belugaComment     Comment
hi def link belugaPragma      PreProc
hi def link belugaKeyword     Keyword
hi def link belugaFunction    Function
hi def link belugaConditional Conditional
hi def link belugaType        Type
hi def link belugaBoolean     Boolean
hi def link belugaTodo        Todo
hi def link belugaNumber      Number
hi def link belugaOperator    Operator
hi def link belugaParameter   Special
hi def link belugaSubstVar    Special
hi def link belugaUpperId     Identifier

" Highlighting for embedded HTML
hi def link belugaHtmlBlock   String
hi def link belugaHtmlHeader  Title
hi def link belugaHtmlBold    Bold
hi def link belugaHtmlItalic  Italic
hi def link belugaHtmlCode    Statement
hi def link belugaHtmlEntity  SpecialChar
hi def link belugaHtmlList    Statement

let b:current_syntax = "beluga"
