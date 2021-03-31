let g:nvim_tree_side = 'left' " | 'left' "left by default
let g:nvim_tree_width = 40
let g:nvim_tree_ignore = [ '.git', 'node_modules', '.cache' ]
let g:nvim_tree_auto_open = 0
let g:nvim_tree_auto_close = 1
let g:nvim_tree_quit_on_open = 0
let g:nvim_tree_follow = 1
let g:nvim_tree_indent_markers = 1
let g:nvim_tree_hide_dotfiles = 1
let g:nvim_tree_git_hl = 1
let g:nvim_tree_width_allow_resize  = 1
let g:nvim_tree_disable_netrw = 0
let g:nvim_tree_hijack_netrw = 0
let g:nvim_tree_show_icons = {
    \ 'git': 1,
    \ 'folders': 1,
    \ 'files': 1,
    \ }
" default will show icon by default if no icon is provided
" default shows no icon by default
let g:nvim_tree_icons = {
    \ 'default': '',
    \ 'symlink': '',
    \ 'git': {
    \   'unstaged': "✗",
    \   'staged': "✓",
    \   'unmerged': "",
    \   'renamed': "➜",
    \   'untracked': "ﭖ"
    \   },
    \ 'folder': {
    \   'default': "",
    \   'open': "",
    \   'empty': "",
    \   'empty_open': "",
    \   'symlink': "",
    \   }
    \ }

augroup NvimTree
  autocmd!
  autocmd FileType NvimTree setlocal signcolumn=no nowrap
augroup end

highlight NvimTreeFolderName guifg=#569cdc gui=bold
highlight NvimTreeEmptyFolderName guifg=#569cdc gui=bold

nnoremap <silent> <F1> <cmd>NvimTreeToggle<CR>

luafile ~/.config/nvim/lua/plugins/nvim-tree.lua

