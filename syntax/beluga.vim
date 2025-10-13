" Case sensitivity
syn case match

syn keyword belugaKeyword FN and block case else fn if in impossible let module of rec schema some struct then
syn keyword belugaFunction fn FN mlam rec let
syn keyword belugaConditional if else case
syn keyword belugaType type ctype Bool schema


" comment 
syn match   belugaComment "%.*$"
syn region  belugaComment start="%{" end="}%"

" params 
syn keyword belugaPragma --coverage --warncoverage --nostrengthen --infix --prefix --assoc --name --abbrev --not --open contained
syn match   belugaPragma "^\s*--\w\+" contains=belugaPragma

" Special hole character for incomplete programs [cite: 30, 473, 527]
syn keyword belugaTodo ?

"number 

syn match   belugaNumber "\<\d\+\>"

" operator 
syn match   belugaOperator "[.:,;\[\](){}<>|]"
syn match   belugaOperator "->" "<-" "=>" "|-" "::" "\*"


" Special Variables
syn match   belugaParameter "#\l\w*"
syn match   belugaSubstVar  "#\u\w*"
syn match   belugaUpperId "\<\u\w*\>"


" HTML  documentation block 
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

