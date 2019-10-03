nnoremap h h
nnoremap t j
nnoremap n k
nnoremap s l
" nnoremap e s
" nnoremap E S
nnoremap l e
" nnoremap L E
nnoremap m b
" nnoremap M B
nnoremap $ ^
nnoremap ^ $
nnoremap <C-t> n
nnoremap <C-n> N
nnoremap <C-e> <C-y>
nnoremap <C-o> <C-e>
nnoremap :tree :NERDTreeToggle
nnoremap :bk :Bookmark
nnoremap et :<C-u>tabnew<CR>
nnoremap eh gT
nnoremap es gt
" nnoremap <C-Tab> gT
" nnoremap <Tab><Tab> gt
for i in range(1, 9)
	    execute 'nnoremap e' . i . ' ' . i . 'gt'
endfor
nnoremap ew :<C-u>w<CR>
nnoremap eo :<C-u>q<CR>

let mapleader = "."
noremap <Leader>y "+y
noremap <Leader>p "+p
noremap <Leader>Y "*y
noremap <Leader>P "*p

colorscheme wombat_modified
"colorscheme wombat256dave
"colorscheme wombat256i
"colorscheme peaksea
"set background=dark
set t_Co=256
"set laststatus=2

" CursorLine
set cursorline
" set cursorcolumn

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
" noremap <C-P> :Unite buffer<CR>
" Listed files
" noremap <C-N> :Unite -buffer-name=file file<CR>
" Listed recently used files
" noremap <C-Z> :Unite file_mru<CR>

" auto-pairs setting
" autocmd BufRead,BufNewFile *.rb,*.erb setfiletype ruby
" au FileType ruby let b:AutoPairs = AutoPairsDefine({'<%' : '%>', '<' : '>'})

"" coc.vim setting
"" General
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
	  let col = col('.') - 1
	    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

"" Shortcuts
nmap <silent> <space><space> :<C-u>CocList<cr>
nmap <silent> <space>h :<C-u>call CocAction('doHover')<cr>
nmap <silent> ef <Plug>(coc-definition)
nmap <silent> er <Plug>(coc-references)
nmap <silent> etf <Plug>(coc-type-definition)
nmap <silent> ei <Plug>(coc-implementation)
nmap <silent> rn <Plug>(coc-rename)
nmap <silent> fmt <Plug>(coc-format)
nnoremap <silent> gk :call <SID>show_documentation()<CR>

function! s:show_documentation()
	if &filetype ==# 'vim'
		execute 'h '.expand('<cword>')
	else
		if coc#util#has_float()
			pc
		else
			call CocActionAsync('doHover')
		endif
	endif
endfunction

"" Navigation
"Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

"" Solargraph
let g:coc_global_extensions = ['coc-solargraph']

" vista.vim setting
function! NearestMethodOrFunction() abort
	  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

set statusline+=%{NearestMethodOrFunction()}

" By default vista.vim never run if you don't call it explicitly.
" "
" " If you want to show the nearest function in your statusline
" automatically,
" " you can add the following line to your vimrc 
autocmd VimEnter * call vista#RunForNearestMethodOrFunction()


" How to install below plugins -> :PlugInstall
"
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'
" Plug 'vim-syntastic/syntastic'
" Plug 'nvie/vim-flake8'
Plug 'slashmili/alchemist.vim'
Plug 'w0rp/ale'
Plug 'tpope/vim-endwise'
Plug 'elixir-editors/vim-elixir'
Plug 'Rykka/riv.vim'
" Plug 'othree/yajs.vim'
Plug 'b4b4r07/vim-shellutils'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
" Plug 'mattn/emmet-vim'
Plug 'guns/xterm-color-table.vim' " :XtermColorTable, # -> yank, t -> toggle, f -> set current color
Plug 'chrisbra/Colorizer' " :h Colorizer, :ColorHighlight
" Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'liuchengxu/vista.vim'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
" Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" Initialize plugin system
call plug#end()

" For thyme setting
" nmap <leader>t :!thyme -d<cr>
