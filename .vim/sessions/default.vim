let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <SNR>63_AutoPairsReturn =AutoPairsReturn()
inoremap <silent> <Plug>CocRefresh =coc#_complete()
inoremap <silent> <Plug>(ale_complete) :ALEComplete
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
map  rwp <Plug>RestoreWinPosn
map  swp <Plug>SaveWinPosn
map  ds <Plug>DrawItStop
map  di <Plug>DrawItStart
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
nnoremap <silent>   s :vertical res -10
nnoremap <silent>   h :vertical res +10
nnoremap <silent>   t :res -10
nnoremap <silent>   n :res +10
nnoremap <silent>  h r
nnoremap <silent>  W :wincmd W
nnoremap <silent>  w :wincmd w
nnoremap <silent>  T :NERDTreeToggle
nnoremap $ ^
nnoremap :mk :MarkdownPreview
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
nmap <silent> <Plug>RestoreWinPosn :call RestoreWinPosn()
nmap <silent> <Plug>SaveWinPosn :call SaveWinPosn()
noremap <silent> <Plug>DrawItStop :set lz:call DrawIt#DrawItStop():set nolz
noremap <silent> <Plug>DrawItStart :set lz:call DrawIt#DrawItStart():set nolz
xnoremap <silent> <Plug>(openbrowser-smart-search) :call openbrowser#_keymap_smart_search('v')
nnoremap <silent> <Plug>(openbrowser-smart-search) :call openbrowser#_keymap_smart_search('n')
xnoremap <silent> <Plug>(openbrowser-search) :call openbrowser#_keymap_search('v')
nnoremap <silent> <Plug>(openbrowser-search) :call openbrowser#_keymap_search('n')
xnoremap <silent> <Plug>(openbrowser-open-incognito) :call openbrowser#_keymap_open('v', 0, ['--incognito'])
nnoremap <silent> <Plug>(openbrowser-open-incognito) :call openbrowser#_keymap_open('n', 0, ['--incognito'])
xnoremap <silent> <Plug>(openbrowser-open) :call openbrowser#_keymap_open('v')
nnoremap <silent> <Plug>(openbrowser-open) :call openbrowser#_keymap_open('n')
nnoremap <Plug>(twitvim-PosttoTwitter) :call twitvim#CmdLine_Twitter('', 0)
vmap <C-T> <Plug>TwitvimVisual
vmap <M-t> <Plug>TwitvimVisual
noremap <SNR>71_Visual y:call twitvim#post_twitter(@", 0)
nmap <C-W>o <Plug>ZoomWin
xmap <Plug>(caw:prefix)O <Plug>(caw:jump:comment-prev)
nmap <Plug>(caw:prefix)O <Plug>(caw:jump:comment-prev)
xmap <Plug>(caw:prefix)o <Plug>(caw:jump:comment-next)
nmap <Plug>(caw:prefix)o <Plug>(caw:jump:comment-next)
nnoremap <silent> <Plug>(caw:jump:comment-prev) :call caw#keymapping_stub('n', 'jump', 'comment-prev')
nnoremap <silent> <Plug>(caw:jump:comment-next) :call caw#keymapping_stub('n', 'jump', 'comment-next')
xmap <Plug>(caw:prefix)b <Plug>(caw:box:comment)
nmap <Plug>(caw:prefix)b <Plug>(caw:box:comment)
xnoremap <silent> <Plug>(caw:box:comment) :call caw#keymapping_stub('x', 'box', 'comment')
nnoremap <silent> <Plug>(caw:box:comment) :call caw#keymapping_stub('n', 'box', 'comment')
xmap <Plug>(caw:prefix)uw <Plug>(caw:wrap:uncomment)
nmap <Plug>(caw:prefix)uw <Plug>(caw:wrap:uncomment)
xmap <Plug>(caw:prefix)w <Plug>(caw:wrap:comment)
nmap <Plug>(caw:prefix)w <Plug>(caw:wrap:comment)
xnoremap <silent> <Plug>(caw:wrap:toggle) :call caw#keymapping_stub('x', 'wrap', 'toggle')
nnoremap <silent> <Plug>(caw:wrap:toggle) :call caw#keymapping_stub('n', 'wrap', 'toggle')
xnoremap <silent> <Plug>(caw:wrap:uncomment) :call caw#keymapping_stub('x', 'wrap', 'uncomment')
nnoremap <silent> <Plug>(caw:wrap:uncomment) :call caw#keymapping_stub('n', 'wrap', 'uncomment')
xnoremap <silent> <Plug>(caw:wrap:comment) :call caw#keymapping_stub('x', 'wrap', 'comment')
nnoremap <silent> <Plug>(caw:wrap:comment) :call caw#keymapping_stub('n', 'wrap', 'comment')
xmap <Plug>(caw:prefix)ua <Plug>(caw:dollarpos:uncomment)
nmap <Plug>(caw:prefix)ua <Plug>(caw:dollarpos:uncomment)
xmap <Plug>(caw:prefix)a <Plug>(caw:dollarpos:comment)
nmap <Plug>(caw:prefix)a <Plug>(caw:dollarpos:comment)
xnoremap <silent> <Plug>(caw:a:toggle) :call caw#keymapping_stub_deprecated('x', 'dollarpos', 'toggle', 'a')
xnoremap <silent> <Plug>(caw:dollarpos:toggle) :call caw#keymapping_stub('x', 'dollarpos', 'toggle')
nnoremap <silent> <Plug>(caw:a:toggle) :call caw#keymapping_stub_deprecated('n', 'dollarpos', 'toggle', 'a')
nnoremap <silent> <Plug>(caw:dollarpos:toggle) :call caw#keymapping_stub('n', 'dollarpos', 'toggle')
xnoremap <silent> <Plug>(caw:a:uncomment) :call caw#keymapping_stub_deprecated('x', 'dollarpos', 'uncomment', 'a')
xnoremap <silent> <Plug>(caw:dollarpos:uncomment) :call caw#keymapping_stub('x', 'dollarpos', 'uncomment')
nnoremap <silent> <Plug>(caw:a:uncomment) :call caw#keymapping_stub_deprecated('n', 'dollarpos', 'uncomment', 'a')
nnoremap <silent> <Plug>(caw:dollarpos:uncomment) :call caw#keymapping_stub('n', 'dollarpos', 'uncomment')
xnoremap <silent> <Plug>(caw:a:comment) :call caw#keymapping_stub_deprecated('x', 'dollarpos', 'comment', 'a')
xnoremap <silent> <Plug>(caw:dollarpos:comment) :call caw#keymapping_stub('x', 'dollarpos', 'comment')
nnoremap <silent> <Plug>(caw:a:comment) :call caw#keymapping_stub_deprecated('n', 'dollarpos', 'comment', 'a')
nnoremap <silent> <Plug>(caw:dollarpos:comment) :call caw#keymapping_stub('n', 'dollarpos', 'comment')
xmap <Plug>(caw:prefix)uI <Plug>(caw:zeropos:uncomment)
nmap <Plug>(caw:prefix)uI <Plug>(caw:zeropos:uncomment)
xmap <Plug>(caw:prefix)I <Plug>(caw:zeropos:comment)
nmap <Plug>(caw:prefix)I <Plug>(caw:zeropos:comment)
xnoremap <silent> <Plug>(caw:I:toggle) :call caw#keymapping_stub_deprecated('x', 'zeropos', 'toggle', 'I')
xnoremap <silent> <Plug>(caw:zeropos:toggle) :call caw#keymapping_stub('x', 'zeropos', 'toggle')
nnoremap <silent> <Plug>(caw:I:toggle) :call caw#keymapping_stub_deprecated('n', 'zeropos', 'toggle', 'I')
nnoremap <silent> <Plug>(caw:zeropos:toggle) :call caw#keymapping_stub('n', 'zeropos', 'toggle')
xnoremap <silent> <Plug>(caw:I:uncomment) :call caw#keymapping_stub_deprecated('x', 'zeropos', 'uncomment', 'I')
xnoremap <silent> <Plug>(caw:zeropos:uncomment) :call caw#keymapping_stub('x', 'zeropos', 'uncomment')
nnoremap <silent> <Plug>(caw:I:uncomment) :call caw#keymapping_stub_deprecated('n', 'zeropos', 'uncomment', 'I')
nnoremap <silent> <Plug>(caw:zeropos:uncomment) :call caw#keymapping_stub('n', 'zeropos', 'uncomment')
xnoremap <silent> <Plug>(caw:I:comment) :call caw#keymapping_stub_deprecated('x', 'zeropos', 'comment', 'I')
xnoremap <silent> <Plug>(caw:zeropos:comment) :call caw#keymapping_stub('x', 'zeropos', 'comment')
nnoremap <silent> <Plug>(caw:I:comment) :call caw#keymapping_stub_deprecated('n', 'zeropos', 'comment', 'I')
nnoremap <silent> <Plug>(caw:zeropos:comment) :call caw#keymapping_stub('n', 'zeropos', 'comment')
xmap <Plug>(caw:prefix)ui <Plug>(caw:hatpos:uncomment)
nmap <Plug>(caw:prefix)ui <Plug>(caw:hatpos:uncomment)
xmap <Plug>(caw:prefix)i <Plug>(caw:hatpos:comment)
nmap <Plug>(caw:prefix)i <Plug>(caw:hatpos:comment)
xnoremap <silent> <Plug>(caw:tildepos:toggle) :call caw#keymapping_stub_deprecated('x', 'hatpos', 'toggle', 'tildepos')
xnoremap <silent> <Plug>(caw:i:toggle) :call caw#keymapping_stub_deprecated('x', 'hatpos', 'toggle', 'i')
xnoremap <silent> <Plug>(caw:hatpos:toggle) :call caw#keymapping_stub('x', 'hatpos', 'toggle')
nnoremap <silent> <Plug>(caw:tildepos:toggle) :call caw#keymapping_stub_deprecated('n', 'hatpos', 'toggle', 'tildepos')
nnoremap <silent> <Plug>(caw:i:toggle) :call caw#keymapping_stub_deprecated('n', 'hatpos', 'toggle', 'i')
nnoremap <silent> <Plug>(caw:hatpos:toggle) :call caw#keymapping_stub('n', 'hatpos', 'toggle')
xnoremap <silent> <Plug>(caw:tildepos:uncomment) :call caw#keymapping_stub_deprecated('x', 'hatpos', 'uncomment', 'tildepos')
xnoremap <silent> <Plug>(caw:i:uncomment) :call caw#keymapping_stub_deprecated('x', 'hatpos', 'uncomment', 'i')
xnoremap <silent> <Plug>(caw:hatpos:uncomment) :call caw#keymapping_stub('x', 'hatpos', 'uncomment')
nnoremap <silent> <Plug>(caw:tildepos:uncomment) :call caw#keymapping_stub_deprecated('n', 'hatpos', 'uncomment', 'tildepos')
nnoremap <silent> <Plug>(caw:i:uncomment) :call caw#keymapping_stub_deprecated('n', 'hatpos', 'uncomment', 'i')
nnoremap <silent> <Plug>(caw:hatpos:uncomment) :call caw#keymapping_stub('n', 'hatpos', 'uncomment')
xnoremap <silent> <Plug>(caw:tildepos:comment) :call caw#keymapping_stub_deprecated('x', 'hatpos', 'comment', 'tildepos')
xnoremap <silent> <Plug>(caw:i:comment) :call caw#keymapping_stub_deprecated('x', 'hatpos', 'comment', 'i')
xnoremap <silent> <Plug>(caw:hatpos:comment) :call caw#keymapping_stub('x', 'hatpos', 'comment')
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
onoremap <silent> <Plug>(coc-classobj-a) :call coc#rpc#request('selectSymbolRange', [v:false, '', ['Interface', 'Struct', 'Class']])
onoremap <silent> <Plug>(coc-classobj-i) :call coc#rpc#request('selectSymbolRange', [v:true, '', ['Interface', 'Struct', 'Class']])
vnoremap <silent> <Plug>(coc-classobj-a) :call coc#rpc#request('selectSymbolRange', [v:false, visualmode(), ['Interface', 'Struct', 'Class']])
vnoremap <silent> <Plug>(coc-classobj-i) :call coc#rpc#request('selectSymbolRange', [v:true, visualmode(), ['Interface', 'Struct', 'Class']])
onoremap <silent> <Plug>(coc-funcobj-a) :call coc#rpc#request('selectSymbolRange', [v:false, '', ['Method', 'Function']])
onoremap <silent> <Plug>(coc-funcobj-i) :call coc#rpc#request('selectSymbolRange', [v:true, '', ['Method', 'Function']])
vnoremap <silent> <Plug>(coc-funcobj-a) :call coc#rpc#request('selectSymbolRange', [v:false, visualmode(), ['Method', 'Function']])
vnoremap <silent> <Plug>(coc-funcobj-i) :call coc#rpc#request('selectSymbolRange', [v:true, visualmode(), ['Method', 'Function']])
nnoremap <silent> <Plug>(coc-cursors-position) :call coc#rpc#request('cursorsSelect', [bufnr('%'), 'position', 'n'])
nnoremap <silent> <Plug>(coc-cursors-word) :call coc#rpc#request('cursorsSelect', [bufnr('%'), 'word', 'n'])
vnoremap <silent> <Plug>(coc-cursors-range) :call coc#rpc#request('cursorsSelect', [bufnr('%'), 'range', visualmode()])
nnoremap <silent> <Plug>(coc-refactor) :call       CocActionAsync('refactor')
nnoremap <silent> <Plug>(coc-command-repeat) :call       CocAction('repeatCommand')
nnoremap <silent> <Plug>(coc-float-jump) :call       coc#float#jump()
nnoremap <silent> <Plug>(coc-float-hide) :call       coc#float#close_all()
nnoremap <silent> <Plug>(coc-fix-current) :call       CocActionAsync('doQuickfix')
nnoremap <silent> <Plug>(coc-openlink) :call       CocActionAsync('openLink')
nnoremap <silent> <Plug>(coc-references-used) :call       CocActionAsync('jumpUsed')
nnoremap <silent> <Plug>(coc-references) :call       CocActionAsync('jumpReferences')
nnoremap <silent> <Plug>(coc-type-definition) :call       CocActionAsync('jumpTypeDefinition')
nnoremap <silent> <Plug>(coc-implementation) :call       CocActionAsync('jumpImplementation')
nnoremap <silent> <Plug>(coc-declaration) :call       CocActionAsync('jumpDeclaration')
nnoremap <silent> <Plug>(coc-definition) :call       CocActionAsync('jumpDefinition')
nnoremap <silent> <Plug>(coc-diagnostic-prev-error) :call       CocActionAsync('diagnosticPrevious', 'error')
nnoremap <silent> <Plug>(coc-diagnostic-next-error) :call       CocActionAsync('diagnosticNext',     'error')
nnoremap <silent> <Plug>(coc-diagnostic-prev) :call       CocActionAsync('diagnosticPrevious')
nnoremap <silent> <Plug>(coc-diagnostic-next) :call       CocActionAsync('diagnosticNext')
nnoremap <silent> <Plug>(coc-diagnostic-info) :call       CocActionAsync('diagnosticInfo')
nnoremap <silent> <Plug>(coc-format) :call       CocActionAsync('format')
nnoremap <silent> <Plug>(coc-rename) :call       CocActionAsync('rename')
nnoremap <Plug>(coc-codeaction-line) :call       CocActionAsync('codeAction',         'n')
nnoremap <Plug>(coc-codeaction) :call       CocActionAsync('codeAction',         '')
vnoremap <silent> <Plug>(coc-codeaction-selected) :call       CocActionAsync('codeAction',         visualmode())
vnoremap <silent> <Plug>(coc-format-selected) :call       CocActionAsync('formatSelected',     visualmode())
nnoremap <Plug>(coc-codelens-action) :call       CocActionAsync('codeLensAction')
nnoremap <Plug>(coc-range-select) :call       CocActionAsync('rangeSelect',     '', v:true)
vnoremap <silent> <Plug>(coc-range-select-backward) :call       CocActionAsync('rangeSelect',     visualmode(), v:false)
vnoremap <silent> <Plug>(coc-range-select) :call       CocActionAsync('rangeSelect',     visualmode(), v:true)
xnoremap <Plug>ColorFgBg :ColorSwapFgBg
nnoremap <Plug>ColorFgBg :ColorSwapFgBg
xnoremap <Plug>ColorContrast :ColorContrast
nnoremap <Plug>ColorContrast :ColorContrast
xnoremap <Plug>Colorizer :ColorHighlight
nnoremap <Plug>Colorizer :ColorToggle
nnoremap <silent> <Plug>(ale_repeat_selection) :ALERepeatSelection
nnoremap <silent> <Plug>(ale_code_action) :ALECodeAction
nnoremap <silent> <Plug>(ale_rename) :ALERename
nnoremap <silent> <Plug>(ale_import) :ALEImport
nnoremap <silent> <Plug>(ale_documentation) :ALEDocumentation
nnoremap <silent> <Plug>(ale_hover) :ALEHover
nnoremap <silent> <Plug>(ale_find_references) :ALEFindReferences
nnoremap <silent> <Plug>(ale_go_to_type_definition_in_vsplit) :ALEGoToTypeDefinitionIn -vsplit
nnoremap <silent> <Plug>(ale_go_to_type_definition_in_split) :ALEGoToTypeDefinition -split
nnoremap <silent> <Plug>(ale_go_to_type_definition_in_tab) :ALEGoToTypeDefinition -tab
nnoremap <silent> <Plug>(ale_go_to_type_definition) :ALEGoToTypeDefinition
nnoremap <silent> <Plug>(ale_go_to_definition_in_vsplit) :ALEGoToDefinition -vsplit
nnoremap <silent> <Plug>(ale_go_to_definition_in_split) :ALEGoToDefinition -split
nnoremap <silent> <Plug>(ale_go_to_definition_in_tab) :ALEGoToDefinition -tab
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
vmap <C-E> <Plug>(caw:hatpos:toggle)
nmap <C-E> <Plug>(caw:hatpos:toggle)
nnoremap <C-U> :noh
nnoremap <C-N> 
nnoremap <C-T> 
nnoremap <C-J> N
nnoremap <C-K> n
inoremap <C+/> =EasyCloseTag()=SetCursor()
inoremap </ =GetCloseTag()
vmap ô <Plug>TwitvimVisual
cnoreabbr Ack Ack!
let &cpo=s:cpo_save
unlet s:cpo_save
set background=dark
set clipboard=unnamedplus
set cscopeprg=gtags-cscope
set cscopetag
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=en
set hidden
set hlsearch
set isfname=@,48-57,/,.,-,_,+,,,#,$,%,~,=,:
set listchars=tab:>-,trail:.
set runtimepath=~/.vim,~/.vim/plugged/alchemist.vim/,~/.vim/plugged/ale/,~/.vim/plugged/vim-elixir/,~/.vim/plugged/vim-shellutils/,~/.vim/plugged/nerdtree/,~/.vim/plugged/vim-rails/,~/.vim/plugged/vim-ruby/,~/.vim/plugged/xterm-color-table.vim/,~/.vim/plugged/Colorizer/,~/.vim/plugged/coc.nvim/,~/.vim/plugged/coc-jedi/,~/.vim/plugged/ctrlp.vim/,~/.vim/plugged/ack.vim/,~/.vim/plugged/tagbar/,~/.vim/plugged/gen_tags.vim/,~/.vim/plugged/gtags.vim/,~/.vim/plugged/auto-pairs/,~/.vim/plugged/vim-slim/,~/.vim/plugged/vim-json/,~/.vim/plugged/vim-javascript/,~/.vim/plugged/vim-markdown/,~/.vim/plugged/closetag.vim/,~/.vim/plugged/caw.vim/,~/.vim/plugged/imcsc-vim/,~/.vim/plugged/rainbow_csv/,~/.vim/plugged/ZoomWin/,~/.vim/plugged/vim-superman/,~/.vim/plugged/markdown-preview.nvim/,~/.vim/plugged/twitvim/,~/.vim/plugged/w3m.vim/,~/.vim/plugged/plantuml-syntax/,~/.vim/plugged/open-browser.vim/,~/.vim/plugged/plantuml-previewer.vim/,~/.vim/plugged/vim-github-dashboard/,~/.vim/plugged/DrawIt/,~/.vim/plugged/vim-ps1/,/usr/local/share/vim/vimfiles,/usr/local/share/vim/vim82,/usr/local/share/vim/vimfiles/after,~/.vim/plugged/alchemist.vim/after,~/.vim/plugged/vim-rails/after,~/.vim/plugged/vim-javascript/after,~/.vim/plugged/caw.vim/after,~/.vim/after
set shiftwidth=0
set showmatch
set splitbelow
set splitright
set tabstop=3
set tags=./tags,./TAGS,tags,TAGS,~/.cache/tags_dir/homekandaDocumentsmakingNoteByVIM/prj_tags,~/.cache/tags_dir/homekandaDocumentsmakingNoteByVIMy194rankingyoutube-viewer/prj_tags
set window=60
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Documents/makingNoteByVIM/y194/ranking
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
balt youtube-viewer/lib/WWW/YoutubeViewer/Playlists.pm
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
nnoremap <buffer> <silent> gi :call nerdtree#ui_glue#invokeKeyMap("gi")
nnoremap <buffer> <silent> gs :call nerdtree#ui_glue#invokeKeyMap("gs")
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
nnoremap <buffer> <silent> <C-K> :call nerdtree#ui_glue#invokeKeyMap("<C-k>")
nnoremap <buffer> <silent> <2-LeftMouse> :call nerdtree#ui_glue#invokeKeyMap("<2-LeftMouse>")
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
setlocal conceallevel=2
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
setlocal formatoptions=tq
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
setlocal modeline
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
badd +1 youtube-viewer/lib/WWW/YoutubeViewer/PlaylistItems.pm
badd +1 youtube-viewer/lib/WWW/YoutubeViewer/Playlists.pm
badd +1 youtube-viewer/lib/WWW/YoutubeViewer/RegularExpressions.pm
badd +1 youtube-viewer/lib/WWW/YoutubeViewer/Search.pm
badd +133 youtube-viewer/lib/WWW/YoutubeViewer/Utils.pm
badd +1 youtube-viewer/lib/WWW/YoutubeViewer/VideoCategories.pm
badd +1 youtube-viewer/lib/WWW/YoutubeViewer/Videos.pm
badd +37 youtube-viewer/lib/WWW/YoutubeViewer.pm
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
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
