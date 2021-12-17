"" Ben Gerber's nvim setup

source $HOME/.config/nvim/plugs/plugins.vim


"~Configure basics~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
syntax on
language en_US.UTF-8
set tabstop=4
set number
set cursorline

"~Set file options~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
filetype indent on

"~Set QoL features~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
set wildmenu
set lazyredraw
set showmatch
set list
set listchars=tab:>-

"~Set Searching features~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
set incsearch
set hlsearch

"~Set Code Folding~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
set foldenable
set foldlevelstart=10
set foldmethod=indent

"~Set Colors~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" set t_Co=256   " Set to 256 color mode
colors zenburn
"colorscheme seoul256
set background=light
"colorscheme PaperColor
let g:airline_theme='zenburn'

"~Set NERDTree Autostarts (When managed system-wide by AUR)~~~~~~~~

" autocmd VimEnter * NERDTree | wincmd p
" Exit Vim if NERDTree is the only window remaining in the only tab.
" autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Close the tab if NERDTree is the only window remaining in it.
" autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Fern Setup

"autocmd VimEnter * Fern . -reveal=% -drawer -width=35 -toggle

"~Set custom keybindings~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

" Execution Commands **REQUIRES FLOATERM**
autocmd FileType python map <buffer> <F5> <esc>:w<CR>:exec ':FloatermNew --height=0.20 --width=0.95 --position=bottom --autoclose=0 python %' shellescape(@%, 1)<CR>
"autocmd FileType python imap <buffer> <F5> <esc>:w<CR>:exec '!python' shellescape(@%, 1)<CR>
"autocmd filetype python nnoremap <F5> :w <bar> exec '!python '.shellescape('%')<CR>
autocmd FileType c nnoremap <F5> :w <bar> exec ':FloattermNew --height=0.20 --width=0.95 --position=bottom --autoclose=0 gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd FileType cpp nnoremap <F5> :w <bar> exec ':FloattermNew --height=0.20 --width=0.95 --position=bottom --autoclose=0 g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
