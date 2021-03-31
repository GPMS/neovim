imap     <silent><expr> <C-k>      ("\<C-p>")
imap     <silent><expr> <C-j>      ("\<C-n>")
let g:completion_confirm_key = "\<C-l>"
let g:completion_matching_smart_case = 1
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
set completeopt=menuone,noinsert,noselect
