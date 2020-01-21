let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <SNR>67_AutoPairsReturn =AutoPairsReturn()
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
nnoremap :di :vertical diffsplit 
nnoremap :bk :Bookmark
nnoremap ^ $
nnoremap <silent> bo :bd
nnoremap <silent> bs :bnext
nnoremap <silent> bh :bprev
nnoremap <silent> bl ::CtrlPBuffer
nnoremap bw :w
nnoremap bz :vnew
nnoremap bv :new
nnoremap dj ]c
nnoremap dk [c
nnoremap eo :q
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
nnoremap h h
nnoremap l e
nnoremap m b
nnoremap n k
nnoremap s l
nnoremap t j
nnoremap <SNR>85_: :=v:count ? v:count : ''
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))
nmap <C-Bslash>t :cs find t =expand('<cword>')
nmap <C-Bslash>s :cs find s =expand('<cword>')
nmap <C-Bslash>i :cs find i =expand('<cfile>')
nmap <C-Bslash>g :cs find g =expand('<cword>')
nmap <C-Bslash>f :cs find f =expand('<cfile>')
nmap <C-Bslash>e :cs find e =expand('<cword>')
nmap <C-Bslash>d :cs find d =expand('<cword>')
nmap <C-Bslash>c :cs find c =expand('<cword>')
map <C-P> <Plug>(ctrlp)
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
map <silent> <C-E><C-H><C-F> <Plug>(RivHelpFile)
map <silent> <C-E>hf <Plug>(RivHelpFile)
noremap <Plug>(RivHelpFile) :RivHelpFile
map <silent> <C-E><C-H><C-T> <Plug>(RivHelpTodo)
map <silent> <C-E>ht <Plug>(RivHelpTodo)
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
map <silent> <C-E><C-S><C-V> <Plug>(RivScratchView)
map <silent> <C-E>sv <Plug>(RivScratchView)
noremap <Plug>(RivScratchView) :RivScratchView
map <silent> <C-E><C-S><C-C> <Plug>(RivScratchCreate)
map <silent> <C-E>sc <Plug>(RivScratchCreate)
noremap <Plug>(RivScratchCreate) :RivScratchCreate
map <silent> <C-E><C-W><C-I> <Plug>(RivProjectHtmlIndex)
map <silent> <C-E>wi <Plug>(RivProjectHtmlIndex)
noremap <Plug>(RivProjectHtmlIndex) :RivProjectHtmlIndex
map <silent> <C-E><C-W><C-A> <Plug>(RivProjectList)
map <silent> <C-E>wa <Plug>(RivProjectList)
noremap <Plug>(RivProjectList) :RivProjectList
map <silent> <C-E><C-W><C-W> <Plug>(RivProjectIndex)
map <silent> <C-E>ww <Plug>(RivProjectIndex)
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
vmap <C-T> <Plug>TwitvimVisual
vmap <M-t> <Plug>TwitvimVisual
noremap <SNR>22_Visual y:call twitvim#post_twitter(@", 0)
nnoremap <C-U> :noh
nnoremap <C-N> 
nnoremap <C-T> 
nnoremap <C-K> N
nnoremap <C-J> n
imap  <Plug>DiscretionaryEnd
vmap ô <Plug>TwitvimVisual
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
set nomodeline
set pyxversion=2
set ruler
set runtimepath=~/.vim,~/.vim/plugged/alchemist.vim/,~/.vim/plugged/ale/,~/.vim/plugged/vim-endwise/,~/.vim/plugged/vim-elixir/,~/.vim/plugged/riv.vim/,~/.vim/plugged/vim-shellutils/,~/.vim/plugged/nerdtree/,~/.vim/plugged/vim-rails/,~/.vim/plugged/vim-ruby/,~/.vim/plugged/xterm-color-table.vim/,~/.vim/plugged/Colorizer/,~/.vim/plugged/coc.nvim/,~/.vim/plugged/ctrlp.vim/,~/.vim/plugged/ack.vim/,~/.vim/plugged/tagbar/,~/.vim/plugged/gen_tags.vim/,~/.vim/plugged/auto-pairs/,~/.vim/plugged/vim-slim/,~/.vim/plugged/vim-javascript/,~/.vim/plugged/vim-json/,~/.vim/plugged/vim-github-dashboard/,/usr/share/vim/vimfiles,/usr/share/vim/vim82,/usr/share/vim/vimfiles/after,~/.vim/plugged/alchemist.vim/after,~/.vim/plugged/riv.vim/after,~/.vim/plugged/vim-rails/after,~/.vim/plugged/vim-javascript/after,~/.vim/after
set showmatch
set splitbelow
set splitright
set suffixes=.bak,~,.o,.info,.swp,.aux,.bbl,.blg,.brf,.cb,.dvi,.idx,.ilg,.ind,.inx,.jpg,.log,.out,.png,.toc
set tags=./tags,./TAGS,tags,TAGS,~/.cache/tags_dir/homekandaappanime_ec/prj_tags
set undodir=~/.cache/vim/undo//
set window=47
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/app/anime_ec/getting-started-webpack
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
edit ~/app/anime_ec/using-babel-loader/public/js/bundle.js
set splitbelow splitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <silent> <M-n> :call AutoPairsJump()a
inoremap <buffer> <silent> <expr> <M-p> AutoPairsToggle()
inoremap <buffer> <silent> <M-b> =AutoPairsBackInsert()
inoremap <buffer> <silent> <M-e> =AutoPairsFastWrap()
inoremap <buffer> <silent> <C-H> =AutoPairsDelete()
inoremap <buffer> <silent> <BS> =AutoPairsDelete()
inoremap <buffer> <silent> <M-'> =AutoPairsMoveCharacter('''')
inoremap <buffer> <silent> <M-"> =AutoPairsMoveCharacter('"')
inoremap <buffer> <silent> <M-}> =AutoPairsMoveCharacter('}')
inoremap <buffer> <silent> <M-{> =AutoPairsMoveCharacter('{')
inoremap <buffer> <silent> <M-]> =AutoPairsMoveCharacter(']')
inoremap <buffer> <silent> <M-[> =AutoPairsMoveCharacter('[')
inoremap <buffer> <silent> <M-)> =AutoPairsMoveCharacter(')')
inoremap <buffer> <silent> <M-(> =AutoPairsMoveCharacter('(')
inoremap <buffer> <silent> § =AutoPairsMoveCharacter('''')
inoremap <buffer> <silent> ¢ =AutoPairsMoveCharacter('"')
inoremap <buffer> <silent> © =AutoPairsMoveCharacter(')')
inoremap <buffer> <silent> ¨ =AutoPairsMoveCharacter('(')
inoremap <buffer> <silent> î :call AutoPairsJump()a
inoremap <buffer> <silent> <expr> ð AutoPairsToggle()
inoremap <buffer> <silent> â =AutoPairsBackInsert()
inoremap <buffer> <silent> å =AutoPairsFastWrap()
inoremap <buffer> <silent> ý =AutoPairsMoveCharacter('}')
inoremap <buffer> <silent> û =AutoPairsMoveCharacter('{')
inoremap <buffer> <silent> Ý =AutoPairsMoveCharacter(']')
inoremap <buffer> <silent> Û =AutoPairsMoveCharacter('[')
noremap <buffer> <silent> <M-n> :call AutoPairsJump()
noremap <buffer> <silent> <M-p> :call AutoPairsToggle()
inoremap <buffer> <silent>  =AutoPairsDelete()
inoremap <buffer> <silent>   =AutoPairsSpace()
inoremap <buffer> <silent> " =AutoPairsInsert('"')
inoremap <buffer> <silent> ' =AutoPairsInsert('''')
inoremap <buffer> <silent> ( =AutoPairsInsert('(')
inoremap <buffer> <silent> ) =AutoPairsInsert(')')
noremap <buffer> <silent> î :call AutoPairsJump()
noremap <buffer> <silent> ð :call AutoPairsToggle()
inoremap <buffer> <silent> [ =AutoPairsInsert('[')
inoremap <buffer> <silent> ] =AutoPairsInsert(']')
inoremap <buffer> <silent> ` =AutoPairsInsert('`')
inoremap <buffer> <silent> { =AutoPairsInsert('{')
inoremap <buffer> <silent> } =AutoPairsInsert('}')
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
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
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=//%s
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
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%\\S%\\+\ \ %#%[cefi]%[rxod]%[eir]%[a-z]%#%\\x1b[0m\ %\\+%\\S%\\+%$%\\&%\\x1b%\\S%\\+\ \ %#%m%\\>%\\x1b[0m\ \ %#%f,%\\s\ %#%[cefi]%[rxod]%[eir]%[a-z]%#\ %\\+%\\S%\\+%$%\\&%\\s\ %#%m%\\>\ \ %#%f,\ %#Overwrite%.%#%\\S%\\+\ \ %#%m%\\x1b[0m\ \ %#%f,%-G\ %#Overwrite%.%#\"h\"%.%#,%+GStarted\ %\\u%\\u%.%#,%+GCompleted\ %\\d%\\d%\\d%.%#,%+G[ActiveJob]%.%#]\ Perform%.%#,%.%#rails\ test\ %f:%l,%+GCurrent\ version:%.%#,%+G\ %#Status\ %#Migration\ ID%.%#,%+G\ The\ fixture\ ID\ for\ %.%#,%f:\ %s\ (%m)%$%\\&%.%#/fixtures/%.%#(%\\d%\\+),%+G\ %#Prefix\ %#Verb%.%#,%+G\ %#Code\ LOC:\ %.%#,%+GAbout\ your\ application's\ environment,%+Grun\ %\\S%#::Application.routes,%+Irails\ %\\S%\\+%\\s%\\+#\ %.%#,%+Eruby:%.%#(LoadError),%+EUsage:%.%#,%+ECould\ not\ find\ generator%.%#,%+EType\ 'rails'\ for\ help.,%\\&completion=rails#complete_rails,%\\&start=console,%\\&terminal=%\\C%\\%%(console%\\|dbconsole%\\|server%\\|%[cs]%\\|db%\\)%\\>:%\\@!%\\ze%.%#,%\\&force_start=%\\C%\\%%(console%\\|dbconsole%\\|server%\\|%[cs]%\\|db%\\)%\\>:%\\@!%\\ze%.%#,%\\&default=default,%D(in\ %f),%\\s%#%\\d%#:%#\ %#from\ %f:%l:%m,%\\s%#%\\d%#:%#\ %#from\ %f:%l:,%\\s%##\ %f:%l:%m%\\&%.%#%\\D:%\\d%\\+:%.%#,%\\s%##\ %f:%l%\\&%.%#%\\D:%\\d%\\+,%\\s%#[%f:%l:\ %#%m%\\&%.%#%\\D:%\\d%\\+:%.%#,%\\s%#%f:%l:\ %#%m%\\&%.%#%\\D:%\\d%\\+:%.%#,%\\s%#%f:%l:,%m\ [%f:%l]:,%+Erake\ aborted!,%+EDon't\ know\ how\ to\ build\ task\ %.%#,%+Einvalid\ option:%.%#,%+Irake\ %\\S%\\+%\\s%\\+#\ %.%#,%\\&dir=/home/kanda/app/anime_ec,%\\&buffer=%%:s/.*/\\=rails#buffer(submatch(0)).default_task(exists('l#')\ ?\ l#\ :\ 0)/
setlocal noexpandtab
if &filetype != 'javascript'
setlocal filetype=javascript
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
setlocal indentexpr=GetJavascriptIndent()
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e,0],0)
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeencoding=
setlocal makeprg=bin/rails
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=javascriptcomplete#CompleteJS
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
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.js
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'javascript'
setlocal syntax=javascript
endif
setlocal tabstop=8
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
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
let s:l = 32 - ((31 * winheight(0) + 23) / 47)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
32
normal! 02|
tabnext 1
badd +7 ~/app/anime_ec/using-babel-loader/package.json
badd +2 ~/app/anime_ec/using-babel-loader/src/js/app.js
badd +33 ~/app/anime_ec/using-babel-loader/webpack.config.js
badd +0 ~/app/anime_ec/using-babel-loader/public/js/bundle.js
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
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
