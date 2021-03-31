autocmd FileType defx call s:defx_my_settings()
function! s:defx_my_settings() abort
    " Define mappings
    nnoremap <silent><buffer><expr> k         line('.') == 1 ? 'G' : 'k'
    nnoremap <silent><buffer><expr> j         line('.') == line('$') ? 'gg' : 'j'
    nnoremap <silent><buffer><expr> h         defx#do_action('close_tree')
    nnoremap <silent><buffer><expr> l         defx#do_action('open_tree', 'toggle')

    nnoremap <silent><buffer><expr> v         defx#do_action('open', 'vsplit')
    nnoremap <silent><buffer><expr> s         defx#do_action('open', 'split')
    nnoremap <silent><buffer><expr> t         defx#do_action('open', 'tabnew')

    nnoremap <silent><buffer><expr> c         defx#do_action('copy')
    nnoremap <silent><buffer><expr> m         defx#do_action('move')
    nnoremap <silent><buffer><expr> p         defx#do_action('paste')
    nnoremap <silent><buffer><expr> d         defx#do_action('remove_trash')
    nnoremap <silent><buffer><expr> D         defx#do_action('remove')
    nnoremap <silent><buffer><expr> r         defx#do_action('rename')
    nnoremap <silent><buffer><expr> x         defx#do_action('execute_system')

    nnoremap <silent><buffer><expr> A         defx#do_action('new_directory')
    nnoremap <silent><buffer><expr> a         defx#do_action('new_file')

    nnoremap <silent><buffer><expr> P         defx#do_action('preview')
    nnoremap <silent><buffer><expr> .         defx#do_action('toggle_ignored_files')
    nnoremap <silent><buffer><expr> ~         defx#do_action('cd')
    nnoremap <silent><buffer><expr> q         defx#do_action('quit')
    nnoremap <silent><buffer><expr> <Space>   defx#do_action('toggle_select') . 'j'
    nnoremap <silent><buffer><expr> *         defx#do_action('toggle_select_all')
    nnoremap <silent><buffer><expr> cd        defx#do_action('change_vim_cwd')
endfunction

call defx#custom#option('_', {
            \ 'winwidth': 40,
            \ 'split': 'vertical',
            \ 'direction': 'topleft',
            \ 'toggle': 1
            \ })

nnoremap <F1> :Defx<CR>

