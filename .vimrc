"=========================
" General settings
"=========================
"" key mapping
nnoremap h h
nnoremap t j
nnoremap n k
nnoremap s l
nnoremap l e
nnoremap m b
nnoremap $ ^
nnoremap ^ $
nnoremap <C-j> n
nnoremap <C-k> N
nnoremap <C-t> <C-y>
nnoremap <C-n> <C-e>
"nnoremap eq :<C-u>noh<CR>
nnoremap <C-u> :noh<CR>
nnoremap :bk :Bookmark
" nnoremap et :<C-u>tabnew<CR>
" nnoremap eh gT
" nnoremap es gt
nnoremap ew :<C-u>w<CR>
nnoremap eo :<C-u>q<CR>

"" Leader settings
let mapleader = "\<Space>"
" NERDTreeToggle
nnoremap <silent><Leader>T :NERDTreeToggle<CR>
" window focus changing
nnoremap <silent><Leader>w :wincmd w<CR>
nnoremap <silent><Leader>W :wincmd W<CR>
" window resize
nnoremap <silent><Leader><Leader>n :res +10<CR>
nnoremap <silent><Leader><Leader>t :res -10<CR>
nnoremap <silent><Leader><Leader>h :vertical res +10<CR>
nnoremap <silent><Leader><Leader>s :vertical res -10<CR>
" window move
nnoremap <silent><Leader><Leader>T <C-w><C-x><CR>
nnoremap <silent><Leader><Leader>H <C-w><C-r><CR>
" new window
nnoremap <silent><Leader><Leader>N :new<CR>
nnoremap <silent><Leader><Leader>S :vnew<CR>
" tagjump, tagbar setting
nnoremap <silent><Leader>t :TagbarOpen fjc<CR>
nnoremap <C-v> :vsp <CR> :exe("tjump ".expand('<cword>'))<CR>
nnoremap <C-z> :split<CR> :exe("tjump ".expand('<cword>'))<CR>
" nnoremap <silent><Leader><CR>

" for i in range(1, 9)
" 	    execute 'nnoremap e' . i . ' ' . i . 'gt'
" endfor

"" color settings
colorscheme wombat_modified
"colorscheme wombat256dave
"colorscheme wombat256i
"colorscheme peaksea
"set background=dark
set t_Co=256
"set laststatus=2
set cursorline
" set cursorcolumn
"" clipboard, encoding
" set clipboard+=unnamed
set encoding=utf-8
set list  " can be view invisible charactor
set listchars=tab:>-,trail:.  " View by Tab is '>---', Space is '.'

"=========================
" Navigation settings
"=========================
"" window, number, syntax and etc
set splitbelow
set splitright
set foldmethod=indent
set foldlevel=99
set hlsearch
set number
set showmatch
syntax on

"" buffer setting
:set hidden
" nnoremap <silent> bl :<C-u>ls<CR> " for default setting
nnoremap <silent> bl :<C-u>:CtrlPBuffer<CR>
nnoremap <silent> bh :bprev<CR>
nnoremap <silent> bs :bnext<CR>
nnoremap <silent> bo :bd<CR>


"=========================
" Each plugin settings
"=========================
"" coc.vim
"" General
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
" 
" function! s:check_back_space() abort
" 	  let col = col('.') - 1
" 	    return !col || getline('.')[col - 1]  =~# '\s'
" endfunction
" 
"" Shortcuts
" nmap <silent> <space><space> :<C-u>CocList<cr>
" nmap <silent> <space>h :<C-u>call CocAction('doHover')<cr>
" nmap <silent> ef <Plug>(coc-definition)
" nmap <silent> er <Plug>(coc-references)
" nmap <silent> etf <Plug>(coc-type-definition)
" nmap <silent> ei <Plug>(coc-implementation)
" nmap <silent> rn <Plug>(coc-rename)
" nmap <silent> fmt <Plug>(coc-format)
" nnoremap <silent> gk :call <SID>show_documentation()<CR>

"" function! s:show_documentation()
" 	if &filetype ==# 'vim'
" 		execute 'h '.expand('<cword>')
" 	else
" 		if coc#util#has_float()
" 			pc
" 		else
" 			call CocActionAsync('doHover')
" 		endif
" 	endif
" endfunction

"" Navigation
" Use `[g` and `]g` to navigate diagnostics
" nmap <silent> [g <Plug>(coc-diagnostic-prev)
" nmap <silent> ]g <Plug>(coc-diagnostic-next)

"" Solargraph
let g:coc_global_extensions = ['coc-solargraph']


"* For python settings *"
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
let python_highlight_all=1


"=========================
" ETC
"=========================
"ack.vim setting
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>
let g:ackprg = 'ag --nogroup --nocolor --column'

"twitter
let twitvim_enable_python = 1
let twitvim_browser_cmd = 'firefox'
let twitvim_force_ssl = 1
let twitvim_count = 600

"  vista.vim setting
"function! NearestMethodOrFunction() abort
"	  return get(b:, 'vista_nearest_method_or_function', '')
"endfunction
"
"set statusline+=%{NearestMethodOrFunction()}
"
"" By default vista.vim never run if you don't call it explicitly.
"" "
"" " If you want to show the nearest function in your statusline
"" automatically,
"" " you can add the following line to your vimrc 
"autocmd VimEnter * call vista#RunForNearestMethodOrFunction()


"=========================
" Plugin
"=========================
" How to install below plugins -> :PlugInstall
"
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
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
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'liuchengxu/vista.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mileszs/ack.vim'
Plug 'majutsushi/tagbar'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Example for plugin setting
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
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'

" Initialize plugin system
call plug#end()
