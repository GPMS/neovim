nnoremap                <C-s>           :w<CR>
nnoremap                <C-q>           :q<CR>

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

"FZF
nnoremap                <C-p>           :Files<CR>
nnoremap    <silent>    <C-t>           :! ctags --exclude={.vscode,compile_commands.json} -R .<CR>:Tags<CR>

"Incsearch
map                     /               <Plug>(incsearch-forward)
map                     ?               <Plug>(incsearch-backward)
map                     g/              <Plug>(incsearch-stay)

nnoremap                gF              :vsplit<CR>gf

nnoremap                <F2>            :TagbarToggle<CR>

:nnoremap <Leader>s :%s/\<<C-r><C-w>\>//gc<Left><Left><Left>

