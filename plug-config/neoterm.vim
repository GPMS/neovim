function OpenTerminal(height)
    split
    exec "resize " . a:height
    :Ttoggle<CR>
    startinsert
endfunction

nnoremap    <silent>    <A-t>           :call OpenTerminal(12)<CR>
tnoremap    <silent>    <A-t>           <C-\><C-n>:Ttoggle<CR>
tnoremap    <silent>    <C-k>           <C-\><C-n>:wincmd k<CR>
tnoremap    <silent>    <F3>            clear<CR>Scripts/build.sh<CR>
tnoremap    <silent>    <F4>            clear<CR>Scripts/run.sh<CR>
nnoremap    <silent>    <F3>            :call OpenTerminal(12)<CR>Scripts/build.sh<CR>
nnoremap    <silent>    <F4>            :call OpenTerminal(12)<CR>Scripts/run.sh<CR>
