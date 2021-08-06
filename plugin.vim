" Install vim-plug automatically if not installed
if empty(glob('$HOME/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
        \https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall -- sync | source $HOME/.config/nvim/init.vim
endif

" Install missing plugins on Vim startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

" Plugins
call plug#begin()
    " Benchmark
    Plug 'tweekmonster/startuptime.vim'

    " VS Code Theme
    Plug 'christianchiarulli/nvcode-color-schemes.vim'

    " Status Bar
    Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}

    " File Browser
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'kyazdani42/nvim-tree.lua'
    Plug 'folke/trouble.nvim'

    " Show Indentation Level
    Plug 'Yggdroot/indentLine'

    " Completion
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/nvim-compe'
    Plug 'ray-x/lsp_signature.nvim'
    Plug 'SirVer/ultisnips'

    " Syntax Highlighting
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'tikhomirov/vim-glsl'

    " Terminal
    Plug 'akinsho/nvim-toggleterm.lua'

    " Smooth Scrolling
    Plug 'psliwka/vim-smoothie'

    " Surroundings
    Plug 'tpope/vim-surround'
    Plug 'jiangmiao/auto-pairs'

    " Quick Jump
    Plug 'justinmk/vim-sneak'
    Plug 'derekwyatt/vim-fswitch'

    " Fuzzy Finder
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-telescope/telescope-project.nvim'
    Plug 'nvim-telescope/telescope-fzy-native.nvim'

    " Git
    Plug 'lewis6991/gitsigns.nvim'
    Plug 'kdheepak/lazygit.nvim'
call plug#end()

