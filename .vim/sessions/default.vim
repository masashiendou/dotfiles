let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <SNR>69_AutoPairsReturn =AutoPairsReturn()
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
vmap  <Plug>(caw:hatpos:toggle)
nmap  <Plug>(caw:hatpos:toggle)
nnoremap <NL> N
nnoremap  n
nnoremap  
map  <Plug>(ctrlp)
vmap  <Plug>TwitvimVisual
nnoremap  
nnoremap  :noh
nmap o <Plug>ZoomWin
nmap t :cs find t =expand('<cword>')
nmap s :cs find s =expand('<cword>')
nmap i :cs find i =expand('<cfile>')
nmap g :cs find g =expand('<cword>')
nmap f :cs find f =expand('<cfile>')
nmap e :cs find e =expand('<cword>')
nmap d :cs find d =expand('<cword>')
nmap c :cs find c =expand('<cword>')
map  a
nnoremap  a :Ack! 
nnoremap <silent>  z :ZoomWin
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
nnoremap :ret :UserTwitter GirlSearch01
nnoremap :fav :FavTwitter
nnoremap :ut :UserTwitter
nnoremap :st :SearchTwitter
nnoremap :ft :FriendsTwitter
nnoremap :bk :Bookmark
nnoremap ^ $
nnoremap <silent> bo :bd
nnoremap <silent> bs :bnext
nnoremap <silent> bh :bprev
nnoremap <silent> bl ::CtrlPBuffer
nnoremap bw :w
nnoremap bz :vnew
nnoremap bv :new
nnoremap dk ]c
nnoremap dj [c
nnoremap eo :q
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
xmap gc <Plug>(caw:prefix)
nmap gc <Plug>(caw:prefix)
nnoremap h h
nnoremap l e
nnoremap m b
nnoremap n k
nnoremap s l
nnoremap t j
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))
nmap <C-W>o <Plug>ZoomWin
xmap <Plug>(caw:prefix)O <Plug>(caw:jump:comment-prev)
nmap <Plug>(caw:prefix)O <Plug>(caw:jump:comment-prev)
xmap <Plug>(caw:prefix)o <Plug>(caw:jump:comment-next)
nmap <Plug>(caw:prefix)o <Plug>(caw:jump:comment-next)
nnoremap <silent> <Plug>(caw:jump:comment-prev) :call caw#keymapping_stub('n', 'jump', 'comment-prev')
nnoremap <silent> <Plug>(caw:jump:comment-next) :call caw#keymapping_stub('n', 'jump', 'comment-next')
xmap <Plug>(caw:prefix)b <Plug>(caw:box:comment)
nmap <Plug>(caw:prefix)b <Plug>(caw:box:comment)
xnoremap <silent> <Plug>(caw:box:comment) :call caw#keymapping_stub('x', 'box', 'comment')
nnoremap <silent> <Plug>(caw:box:comment) :call caw#keymapping_stub('n', 'box', 'comment')
xmap <Plug>(caw:prefix)uw <Plug>(caw:wrap:uncomment)
nmap <Plug>(caw:prefix)uw <Plug>(caw:wrap:uncomment)
xmap <Plug>(caw:prefix)w <Plug>(caw:wrap:comment)
nmap <Plug>(caw:prefix)w <Plug>(caw:wrap:comment)
xnoremap <silent> <Plug>(caw:wrap:toggle) :call caw#keymapping_stub('x', 'wrap', 'toggle')
nnoremap <silent> <Plug>(caw:wrap:toggle) :call caw#keymapping_stub('n', 'wrap', 'toggle')
xnoremap <silent> <Plug>(caw:wrap:uncomment) :call caw#keymapping_stub('x', 'wrap', 'uncomment')
nnoremap <silent> <Plug>(caw:wrap:uncomment) :call caw#keymapping_stub('n', 'wrap', 'uncomment')
xnoremap <silent> <Plug>(caw:wrap:comment) :call caw#keymapping_stub('x', 'wrap', 'comment')
nnoremap <silent> <Plug>(caw:wrap:comment) :call caw#keymapping_stub('n', 'wrap', 'comment')
xmap <Plug>(caw:prefix)ua <Plug>(caw:dollarpos:uncomment)
nmap <Plug>(caw:prefix)ua <Plug>(caw:dollarpos:uncomment)
xmap <Plug>(caw:prefix)a <Plug>(caw:dollarpos:comment)
nmap <Plug>(caw:prefix)a <Plug>(caw:dollarpos:comment)
xnoremap <silent> <Plug>(caw:a:toggle) :call caw#keymapping_stub_deprecated('x', 'dollarpos', 'toggle', 'a')
xnoremap <silent> <Plug>(caw:dollarpos:toggle) :call caw#keymapping_stub('x', 'dollarpos', 'toggle')
nnoremap <silent> <Plug>(caw:a:toggle) :call caw#keymapping_stub_deprecated('n', 'dollarpos', 'toggle', 'a')
nnoremap <silent> <Plug>(caw:dollarpos:toggle) :call caw#keymapping_stub('n', 'dollarpos', 'toggle')
xnoremap <silent> <Plug>(caw:a:uncomment) :call caw#keymapping_stub_deprecated('x', 'dollarpos', 'uncomment', 'a')
xnoremap <silent> <Plug>(caw:dollarpos:uncomment) :call caw#keymapping_stub('x', 'dollarpos', 'uncomment')
nnoremap <silent> <Plug>(caw:a:uncomment) :call caw#keymapping_stub_deprecated('n', 'dollarpos', 'uncomment', 'a')
nnoremap <silent> <Plug>(caw:dollarpos:uncomment) :call caw#keymapping_stub('n', 'dollarpos', 'uncomment')
xnoremap <silent> <Plug>(caw:a:comment) :call caw#keymapping_stub_deprecated('x', 'dollarpos', 'comment', 'a')
xnoremap <silent> <Plug>(caw:dollarpos:comment) :call caw#keymapping_stub('x', 'dollarpos', 'comment')
nnoremap <silent> <Plug>(caw:a:comment) :call caw#keymapping_stub_deprecated('n', 'dollarpos', 'comment', 'a')
nnoremap <silent> <Plug>(caw:dollarpos:comment) :call caw#keymapping_stub('n', 'dollarpos', 'comment')
xmap <Plug>(caw:prefix)uI <Plug>(caw:zeropos:uncomment)
nmap <Plug>(caw:prefix)uI <Plug>(caw:zeropos:uncomment)
xmap <Plug>(caw:prefix)I <Plug>(caw:zeropos:comment)
nmap <Plug>(caw:prefix)I <Plug>(caw:zeropos:comment)
xnoremap <silent> <Plug>(caw:I:toggle) :call caw#keymapping_stub_deprecated('x', 'zeropos', 'toggle', 'I')
xnoremap <silent> <Plug>(caw:zeropos:toggle) :call caw#keymapping_stub('x', 'zeropos', 'toggle')
nnoremap <silent> <Plug>(caw:I:toggle) :call caw#keymapping_stub_deprecated('n', 'zeropos', 'toggle', 'I')
nnoremap <silent> <Plug>(caw:zeropos:toggle) :call caw#keymapping_stub('n', 'zeropos', 'toggle')
xnoremap <silent> <Plug>(caw:I:uncomment) :call caw#keymapping_stub_deprecated('x', 'zeropos', 'uncomment', 'I')
xnoremap <silent> <Plug>(caw:zeropos:uncomment) :call caw#keymapping_stub('x', 'zeropos', 'uncomment')
nnoremap <silent> <Plug>(caw:I:uncomment) :call caw#keymapping_stub_deprecated('n', 'zeropos', 'uncomment', 'I')
nnoremap <silent> <Plug>(caw:zeropos:uncomment) :call caw#keymapping_stub('n', 'zeropos', 'uncomment')
xnoremap <silent> <Plug>(caw:I:comment) :call caw#keymapping_stub_deprecated('x', 'zeropos', 'comment', 'I')
xnoremap <silent> <Plug>(caw:zeropos:comment) :call caw#keymapping_stub('x', 'zeropos', 'comment')
nnoremap <silent> <Plug>(caw:I:comment) :call caw#keymapping_stub_deprecated('n', 'zeropos', 'comment', 'I')
nnoremap <silent> <Plug>(caw:zeropos:comment) :call caw#keymapping_stub('n', 'zeropos', 'comment')
xmap <Plug>(caw:prefix)ui <Plug>(caw:hatpos:uncomment)
nmap <Plug>(caw:prefix)ui <Plug>(caw:hatpos:uncomment)
xmap <Plug>(caw:prefix)i <Plug>(caw:hatpos:comment)
nmap <Plug>(caw:prefix)i <Plug>(caw:hatpos:comment)
xnoremap <silent> <Plug>(caw:tildepos:toggle) :call caw#keymapping_stub_deprecated('x', 'hatpos', 'toggle', 'tildepos')
xnoremap <silent> <Plug>(caw:i:toggle) :call caw#keymapping_stub_deprecated('x', 'hatpos', 'toggle', 'i')
xnoremap <silent> <Plug>(caw:hatpos:toggle) :call caw#keymapping_stub('x', 'hatpos', 'toggle')
nnoremap <silent> <Plug>(caw:tildepos:toggle) :call caw#keymapping_stub_deprecated('n', 'hatpos', 'toggle', 'tildepos')
nnoremap <silent> <Plug>(caw:i:toggle) :call caw#keymapping_stub_deprecated('n', 'hatpos', 'toggle', 'i')
nnoremap <silent> <Plug>(caw:hatpos:toggle) :call caw#keymapping_stub('n', 'hatpos', 'toggle')
xnoremap <silent> <Plug>(caw:tildepos:uncomment) :call caw#keymapping_stub_deprecated('x', 'hatpos', 'uncomment', 'tildepos')
xnoremap <silent> <Plug>(caw:i:uncomment) :call caw#keymapping_stub_deprecated('x', 'hatpos', 'uncomment', 'i')
xnoremap <silent> <Plug>(caw:hatpos:uncomment) :call caw#keymapping_stub('x', 'hatpos', 'uncomment')
nnoremap <silent> <Plug>(caw:tildepos:uncomment) :call caw#keymapping_stub_deprecated('n', 'hatpos', 'uncomment', 'tildepos')
nnoremap <silent> <Plug>(caw:i:uncomment) :call caw#keymapping_stub_deprecated('n', 'hatpos', 'uncomment', 'i')
nnoremap <silent> <Plug>(caw:hatpos:uncomment) :call caw#keymapping_stub('n', 'hatpos', 'uncomment')
xnoremap <silent> <Plug>(caw:tildepos:comment) :call caw#keymapping_stub_deprecated('x', 'hatpos', 'comment', 'tildepos')
xnoremap <silent> <Plug>(caw:i:comment) :call caw#keymapping_stub_deprecated('x', 'hatpos', 'comment', 'i')
xnoremap <silent> <Plug>(caw:hatpos:comment) :call caw#keymapping_stub('x', 'hatpos', 'comment')
nnoremap <silent> <Plug>(caw:tildepos:comment) :call caw#keymapping_stub_deprecated('n', 'hatpos', 'comment', 'tildepos')
nnoremap <silent> <Plug>(caw:i:comment) :call caw#keymapping_stub_deprecated('n', 'hatpos', 'comment', 'i')
nnoremap <silent> <Plug>(caw:hatpos:comment) :call caw#keymapping_stub('n', 'hatpos', 'comment')
map <C-_> a
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
noremap <SNR>23_Visual y:call twitvim#post_twitter(@", 0)
vmap <C-E> <Plug>(caw:hatpos:toggle)
nmap <C-E> <Plug>(caw:hatpos:toggle)
nnoremap <C-U> :noh
nnoremap <C-N> 
nnoremap <C-T> 
nnoremap <C-J> N
nnoremap <C-K> n
imap  <Plug>DiscretionaryEnd
inoremap <C+/> =EasyCloseTag()=SetCursor()
inoremap </ =GetCloseTag()
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
set imactivatefunc=FcitxPySet
set imstatusfunc=FcitxPyGet
set listchars=tab:>-,trail:.
set nomodeline
set pyxversion=2
set ruler
set runtimepath=~/.vim,~/.vim/plugged/alchemist.vim/,~/.vim/plugged/ale/,~/.vim/plugged/vim-endwise/,~/.vim/plugged/vim-elixir/,~/.vim/plugged/riv.vim/,~/.vim/plugged/vim-shellutils/,~/.vim/plugged/nerdtree/,~/.vim/plugged/vim-rails/,~/.vim/plugged/vim-ruby/,~/.vim/plugged/xterm-color-table.vim/,~/.vim/plugged/Colorizer/,~/.vim/plugged/coc.nvim/,~/.vim/plugged/ctrlp.vim/,~/.vim/plugged/ack.vim/,~/.vim/plugged/tagbar/,~/.vim/plugged/gen_tags.vim/,~/.vim/plugged/gtags.vim/,~/.vim/plugged/auto-pairs/,~/.vim/plugged/vim-slim/,~/.vim/plugged/vim-json/,~/.vim/plugged/vim-polyglot/,~/.vim/plugged/vim-javascript/,~/.vim/plugged/vim-markdown/,~/.vim/plugged/closetag.vim/,~/.vim/plugged/caw.vim/,~/.vim/plugged/imcsc-vim/,~/.vim/plugged/rainbow_csv/,~/.vim/plugged/ZoomWin/,~/.vim/plugged/vim-superman/,~/.vim/plugged/markdown-preview.nvim/,~/.vim/plugged/w3m.vim/,~/.vim/plugged/vim-github-dashboard/,/usr/share/vim/vimfiles,/usr/share/vim/vim82,/usr/share/vim/vimfiles/after,~/.vim/plugged/alchemist.vim/after,~/.vim/plugged/riv.vim/after,~/.vim/plugged/vim-rails/after,~/.vim/plugged/vim-polyglot/after,~/.vim/plugged/vim-javascript/after,~/.vim/plugged/caw.vim/after,~/.vim/after
set shiftwidth=0
set showmatch
set splitbelow
set splitright
set suffixes=.bak,~,.o,.info,.swp,.aux,.bbl,.blg,.brf,.cb,.dvi,.idx,.ilg,.ind,.inx,.jpg,.log,.out,.png,.toc
set tabstop=3
set tags=./tags,./TAGS,tags,TAGS,~/.cache/tags_dir/homekandaProjectcalcnotecakephp4-projectapp/prj_tags,~/.cache/tags_dir/homekanda/prj_tags
set undodir=~/.cache/vim/undo//
set window=53
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Project/calcnote/cakephp4-project/app
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
set splitbelow splitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
enew
file NERD_tree_1
balt NERD_tree_1
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
nnoremap <buffer> <silent> <NL> :call nerdtree#ui_glue#invokeKeyMap("<C-j>")
nnoremap <buffer> <silent>  :call nerdtree#ui_glue#invokeKeyMap("<C-k>")
nnoremap <buffer> <silent> - :call nerdtree#ui_glue#invokeKeyMap("-")
nnoremap <buffer> <silent> ? :call nerdtree#ui_glue#invokeKeyMap("?")
nnoremap <buffer> <silent> A :call nerdtree#ui_glue#invokeKeyMap("A")
nnoremap <buffer> <silent> B :call nerdtree#ui_glue#invokeKeyMap("B")
inoremap <buffer> <silent> § =AutoPairsMoveCharacter('''')
inoremap <buffer> <silent> ¢ =AutoPairsMoveCharacter('"')
inoremap <buffer> <silent> © =AutoPairsMoveCharacter(')')
inoremap <buffer> <silent> ¨ =AutoPairsMoveCharacter('(')
nnoremap <buffer> <silent> C :call nerdtree#ui_glue#invokeKeyMap("C")
nnoremap <buffer> <silent> CD :call nerdtree#ui_glue#invokeKeyMap("CD")
inoremap <buffer> <silent> î :call AutoPairsJump()a
inoremap <buffer> <silent> <expr> ð AutoPairsToggle()
inoremap <buffer> <silent> â =AutoPairsBackInsert()
inoremap <buffer> <silent> å =AutoPairsFastWrap()
inoremap <buffer> <silent> ý =AutoPairsMoveCharacter('}')
inoremap <buffer> <silent> û =AutoPairsMoveCharacter('{')
inoremap <buffer> <silent> Ý =AutoPairsMoveCharacter(']')
inoremap <buffer> <silent> Û =AutoPairsMoveCharacter('[')
nnoremap <buffer> <silent> D :call nerdtree#ui_glue#invokeKeyMap("D")
nnoremap <buffer> <silent> F :call nerdtree#ui_glue#invokeKeyMap("F")
nnoremap <buffer> <silent> I :call nerdtree#ui_glue#invokeKeyMap("I")
nnoremap <buffer> <silent> J :call nerdtree#ui_glue#invokeKeyMap("J")
nnoremap <buffer> <silent> K :call nerdtree#ui_glue#invokeKeyMap("K")
nnoremap <buffer> <silent> O :call nerdtree#ui_glue#invokeKeyMap("O")
nnoremap <buffer> <silent> P :call nerdtree#ui_glue#invokeKeyMap("P")
nnoremap <buffer> <silent> R :call nerdtree#ui_glue#invokeKeyMap("R")
nnoremap <buffer> <silent> T :call nerdtree#ui_glue#invokeKeyMap("T")
nnoremap <buffer> <silent> U :call nerdtree#ui_glue#invokeKeyMap("U")
nnoremap <buffer> <silent> X :call nerdtree#ui_glue#invokeKeyMap("X")
nnoremap <buffer> <silent> cd :call nerdtree#ui_glue#invokeKeyMap("cd")
nnoremap <buffer> <silent> e :call nerdtree#ui_glue#invokeKeyMap("e")
nnoremap <buffer> <silent> f :call nerdtree#ui_glue#invokeKeyMap("f")
nnoremap <buffer> <silent> go :call nerdtree#ui_glue#invokeKeyMap("go")
nnoremap <buffer> <silent> gs :call nerdtree#ui_glue#invokeKeyMap("gs")
nnoremap <buffer> <silent> gi :call nerdtree#ui_glue#invokeKeyMap("gi")
nnoremap <buffer> <silent> h :call nerdtree#ui_glue#invokeKeyMap("h")
nnoremap <buffer> <silent> i :call nerdtree#ui_glue#invokeKeyMap("i")
nnoremap <buffer> <silent> m :call nerdtree#ui_glue#invokeKeyMap("m")
nnoremap <buffer> <silent> o :call nerdtree#ui_glue#invokeKeyMap("o")
nnoremap <buffer> <silent> p :call nerdtree#ui_glue#invokeKeyMap("p")
nnoremap <buffer> <silent> q :call nerdtree#ui_glue#invokeKeyMap("q")
nnoremap <buffer> <silent> r :call nerdtree#ui_glue#invokeKeyMap("r")
nnoremap <buffer> <silent> s :call nerdtree#ui_glue#invokeKeyMap("s")
nnoremap <buffer> <silent> u :call nerdtree#ui_glue#invokeKeyMap("u")
nnoremap <buffer> <silent> <MiddleMouse> :call nerdtree#ui_glue#invokeKeyMap("<MiddleMouse>")
nnoremap <buffer> <silent> <2-LeftMouse> :call nerdtree#ui_glue#invokeKeyMap("<2-LeftMouse>")
nnoremap <buffer> <silent> <C-K> :call nerdtree#ui_glue#invokeKeyMap("<C-k>")
nnoremap <buffer> <silent> <C-J> :call nerdtree#ui_glue#invokeKeyMap("<C-j>")
nnoremap <buffer> <silent> <LeftRelease> <LeftRelease>:call nerdtree#ui_glue#invokeKeyMap("<LeftRelease>")
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
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=hide
setlocal nobuflisted
setlocal buftype=nofile
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=nvic
setlocal conceallevel=3
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
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'nerdtree'
setlocal filetype=nerdtree
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal nofoldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal nomodifiable
setlocal nrformats=bin,octal,hex
set number
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal readonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=0
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
setlocal spelloptions=
setlocal statusline=%{exists('b:NERDTree')?b:NERDTree.root.path.str():''}
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'nerdtree'
setlocal syntax=nerdtree
endif
setlocal tabstop=3
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
setlocal winfixwidth
setlocal nowrap
setlocal wrapmargin=0
tabnext 1
badd +1 .git/config
badd +1 ~/.git/config
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOS
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
