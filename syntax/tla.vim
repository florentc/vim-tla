" Vim syntax file
" Language: TLA+
" Maintainer: Florent Ch.
" Last Change: THU 20 OCT 2016
" Version: 0.1
 
" Known issues:
" FIXME Preamble (before ---- MODULE title ----) is not highlighted as comment
" when the file begins with a keyword

if exists("b:current_syntax")
  finish
endif

syn sync linebreaks=1

" Keywords
syn keyword tlaKeyword ACTION
syn keyword tlaKeyword ASSUME
syn keyword tlaKeyword ASSUMPTION
syn keyword tlaKeyword AXIOM
syn keyword tlaKeyword BY
syn keyword tlaKeyword CASE
syn keyword tlaKeyword CHOOSE
syn keyword tlaKeyword CONSTANT
syn keyword tlaKeyword CONSTANTS
syn keyword tlaKeyword DEF
syn keyword tlaKeyword DEFINE
syn keyword tlaKeyword DEFS
syn keyword tlaKeyword DOMAIN
syn keyword tlaKeyword ENABLED
syn keyword tlaKeyword EXCEPT
syn keyword tlaKeyword EXTENDS
syn keyword tlaKeyword HAVE
syn keyword tlaKeyword HIDE
syn keyword tlaKeyword IN
syn keyword tlaKeyword INSTANCE
syn keyword tlaKeyword LAMBDA                           conceal cchar=λ
syn keyword tlaKeyword LEMMA
syn keyword tlaKeyword LET
syn keyword tlaKeyword LOCAL
syn keyword tlaKeyword MODULE
syn keyword tlaKeyword NEW
syn keyword tlaKeyword OBVIOUS
syn keyword tlaKeyword OMITTED
syn keyword tlaKeyword OTHER
syn keyword tlaKeyword PICK
syn keyword tlaKeyword PROOF
syn keyword tlaKeyword PROPOSITION
syn keyword tlaKeyword PROVE
syn keyword tlaKeyword QED
syn keyword tlaKeyword RECURSIVE
syn keyword tlaKeyword SF_
syn keyword tlaKeyword STATE
syn keyword tlaKeyword SUBSET
syn keyword tlaKeyword SUFFICES
syn keyword tlaKeyword TAKE
syn keyword tlaKeyword TEMPORAL
syn keyword tlaKeyword THEOREM
syn keyword tlaKeyword UNCHANGED
syn keyword tlaKeyword UNION
syn keyword tlaKeyword USE
syn keyword tlaKeyword VARIABLE
syn keyword tlaKeyword VARIABLES
syn keyword tlaKeyword WF_
syn keyword tlaKeyword WITH
syn keyword tlaKeyword WITNESS

" Conditional
syn keyword tlaConditional IF
syn keyword tlaConditional THEN
syn keyword tlaConditional ELSE

" Types (standard modules)
syn keyword tlaType Int                                 conceal cchar=ℤ
syn keyword tlaType Nat                                 conceal cchar=ℕ
syn keyword tlaType Real                                conceal cchar=ℝ
syn keyword tlaType Seq 

" Booleans
syn keyword tlaBoolean FALSE                            conceal cchar=⊥
syn keyword tlaBoolean TRUE                             conceal cchar=⊤

" Numbers
syn match tlaNumber "\<\d\+\>"

" Strings
syn region tlaString start=+"+ skip=+\\"+ end=+"+

" Delimiters I
syn match tlaDelimiter "[{}()\[\]]"
syn match tlaDelimiter "{}"                             conceal cchar=∅

" ASCII Operators with unicode conceal character
syn match tlaOperator "<"
syn match tlaOperator ">"
syn match tlaOperator "="
syn match tlaOperator "+"
syn match tlaOperator "-"
syn match tlaOperator "*"
syn match tlaOperator "%"
syn match tlaOperator ":"
syn match tlaOperator ","
syn match tlaOperator "'"
syn match tlaOperator "\~"                              conceal cchar=¬
syn match tlaOperator "\\"
syn match tlaOperator "/"
syn match tlaOperator "->"                              conceal cchar=→
syn match tlaOperator "<-"                              conceal cchar=←
syn match tlaOperator "=>"                              conceal cchar=⇒
syn match tlaOperator "|-"                              conceal cchar=⊦
syn match tlaOperator "-|"                              conceal cchar=⊣
syn match tlaOperator "|="                              conceal cchar=⊧
syn match tlaOperator "=|"                              conceal cchar=⫤
syn match tlaOperator "|->"                             conceal cchar=↦
syn match tlaOperator "\~>"                             conceal cchar=⤳
syn match tlaOperator "\(/=\|#\)"                       conceal cchar=≠
syn match tlaOperator "\[\]"                            conceal cchar=□
syn match tlaOperator "<>"                              conceal cchar=◇
syn match tlaOperator "||"                              conceal cchar=‖
syn match tlaOperator "\.\."
syn match tlaOperator "\.\.\."                          conceal cchar=…
syn match tlaOperator "=="                              conceal cchar=≜
syn match tlaOperator "!!"
syn match tlaOperator "??"
syn match tlaOperator "@@"
" Postfix
syn match tlaOperator "\^\(+\)"                         conceal cchar=⁺
syn match tlaOperator "\^\(*\)"
syn match tlaOperator "\^\(#\)"

syn match tlaOperator "\\A"                             conceal cchar=∀
syn match tlaOperator "\\AA"
syn match tlaOperator "\\E"                             conceal cchar=∃
syn match tlaOperator "\\EE"
syn match tlaOperator "\\approx"                        conceal cchar=≈
syn match tlaOperator "\\asymp"                         conceal cchar=≍
syn match tlaOperator "\\bigcirc"                       conceal cchar=◯
syn match tlaOperator "\\bullet"                        conceal cchar=●
syn match tlaOperator "\(\\cap\|\\intersect\)"          conceal cchar=∩
syn match tlaOperator "\\cdot"                          conceal cchar=·
syn match tlaOperator "\\circ\|\\o"                     conceal cchar=∘
syn match tlaOperator "\\cong"                          conceal cchar=≅
syn match tlaOperator "\(\\cup\|\\union\)"              conceal cchar=∪
syn match tlaOperator "\\div"                           conceal cchar=÷
syn match tlaOperator "\\doteq"                         conceal cchar=≐
syn match tlaOperator "\(\\leq\|<=\)"                   conceal cchar=≤
syn match tlaOperator "\(\\equiv\|<=>\)"                conceal cchar=⇔
syn match tlaOperator "\(\\geq\|>=\)"                   conceal cchar=≥
syn match tlaOperator "\\gg"                            conceal cchar=≫
syn match tlaOperator "\\in"                            conceal cchar=∈
syn match tlaOperator "\(\\land\|/\\\)"                 conceal cchar=∧
syn match tlaOperator "\\ll"                            conceal cchar=≪
syn match tlaOperator "\(\\lnot\|\\neg\)"               conceal cchar=¬
syn match tlaOperator "\(\\lor\|\\/\)"                  conceal cchar=∨
syn match tlaOperator "\\notin"                         conceal cchar=∉
syn match tlaOperator "\(\\odot\|(\.)\)"                conceal cchar=⊙
syn match tlaOperator "\(\\ominus\|(-)\)"               conceal cchar=⊖
syn match tlaOperator "\(\\oplus\|(+)\)"                conceal cchar=⊕
syn match tlaOperator "\(\\oslash\|(/)\)"               conceal cchar=⊘
syn match tlaOperator "\(\\otimes\|(\\X)\)"             conceal cchar=⊗
syn match tlaOperator "\\prec"                          conceal cchar=≺
syn match tlaOperator "\\preceq"                        conceal cchar=⪯
syn match tlaOperator "\\propto"                        conceal cchar=∝
syn match tlaOperator "\\sim"                           conceal cchar=∼
syn match tlaOperator "\\simeq"                         conceal cchar=≃
syn match tlaOperator "\\sqcap"                         conceal cchar=⊓
syn match tlaOperator "\\sqcup"                         conceal cchar=⊔
syn match tlaOperator "\\sqsubset"                      conceal cchar=⊏
syn match tlaOperator "\\sqsubseteq"                    conceal cchar=⊑
syn match tlaOperator "\\sqsupset"                      conceal cchar=⊐
syn match tlaOperator "\\sqsupseteq"                    conceal cchar=⊒
syn match tlaOperator "\\star"                          conceal cchar=⋆
syn match tlaOperator "\\subset"                        conceal cchar=⊂
syn match tlaOperator "\\subseteq"                      conceal cchar=⊆
syn match tlaOperator "\\succ"                          conceal cchar=≻
syn match tlaOperator "\\succeq"                        conceal cchar=⪰
syn match tlaOperator "\\supset"                        conceal cchar=⊃
syn match tlaOperator "\\supseteq"                      conceal cchar=⊇
syn match tlaOperator "\\uplus"                         conceal cchar=⊎
syn match tlaOperator "\\wr"                            conceal cchar=≀
syn match tlaOperator "\(\\times\|\\X\)"                conceal cchar=×

" Delimiters II
syn match tlaDelimiter "<<"                             conceal cchar=〈
syn match tlaDelimiter ">>"                             conceal cchar=〉

" Definitions (regular identifiers, macros, functions)
syn match tlaIdentifier "\zs\w*\((.*)\|\[.*\]\)\s*\ze==" contains=tlaDefSet,tlaOperator,tlaKeyword
syn match tlaDefSet "\\in\s*.*\ze]" contained contains=tlaOperator,tlaKeyword,tlaDelimiter
syn match tlaIdentifier "\zs\w*\s*\ze==" contains=tlaOperator,tlaKeyword
" Postfix  operator definition
syn match tlaIdentifier "\zs\w*\s*\(\^+\|\^*\|\^#\)\s*\ze==" contains=tlaOperator,tlaKeyword
" Prefix operator definition
syn match tlaIdentifier "\zs-\s*\w*\s*\ze==" contains=tlaOperator,tlaKeyword
" Infix operator definition
" For now, non-word characters or lowercase words prefixed by a backslash are
" allowed as the infix operator
" TODO deny invalid infix operators
syn match tlaIdentifier "\zs\w*\s*\(\W*\|\\[a-z]*\)\s*\w*\s*\ze==" contains=tlaOperator,tlaKeyword

" Standard modules operators
syn keyword tlaStdOperator Infinity                     conceal cchar=∞
syn keyword tlaStdOperator Head
syn keyword tlaStdOperator SelectSeq
syn keyword tlaStdOperator SubSeq
syn keyword tlaStdOperator Append
syn keyword tlaStdOperator Len
syn keyword tlaStdOperator Tail
syn keyword tlaStdOperator IsFiniteSet
syn keyword tlaStdOperator Cardinality
syn keyword tlaStdOperator BagCardinality
syn keyword tlaStdOperator BagIn
syn keyword tlaStdOperator BagOfAll
syn keyword tlaStdOperator BagToSet
syn keyword tlaStdOperator BagUnion
syn keyword tlaStdOperator CopiesIn
syn keyword tlaStdOperator EmptyBag
syn keyword tlaStdOperator IsABag
syn keyword tlaStdOperator SetToBag
syn keyword tlaStdOperator SubBag
syn keyword tlaStdOperator RTBound
syn keyword tlaStdOperator RTNow
syn keyword tlaStdOperator now
syn keyword tlaStdOperator Print
syn keyword tlaStdOperator Assert
syn keyword tlaStdOperator JavaTime
syn keyword tlaStdOperator Permutations
syn keyword tlaStdOperator SortSeq

" TLA Asciiart
syn match tlaBoxes "-\{4,\}"
syn match tlaBoxes "=\{4,\}"
syn match tlaTitle "-\{4,\}\s*MODULE\s*\w*\s*-\{4,\}" contains=tlaBoxes,tlaKeyword

" Comments
syn keyword tlaTodo contained TODO XXX FIXME
syn match tlaCommentMarker "\\\*"                       conceal
syn match tlaComment "\\\*.*" contains=tlaCommentMarker,tlaTodo
syn region tlaComment start="(\*" end="\*)" contains=tlaComment,tlaTodo
" Beginning of module
syn region tlaComment start="\%^" end="\ze-\{4,\}\s*MODULE\s*\w*\s*-\{4,\}" keepend contains=tlaTodo
" Beyond end of module
syn region tlaComment start="=\{4,\}" end="\%$" contains=tlaBoxes,tlaTodo

" Link the rules to some groups.
highlight link tlaBoolean        Boolean
highlight link tlaBoxes          Special
highlight link tlaComment        Comment
highlight link tlaCommentMarker  Comment
highlight link tlaConditional    Conditional
highlight link tlaDelimiter      Delimiter
highlight link tlaDefSet         Normal
highlight link tlaIdentifier     Identifier
highlight link tlaKeyword        Keyword
highlight link tlaNumber         Number
highlight link tlaOperator       Operator
highlight link tlaStdOperator    Operator
highlight link tlaString         String
highlight link tlaTitle          Title
highlight link tlaTodo           Todo
highlight link tlaType           Type
 
let b:current_syntax = "tla"
