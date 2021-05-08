let g:open = 0

function ToggleTerminal(height)
    if &buftype ==# 'terminal'
        :Ttoggle<CR>
        let g:open = 0
    else
        if g:open
            wincmd j
            startinsert
        else
            let g:open = 1
            split
            exec "resize " . a:height
            :Ttoggle<CR>
            startinsert
        endif
    endif
endfunction

" Open/Close terminal
nnoremap    <silent>    <A-t>           <CMD>call ToggleTerminal(12)<CR>
tnoremap    <silent>    <A-t>           <C-\><C-n><CMD>call ToggleTerminal(12)<CR>

" Split movement
tnoremap    <silent>    <C-k>           <C-\><C-n><CMD>wincmd k<CR>
tnoremap    <silent>    <C-h>           <C-\><C-n><CMD>wincmd h<CR>
tnoremap    <silent>    <C-l>           <C-\><C-n><CMD>wincmd l<CR>

" Build/Run commands
tnoremap    <silent>    <F3>            clear<CR>Scripts/build.sh<CR>
tnoremap    <silent>    <F4>            clear<CR>Scripts/run.sh<CR>
nnoremap    <silent>    <F3>            <CMD>call ToggleTerminal(12)<CR>Scripts/build.sh<CR>
nnoremap    <silent>    <F4>            <CMD>call ToggleTerminal(12)<CR>Scripts/run.sh<CR>
