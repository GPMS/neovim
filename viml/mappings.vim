let mapleader = " "
let maplocalleader = " "

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

" Replace word under cursor
nnoremap                <Leader>r       :%s/\<<C-R><C-W>\>//gc<Left><Left><Left>

" Tab resize
noremap                 <Up>            :resize +2<CR>
noremap                 <Down>          :resize -2<CR>
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

nnoremap                qp              :cprev<CR>
nnoremap                qn              :cnext<CR>

" Completion
inoremap <silent><expr> <C-Space>       compe#complete()
inoremap <silent><expr> <C-l>           compe#confirm('<CR>')
inoremap <silent><expr> <C-e>           compe#close('<C-e>')
inoremap <silent><expr> <C-j>           pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <silent><expr> <C-k>           pumvisible() ? "\<C-p>" : "\<C-k>"

" LSP
nnoremap <silent>       gd              :lua vim.lsp.buf.definition()<CR>
nnoremap <silent>       gD              :lua vim.lsp.buf.declaration()<CR>
nnoremap <silent>       gi              :lua vim.lsp.buf.implementation()<CR>
nnoremap <silent>       gr              :lua vim.lsp.buf.references()<CR>
nnoremap <silent>       <Leader>k       :lua vim.lsp.buf.hover()<CR>
nnoremap <silent>       <Leader>d       :lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent>       <Leader>rn      :lua vim.lsp.buf.rename()<CR>
nnoremap <silent>       <Leader>e       :lua vim.lsp.diagnostic.show_line_diagnostics()<CR>
nnoremap <silent>       <Leader>p       :lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent>       <Leader>n       :lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap <silent>       <Leader>f       :lua vim.lsp.buf.formatting()<CR>

" Switch source/header
nnoremap <silent>       gh              :FSHere<CR>
nnoremap <silent>       gH              :vsplit<CR><CMD>FSHere<CR>

" ToggleTerm
" Toggle terminal
nnoremap <silent>       <A-t>           :ToggleTerm<CR>
tnoremap <silent>       <A-t>           <C-\><C-n>:ToggleTerm<CR>
" Terminal movement
tnoremap <silent>       <C-k>           <C-\><C-n>:wincmd k<CR>
tnoremap <silent>       <C-h>           <C-\><C-n>:wincmd h<CR>
tnoremap <silent>       <C-l>           <C-\><C-n>:wincmd l<CR>

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

" File Browser
nnoremap <silent>       <F1>            <cmd>NvimTreeToggle<CR>

" Telescope
nnoremap <silent>       <Leader>tp      :lua require'telescope'.extensions.project.project{}<CR>
nnoremap <silent>       <Leader>tf      :Telescope find_files<CR>
nnoremap <silent>       <Leader>tb      :Telescope buffers<CR>
nnoremap <silent>       <Leader>tg      :Telescope live_grep<CR>
nnoremap <silent>       <Leader>tt      :!ctags $(fd)<CR>:Telescope tags<CR>
