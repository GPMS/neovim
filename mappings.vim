nnoremap                <C-s>           :w<CR>
nnoremap                <C-q>           :q<CR>

" make Y behave the same as C and D
nnoremap                Y               y$

" keep cursor on the same spot when joining lines
nnoremap                J               mzJ'z

" Add undo breakpoints when inserting these characters
inoremap                ,               ,<C-g>u
inoremap                .               .<C-g>u
inoremap                !               !<C-g>u
inoremap                ?               ?<C-g>u

nnoremap                H               ^
nnoremap                L               $

" Tab resize
noremap                 <Up>            :resize +2<CR>
noremap                 <Down>          :resize -1<CR>
noremap                 <Left>          :vertical resize +2<CR>
noremap                 <Right>         :vertical resize -2<CR>

" Window movement
nnoremap                <C-h>           :wincmd h<CR>
nnoremap                <C-j>           :wincmd j<CR>
nnoremap                <C-k>           :wincmd k<CR>
nnoremap                <C-l>           :wincmd l<CR>

" Tabs
nnoremap                <TAB>           :tabnext<CR>
nnoremap                <S-TAB>         :tabprevious<CR>

" Move text
vnoremap                J               :m '>+1<CR>gv=gv
vnoremap                K               :m '<-2<CR>gv=gv

" Better tabbing
vnoremap                <               <gv
vnoremap                >               >gv

nnoremap                gF              :vsplit<CR>gf

:nnoremap <Leader>s :%s/\<<C-r><C-w>\>//gc<Left><Left><Left>

