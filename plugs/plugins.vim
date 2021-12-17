call plug#begin('~/.config/nvim/plugs')
" Themes and Looks
Plug 'NLKNguyen/papercolor-theme'
Plug 'junegunn/seoul256.vim'
Plug 'jnurmine/Zenburn'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Functionality - Syntax
Plug 'vim-python/python-syntax'
Plug 'neovim/nvim-lspconfig'

" Functionality - Completion
Plug 'dense-analysis/ale'

" Functionality - Other
" Plug 'preservim/nerdtree' **DEPRECIATED
" Plug 'kyazdani42/nvim-tree.lua'
Plug 'lambdalisue/fern.vim'
Plug 'voldikss/vim-floaterm'

"Plug 'roxma/nvim-completion-manager'
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'

call plug#end()
