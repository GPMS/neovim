" Build/Run
function! Build()
    set makeprg=./build.sh
    echo "Building..."
    silent make!
    vert copen
    wincmd =
    set makeprg&
endfunction
nnoremap <silent>       <F3>            :call Build()<CR>
nnoremap <silent>       <F4>            :TermExec cmd="./run.sh"<CR>
tnoremap <silent>       <F3>            clear<CR>./build.sh<CR>
tnoremap <silent>       <F4>            clear<CR>./run.sh<CR>
