if exists("b:current_syntax")
  finish
endif

" Keywords
syn keyword bendKeyword lambda def match case with if else finally
syn keyword bendKeyword type any all

" Primitive types
syn keyword bendType Set Empty Unit Bool Nat U64 I64 F64

" Boolean values
syn keyword bendBoolean True False

" Special values
syn keyword bendSpecial () finally

" Numbers
syn match bendNumber "\<0n\>"
syn match bendNumber "\<\d\+n\>"
syn match bendNumber "\<\d\+\>"
syn match bendNumber "\<+\d\+\>"
syn match bendNumber "\<\d\+\.\d\+\>"

" Comments
syn match bendComment "#.*$"

" Operators
syn match bendOperator "->"
syn match bendOperator "&"
syn match bendOperator "<>"
syn match bendOperator "=="
syn match bendOperator "="
syn match bendOperator ":"
syn match bendOperator "::"
syn match bendOperator "\.\."

" Enums and tags
syn match bendEnum "@\w\+"
syn match bendTag "@\w\+"

" Lists
syn match bendList "\[\]"
syn region bendList start="\[" end="\]" contains=ALL

" Tuples
syn region bendTuple start="(" end=")" contains=ALL

" Type parameters
syn region bendTypeParam start="<" end=">" contains=ALL

" Function application
syn match bendFuncApp "\<\w\+("me=e-1
syn match bendFuncApp ")\@<!\<\w\+\>" contained

" String literals (though not shown in spec, might be useful)
syn region bendString start=+"+ end=+"+

" Highlight links
hi def link bendKeyword Keyword
hi def link bendType Type
hi def link bendBoolean Boolean
hi def link bendSpecial Special
hi def link bendNumber Number
hi def link bendComment Comment
hi def link bendOperator Operator
hi def link bendEnum Constant
hi def link bendTag Constant
hi def link bendList Structure
hi def link bendTuple Structure
hi def link bendTypeParam Type
hi def link bendFuncApp Function
hi def link bendString String

let b:current_syntax = "bend"
