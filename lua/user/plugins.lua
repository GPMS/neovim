-- Auto install
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    print('Installing Packer...')
    fn.execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
    vim.cmd 'packadd packer.nvim'
end

require('packer_compiled')

return require('packer').startup({function(use)
    use 'wbthomason/packer.nvim'

    -- Benchmark
    use 'tweekmonster/startuptime.vim'

    -- Speed up require
    use 'lewis6991/impatient.nvim'

    -- Colors
    use 'marko-cerovac/material.nvim'
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use {
        'tikhomirov/vim-glsl',
        ft = 'glsl'
    }

    -- Status bar
    use {
        'glepnir/galaxyline.nvim',
        branch = 'main',
        requires = {'kyazdani42/nvim-web-devicons', opt = true},
    }

    -- Reload config
    use 'famiu/nvim-reload'

    -- File browser
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
    }

    -- LSP
    use 'neovim/nvim-lspconfig'
    use {
        "hrsh7th/nvim-cmp",
        requires = {
            {"hrsh7th/cmp-nvim-lsp"},
            {"hrsh7th/cmp-buffer"},
            {"hrsh7th/cmp-path"},
            {"hrsh7th/cmp-cmdline"},
            {"saadparwaiz1/cmp_luasnip"},

            {'SirVer/ultisnips'},
            {'quangnguyen30192/cmp-nvim-ultisnips'},
        }
    }
    use 'ray-x/lsp_signature.nvim'
    use {
        'folke/trouble.nvim',
        requires = 'kyazdani42/nvim-web-devicons',
    }

    -- Terminal
    use 'akinsho/nvim-toggleterm.lua'

    -- Smooth scrolling
    use 'psliwka/vim-smoothie'

    -- Surroundings
    use 'jiangmiao/auto-pairs'

    -- Quick jump
    use 'derekwyatt/vim-fswitch'

    -- Fuzzy finder
    use {
      'nvim-telescope/telescope.nvim',
      requires = {
          {'nvim-lua/plenary.nvim'},
      }
    }
    use 'nvim-telescope/telescope-fzy-native.nvim'
    use 'nvim-telescope/telescope-project.nvim'

    -- Git
    use {
        'lewis6991/gitsigns.nvim',
        requires = {
            'nvim-lua/plenary.nvim'
        }
    }
    use 'kdheepak/lazygit.nvim'
end,
config = {
    compile_path = vim.fn.stdpath('config')..'/lua/packer_compiled.lua'
}})
