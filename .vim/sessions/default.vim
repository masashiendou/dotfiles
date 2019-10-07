let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <expr> <BS> coc#_insert_key('request', '83b9d21b-e8a2-11e9-8cfe-bf483137232b')
inoremap <silent> <Plug>CocRefresh =coc#_complete()
inoremap <silent> <Plug>(ale_complete) :ALEComplete
map <silent>  <Plug>(RivHelpFile)
map <silent> hf <Plug>(RivHelpFile)
map <silent>  <Plug>(RivHelpTodo)
map <silent> ht <Plug>(RivHelpTodo)
map <silent>  <Plug>(RivScratchView)
map <silent> sv <Plug>(RivScratchView)
map <silent>  <Plug>(RivScratchCreate)
map <silent> sc <Plug>(RivScratchCreate)
map <silent> 	 <Plug>(RivProjectHtmlIndex)
map <silent> wi <Plug>(RivProjectHtmlIndex)
map <silent>  <Plug>(RivProjectList)
map <silent> wa <Plug>(RivProjectList)
map <silent>  <Plug>(RivProjectIndex)
map <silent> ww <Plug>(RivProjectIndex)
nnoremap <NL> n
nnoremap  N
nnoremap  
map  <Plug>(ctrlp)
vmap  <Plug>TwitvimVisual
nnoremap  
nnoremap  :noh
nmap t :cs find t =expand('<cword>')
nmap s :cs find s =expand('<cword>')
nmap i :cs find i =expand('<cfile>')
nmap g :cs find g =expand('<cword>')
nmap f :cs find f =expand('<cfile>')
nmap e :cs find e =expand('<cword>')
nmap d :cs find d =expand('<cword>')
nmap c :cs find c =expand('<cword>')
nnoremap  a :Ack! 
nnoremap <silent>  n :copen
nnoremap <silent>  o :cclose
nnoremap <silent>  k :cprevious
nnoremap <silent>  j :cnext
nnoremap <silent>  g :Gtags
nnoremap <silent>  r :exe('Gtags -r '.expand('<cword>'))
nnoremap <silent>  d :exe('Gtags '.expand('<cword>'))
nnoremap <silent>  f :GtagsCursor
nnoremap <silent>  l :Gtags -f %
nnoremap <silent>  t :TagbarOpen fjc
nnoremap <silent>   H 
nnoremap <silent>   T 
nnoremap <silent>   s :vertical res -10
nnoremap <silent>   h :vertical res +10
nnoremap <silent>   t :res -10
nnoremap <silent>   n :res +10
nnoremap <silent>  W :wincmd W
nnoremap <silent>  w :wincmd w
nnoremap <silent>  T :NERDTreeToggle
nnoremap $ ^
nnoremap :bk :Bookmark
nnoremap ^ $
nnoremap <silent> bo :bd
nnoremap <silent> bs :bnext
nnoremap <silent> bh :bprev
nnoremap <silent> bl ::CtrlPBuffer
nnoremap bw :w
nnoremap bz :vnew
nnoremap bv :new
nnoremap eo :q
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
nnoremap h h
nnoremap l e
nnoremap m b
nnoremap n k
nnoremap s l
nnoremap t j
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))
nnoremap <silent> <Plug>(ctrlp) :CtrlP
onoremap <silent> <Plug>(coc-funcobj-a) :call coc#rpc#request('selectFunction', [v:false, ''])
onoremap <silent> <Plug>(coc-funcobj-i) :call coc#rpc#request('selectFunction', [v:true, ''])
vnoremap <silent> <Plug>(coc-funcobj-a) :call coc#rpc#request('selectFunction', [v:false, visualmode()])
vnoremap <silent> <Plug>(coc-funcobj-i) :call coc#rpc#request('selectFunction', [v:true, visualmode()])
nnoremap <silent> <Plug>(coc-cursors-position) :call coc#rpc#request('cursorsSelect', [bufnr('%'), 'position', 'n'])
nnoremap <silent> <Plug>(coc-cursors-word) :call coc#rpc#request('cursorsSelect', [bufnr('%'), 'word', 'n'])
vnoremap <silent> <Plug>(coc-cursors-range) :call coc#rpc#request('cursorsSelect', [bufnr('%'), 'range', visualmode()])
nnoremap <Plug>(coc-refactor) :call       CocActionAsync('refactor')
nnoremap <Plug>(coc-command-repeat) :call       CocAction('repeatCommand')
nnoremap <Plug>(coc-float-jump) :call       coc#util#float_jump()
nnoremap <Plug>(coc-float-hide) :call       coc#util#float_hide()
nnoremap <Plug>(coc-fix-current) :call       CocActionAsync('doQuickfix')
nnoremap <Plug>(coc-openlink) :call       CocActionAsync('openLink')
nnoremap <Plug>(coc-references) :call       CocAction('jumpReferences')
nnoremap <Plug>(coc-type-definition) :call       CocAction('jumpTypeDefinition')
nnoremap <Plug>(coc-implementation) :call       CocAction('jumpImplementation')
nnoremap <Plug>(coc-declaration) :call       CocAction('jumpDeclaration')
nnoremap <Plug>(coc-definition) :call       CocAction('jumpDefinition')
nnoremap <Plug>(coc-diagnostic-prev-error) :call       CocActionAsync('diagnosticPrevious', 'error')
nnoremap <Plug>(coc-diagnostic-next-error) :call       CocActionAsync('diagnosticNext',     'error')
nnoremap <Plug>(coc-diagnostic-prev) :call       CocActionAsync('diagnosticPrevious')
nnoremap <Plug>(coc-diagnostic-next) :call       CocActionAsync('diagnosticNext')
nnoremap <Plug>(coc-diagnostic-info) :call       CocActionAsync('diagnosticInfo')
nnoremap <Plug>(coc-format) :call       CocActionAsync('format')
nnoremap <Plug>(coc-rename) :call       CocActionAsync('rename')
nnoremap <Plug>(coc-codeaction) :call       CocActionAsync('codeAction',         '')
vnoremap <Plug>(coc-codeaction-selected) :call       CocActionAsync('codeAction',         visualmode())
vnoremap <Plug>(coc-format-selected) :call       CocActionAsync('formatSelected',     visualmode())
nnoremap <Plug>(coc-codelens-action) :call       CocActionAsync('codeLensAction')
nnoremap <Plug>(coc-range-select) :call       CocAction('rangeSelect',     '', v:true)
vnoremap <Plug>(coc-range-select-backword) :call       CocAction('rangeSelect',     visualmode(), v:false)
vnoremap <Plug>(coc-range-select) :call       CocAction('rangeSelect',     visualmode(), v:true)
xnoremap <Plug>ColorFgBg :ColorSwapFgBg
nnoremap <Plug>ColorFgBg :ColorSwapFgBg
xnoremap <Plug>ColorContrast :ColorContrast
nnoremap <Plug>ColorContrast :ColorContrast
xnoremap <Plug>Colorizer :ColorHighlight
nnoremap <Plug>Colorizer :ColorToggle
noremap <Plug>(RivGetLatest) :RivGetLatest
noremap <Plug>(RivDirectives) :RivDirectives
noremap <Plug>(RivSpecification) :RivSpecification
noremap <Plug>(RivCheatSheet) :RivCheatSheet
noremap <Plug>(RivPrimer) :RivPrimer
noremap <Plug>(RivQuickStart) :RivQuickStart
noremap <Plug>(RivDoc) :RivDoc
noremap <Plug>(RivInstruction) :RivInstruction
noremap <Plug>(RivIntro) :RivIntro
noremap <Plug>(RivVimTest) : RivVimTest
noremap <Plug>(RivHelpSection) :RivHelpSection
noremap <Plug>(RivHelpFile) :RivHelpFile
noremap <Plug>(RivHelpTodo) :RivHelpTodo
noremap <Plug>(RivSuperMEnter) :RivSuperMEnter
noremap <Plug>(RivSuperSEnter) :RivSuperSEnter
noremap <Plug>(RivSuperCEnter) :RivSuperCEnter
noremap <Plug>(RivSuperEnter) :RivSuperEnter
noremap <Plug>(RivTestObj) :RivTestObj
noremap <Plug>(RivTestTest) :RivTestTest
noremap <Plug>(RivTestFold1) :RivTestFold1
noremap <Plug>(RivTestFold0) :RivTestFold0
noremap <Plug>(RivReload) :RivReload
noremap <Plug>(Riv2BuildPath) :Riv2BuildPath
noremap <Plug>(Riv2Latex) :Riv2Latex
noremap <Plug>(Riv2Xml) :Riv2Xml
noremap <Plug>(Riv2Pdf) :Riv2Pdf
noremap <Plug>(Riv2S5) :Riv2S5
noremap <Plug>(Riv2Odt) :Riv2Odt
noremap <Plug>(Riv2HtmlProject) :Riv2HtmlProject
noremap <Plug>(Riv2HtmlAndBrowse) :Riv2HtmlAndBrowse
noremap <Plug>(Riv2HtmlFile) :Riv2HtmlFile
noremap <Plug>(RivDeleteFile) :RivDeleteFile
noremap <Plug>(RivCreateExplicitMark) :RivCreateExplicitMark
noremap <Plug>(RivCreateTransition) :RivCreateTransition
noremap <Plug>(RivCreateHyperLink) :RivCreateHyperLink
noremap <Plug>(RivCreateLiteralBlock) :RivCreateLiteralBlock
noremap <Plug>(RivCreateLiteralInline) : RivCreateLiteralInline
noremap <Plug>(RivCreateInterpreted) : RivCreateInterpreted
noremap <Plug>(RivCreateStrong) : RivCreateStrong
noremap <Plug>(RivCreateEmphasis) : RivCreateEmphasis
noremap <Plug>(RivCreateContent) :RivCreateContent
noremap <Plug>(RivCreateTime) :RivCreateTime
noremap <Plug>(RivCreateDate) :RivCreateDate
noremap <Plug>(RivCreateFoot) :RivCreateFoot
noremap <Plug>(RivCreateGitLink) :RivCreateGitLink
noremap <Plug>(RivCreateLink) :RivCreateLink
noremap <Plug>(RivTodoUpdateCache) :RivTodoUpdateCache
noremap <Plug>(RivTodoType4) :RivTodoType4
noremap <Plug>(RivTodoType3) :RivTodoType3
noremap <Plug>(RivTodoType2) :RivTodoType2
noremap <Plug>(RivTodoType1) :RivTodoType1
noremap <Plug>(RivTodoAsk) :RivTodoAsk
noremap <Plug>(RivTodoPrior) :RivTodoPrior
noremap <Plug>(RivTodoDate) :RivTodoDate
noremap <Plug>(RivTodoDel) :RivTodoDel
noremap <Plug>(RivTodoToggle) :RivTodoToggle
noremap <Plug>(RivListType4) :RivListType4
noremap <Plug>(RivListType3) :RivListType3
noremap <Plug>(RivListType2) :RivListType2
noremap <Plug>(RivListType1) :RivListType1
noremap <Plug>(RivListType0) :RivListType0
noremap <Plug>(RivListDelete) :RivListDelete
noremap <Plug>(RivListToggle) :RivListToggle
noremap <Plug>(RivListSup) :RivListSup
noremap <Plug>(RivListSub) :RivListSub
noremap <Plug>(RivListNew) :RivListNew
noremap <Plug>(RivTablePrevCell) :RivTablePrevCell
noremap <Plug>(RivTableNextCell) :RivTableNextCell
noremap <Plug>(RivTableFormat) :RivTableFormat
noremap <Plug>(RivTableCreate) :RivTableCreate
noremap <Plug>(RivTitle0) :RivTitle0
noremap <Plug>(RivTitle6) :RivTitle6
noremap <Plug>(RivTitle5) :RivTitle5
noremap <Plug>(RivTitle4) :RivTitle4
noremap <Plug>(RivTitle3) :RivTitle3
noremap <Plug>(RivTitle2) :RivTitle2
noremap <Plug>(RivTitle1) :RivTitle1
noremap <Plug>(RivItemToggle) :RivItemToggle
noremap <Plug>(RivItemClick) :RivItemClick
noremap <Plug>(RivNormEqual) :RivNormEqual
noremap <Plug>(RivNormLeft) :RivNormLeft
noremap <Plug>(RivNormRight) :RivNormRight
noremap <Plug>(RivShiftEqual) :RivShiftEqual
noremap <Plug>(RivShiftLeft) :RivShiftLeft
noremap <Plug>(RivShiftRight) :RivShiftRight
noremap <Plug>(RivLinkPrev) :RivLinkPrev
noremap <Plug>(RivLinkNext) :RivLinkNext
noremap <Plug>(RivLinkShow) :RivLinkShow
noremap <Plug>(RivLinkOpen) :RivLinkOpen
noremap <Plug>(RivFoldUpdate) :RivFoldUpdate
noremap <Plug>(RivFoldAll) :RivFoldAll
noremap <Plug>(RivFoldToggle) :RivFoldToggle
noremap <Plug>(RivScratchView) :RivScratchView
noremap <Plug>(RivScratchCreate) :RivScratchCreate
noremap <Plug>(RivProjectHtmlIndex) :RivProjectHtmlIndex
noremap <Plug>(RivProjectList) :RivProjectList
noremap <Plug>(RivProjectIndex) :RivProjectIndex
nnoremap <silent> <Plug>(ale_rename) :ALERename
nnoremap <silent> <Plug>(ale_documentation) :ALEDocumentation
nnoremap <silent> <Plug>(ale_hover) :ALEHover
nnoremap <silent> <Plug>(ale_find_references) :ALEFindReferences
nnoremap <silent> <Plug>(ale_go_to_type_definition_in_vsplit) :ALEGoToTypeDefinitionInVSplit
nnoremap <silent> <Plug>(ale_go_to_type_definition_in_split) :ALEGoToTypeDefinitionInSplit
nnoremap <silent> <Plug>(ale_go_to_type_definition_in_tab) :ALEGoToTypeDefinitionInTab
nnoremap <silent> <Plug>(ale_go_to_type_definition) :ALEGoToTypeDefinition
nnoremap <silent> <Plug>(ale_go_to_definition_in_vsplit) :ALEGoToDefinitionInVSplit
nnoremap <silent> <Plug>(ale_go_to_definition_in_split) :ALEGoToDefinitionInSplit
nnoremap <silent> <Plug>(ale_go_to_definition_in_tab) :ALEGoToDefinitionInTab
nnoremap <silent> <Plug>(ale_go_to_definition) :ALEGoToDefinition
nnoremap <silent> <Plug>(ale_fix) :ALEFix
nnoremap <silent> <Plug>(ale_detail) :ALEDetail
nnoremap <silent> <Plug>(ale_lint) :ALELint
nnoremap <silent> <Plug>(ale_reset_buffer) :ALEResetBuffer
nnoremap <silent> <Plug>(ale_disable_buffer) :ALEDisableBuffer
nnoremap <silent> <Plug>(ale_enable_buffer) :ALEEnableBuffer
nnoremap <silent> <Plug>(ale_toggle_buffer) :ALEToggleBuffer
nnoremap <silent> <Plug>(ale_reset) :ALEReset
nnoremap <silent> <Plug>(ale_disable) :ALEDisable
nnoremap <silent> <Plug>(ale_enable) :ALEEnable
nnoremap <silent> <Plug>(ale_toggle) :ALEToggle
nnoremap <silent> <Plug>(ale_last) :ALELast
nnoremap <silent> <Plug>(ale_first) :ALEFirst
nnoremap <silent> <Plug>(ale_next_wrap_warning) :ALENext -wrap -warning
nnoremap <silent> <Plug>(ale_next_warning) :ALENext -warning
nnoremap <silent> <Plug>(ale_next_wrap_error) :ALENext -wrap -error
nnoremap <silent> <Plug>(ale_next_error) :ALENext -error
nnoremap <silent> <Plug>(ale_next_wrap) :ALENextWrap
nnoremap <silent> <Plug>(ale_next) :ALENext
nnoremap <silent> <Plug>(ale_previous_wrap_warning) :ALEPrevious -wrap -warning
nnoremap <silent> <Plug>(ale_previous_warning) :ALEPrevious -warning
nnoremap <silent> <Plug>(ale_previous_wrap_error) :ALEPrevious -wrap -error
nnoremap <silent> <Plug>(ale_previous_error) :ALEPrevious -error
nnoremap <silent> <Plug>(ale_previous_wrap) :ALEPreviousWrap
nnoremap <silent> <Plug>(ale_previous) :ALEPrevious
noremap <SNR>18_Visual y:call twitvim#post_twitter(@", 0)
imap  <Plug>DiscretionaryEnd
inoremap <silent> <expr> " coc#_insert_key('request', '83b9d219-e8a2-11e9-8cfe-bf483137232b')
inoremap <silent> <expr> ' coc#_insert_key('request', '83b9d218-e8a2-11e9-8cfe-bf483137232b')
inoremap <silent> <expr> ( coc#_insert_key('request', '83b9d210-e8a2-11e9-8cfe-bf483137232b')
inoremap <silent> <expr> ) coc#_insert_key('request', '83b9d211-e8a2-11e9-8cfe-bf483137232b')
inoremap <silent> <expr> < coc#_insert_key('request', '83b9d216-e8a2-11e9-8cfe-bf483137232b')
inoremap <silent> <expr> > coc#_insert_key('request', '83b9d217-e8a2-11e9-8cfe-bf483137232b')
vmap ô <Plug>TwitvimVisual
inoremap <silent> <expr> [ coc#_insert_key('request', '83b9d212-e8a2-11e9-8cfe-bf483137232b')
inoremap <silent> <expr> ] coc#_insert_key('request', '83b9d213-e8a2-11e9-8cfe-bf483137232b')
inoremap <silent> <expr> ` coc#_insert_key('request', '83b9d21a-e8a2-11e9-8cfe-bf483137232b')
inoremap <silent> <expr> { coc#_insert_key('request', '83b9d214-e8a2-11e9-8cfe-bf483137232b')
inoremap <silent> <expr> } coc#_insert_key('request', '83b9d215-e8a2-11e9-8cfe-bf483137232b')
cnoreabbr Ack Ack!
let &cpo=s:cpo_save
unlet s:cpo_save
set background=dark
set backspace=indent,eol,start
set backupdir=~/.cache/vim/backup//
set cscopeprg=gtags-cscope
set cscopetag
set directory=~/.cache/vim/swap//
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=en
set hidden
set hlsearch
set listchars=tab:>-,trail:.
set pyxversion=2
set ruler
set runtimepath=~/.vim,~/.vim/plugged/alchemist.vim/,~/.vim/plugged/ale/,~/.vim/plugged/vim-endwise/,~/.vim/plugged/vim-elixir/,~/.vim/plugged/riv.vim/,~/.vim/plugged/vim-shellutils/,~/.vim/plugged/nerdtree/,~/.vim/plugged/vim-rails/,~/.vim/plugged/vim-ruby/,~/.vim/plugged/xterm-color-table.vim/,~/.vim/plugged/Colorizer/,~/.vim/plugged/coc.nvim/,~/.vim/plugged/ctrlp.vim/,~/.vim/plugged/ack.vim/,~/.vim/plugged/tagbar/,~/.vim/plugged/gen_tags.vim/,~/.vim/plugged/vim-github-dashboard/,/usr/share/vim/vimfiles,/usr/share/vim/vim81,/usr/share/vim/vimfiles/after,~/.vim/plugged/alchemist.vim/after,~/.vim/plugged/riv.vim/after,~/.vim/plugged/vim-rails/after,~/.vim/after
set showmatch
set splitbelow
set splitright
set suffixes=.bak,~,.o,.info,.swp,.aux,.bbl,.blg,.brf,.cb,.dvi,.idx,.ilg,.ind,.inx,.jpg,.log,.out,.png,.toc
set tags=./tags,./TAGS,tags,TAGS,~/.cache/tags_dir/homekanda/prj_tags
set undodir=~/.cache/vim/undo//
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
$argadd .vimrc
edit .vimrc
set splitbelow splitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
vnoremap <buffer> <silent> [" :exe "normal! gv"|call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")
nnoremap <buffer> <silent> [" :call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")
vnoremap <buffer> <silent> [] m':exe "normal! gv"|call search('^\s*endf\%[unction]\>', "bW")
nnoremap <buffer> <silent> [] m':call search('^\s*endf\%[unction]\>', "bW")
vnoremap <buffer> <silent> [[ m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "bW")
nnoremap <buffer> <silent> [[ m':call search('^\s*fu\%[nction]\>', "bW")
vnoremap <buffer> <silent> ]" :exe "normal! gv"|call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")
nnoremap <buffer> <silent> ]" :call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")
vnoremap <buffer> <silent> ][ m':exe "normal! gv"|call search('^\s*endf\%[unction]\>', "W")
nnoremap <buffer> <silent> ][ m':call search('^\s*endf\%[unction]\>', "W")
vnoremap <buffer> <silent> ]] m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "W")
nnoremap <buffer> <silent> ]] m':call search('^\s*fu\%[nction]\>', "W")
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:\"\ -,mO:\"\ \ ,eO:\"\",:\"
setlocal commentstring=\"%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'vim'
setlocal filetype=vim
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetVimIndent()
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e,=end,=else,=cat,=fina,=END,0\\,0=\"\\\ 
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,#
setlocal keywordprg=:help
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=8
setlocal noshortname
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'vim'
setlocal syntax=vim
endif
setlocal tabstop=8
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=78
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 229 - ((0 * winheight(0) + 29) / 59)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
229
normal! 0
tabnext 1
badd +0 .vimrc
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOS
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
