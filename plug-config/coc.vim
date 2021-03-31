let g:coc_global_extensions = [
\ 'coc-json',
\ 'coc-clangd',
\ 'coc-snippets',
\ 'coc-explorer',
\ ]

function! ShowDocumentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

autocmd CursorHold * silent call CocActionAsync('highlight')

" Snippets jump with tab
inoremap <expr> <TAB> pumvisible() ? "\<C-y>" : "\<TAB>"
let g:coc_snippet_next = '<TAB>'
let g:coc_snippet_prev = '<S-TAB>'

" Highlight the symbol and its references when holding the cursor.
"autocmd CursorHold * silent call CocActionAsync('highlight')

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

imap     <silent><expr> <C-k>           ("\<C-p>")
imap     <silent><expr> <C-j>           ("\<C-n>")
imap     <silent><expr> <C-l>           pubvisible() ? "\<C-y>" : "\<C-g>u\<CR"
inoremap <silent><expr> <C-space>       coc#refresh()

nmap        <silent>    <Leader>gd      <Plug>(coc-definition)
nmap        <silent>    <Leader>gD      :wincmd v<CR> <Plug>(coc-definition)
nmap        <silent>    <Leader>gi      <Plug>(coc-implementation)
nmap        <silent>    <Leader>gr      <Plug>(coc-references)
nnoremap    <silent>    <Leader>k       :call ShowDocumentation()<CR>
xmap        <silent>    <Leader>f       <Plug>(coc-format-selected)
nmap        <silent>    <Leader>f       <Plug>(coc-format-selected)

nmap        <silent>    <Leader>rn      <Plug>(coc-rename)

nnoremap    <silent>    <Leader>gh      :CocCommand clangd.switchSourceHeader<CR>
nnoremap    <silent>    <Leader>gH      :vsplit<CR>:CocCommand clangd.switchSourceHeader<CR>

nnoremap    <silent>    <F1>            :CocCommand explorer<CR>

