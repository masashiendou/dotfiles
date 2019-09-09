nnoremap h h
nnoremap t j
nnoremap n k
nnoremap s l
nnoremap e s
nnoremap E S
nnoremap l e
nnoremap L E
nnoremap m b
nnoremap M B
nnoremap $ ^
nnoremap ^ $
nnoremap <C-t> n
nnoremap <C-n> N
nnoremap :tree :NERDTreeToggle
nnoremap :bk :Bookmark
nnoremap kt :<C-u>tabnew<CR>
nnoremap kh gT
nnoremap ks gt
nnoremap kw :<C-u>w<CR>
nnoremap kq :<C-u>q<CR>

let mapleader = "."
noremap <Leader>y "+y
noremap <Leader>p "+p
noremap <Leader>Y "*y
noremap <Leader>P "*p

colorscheme wombat
"colorscheme wombat256dave
"colorscheme wombat256i
"colorscheme peaksea
"set background=dark
set t_Co=256
"twitter
let twitvim_enable_python = 1
let twitvim_browser_cmd = 'firefox'
let twitvim_force_ssl = 1
let twitvim_count = 600

set clipboard+=unnamed
set encoding=utf-8

"split navigations
set splitbelow
set splitright

" Enable folding
set foldmethod=indent
set foldlevel=99

" For python settings
au BufNewFile,BufRead "*.py"
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix
" Detect white space
au BufRead,BufNewFile "*.py","*.pyw","*.c","*.h" match BadWhitespace /\s\+$/
" For js, html and css settings
au BufNewFile,BufRead "*.js", "*.html", "*.css"
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

set hlsearch
" hi Search cterm=NONE ctermfg=grey ctermbg=blue
" hi Search ctermbg=Red
" hi Search ctermfg=LightYellow
set number
set showmatch
let python_highlight_all=1
syntax on

set list  " can be view invisible charactor
set listchars=tab:>-,trail:.  " View by Tab is '>---', Space is '.'

" filetype plugin on
" set omnifunc=syntaxcomplete#Complete

" Listed buffers
noremap <C-P> :Unite buffer<CR>
" Listed files
noremap <C-N> :Unite -buffer-name=file file<CR>
" Listed recently used files
noremap <C-Z> :Unite file_mru<CR>

" How to install below plugins -> :PlugInstall
"
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
Plug 'slashmili/alchemist.vim'
Plug 'w0rp/ale'
Plug 'tpope/vim-endwise'
Plug 'elixir-editors/vim-elixir'
Plug 'Rykka/riv.vim'
Plug 'othree/yajs.vim'
Plug 'b4b4r07/vim-shellutils'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
Plug 'mattn/emmet-vim'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" Initialize plugin system
call plug#end()
