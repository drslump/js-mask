" we need the conceal feature (vim ≥ 7.3)
if exists('g:no_js_conceal') || !has('conceal') || &enc != 'utf-8'
    finish
endif

" replace function keyword with the 𝑓 symbol
syntax clear javaScriptFunction
syntax match javaScriptFunction /\<function\>/ nextgroup=javaScriptFuncName skipwhite conceal cchar=𝑓
syntax match javaScriptFunctionNoParams /function()/ conceal cchar=𝑓

hi link javaScriptFunctionNoParams javaScriptFunction
hi! link Conceal javaScriptFunction


" replace the return keyword with the ↵  symbol
syntax keyword javaScriptBranch return conceal cchar=↵

"hi! link Conceal javaScriptBranch


set conceallevel=2
