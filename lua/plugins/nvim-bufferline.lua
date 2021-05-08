require'bufferline'.setup{
    options = {
        view = "multiwindow",
        numbers = "none",
        number_style = "superscript",
        mappings = true,
        buffer_close_icon= '',
        modified_icon = '●',
        close_icon = '',
        left_trunc_marker = '',
        right_trunc_marker = '',
        max_name_length = 20,
        max_prefix_length = 15,
        tab_size = 20,
        diagnostics = "nvim_lsp",
        diagnostics_indicator = function(count, level, diagnostics_dict)
            return "("..count..")"
        end,
        show_buffer_close_icons = true,
        show_close_icon = true,
        show_tab_indicators = true,
        persist_buffer_sort = true,
        separator_style = "slant",
        enforce_regular_tabs = false,
        always_show_bufferline = true,
        sort_by = 'extension'
    }
}

local options = { noremap = true, silent = true }
vim.api.nvim_set_keymap('n', '<TAB>', '<CMD>BufferLineCycleNext<CR>', options)
vim.api.nvim_set_keymap('n', '<S-TAB>', '<CMD>BufferLineCyclePrev<CR>', options)