set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "wombat_modified"


" Vim >= 7.0 specific colors
if version >= 700
" hi CursorLine   guibg=#2d2d2d
" hi CursorColumn guibg=#2d2d2d
hi CursorLine term=bold cterm=bold ctermfg=NONE ctermbg=236	guibg=#32322f
hi CursorLineNr term=bold cterm=bold ctermfg=165 ctermbg=NONE
" hi MatchParen   guifg=#f6f3e8 guibg=#857b6f gui=bold
hi MatchParen ctermfg=LightGreen ctermbg=blue
  hi Pmenu        guifg=#f6f3e8 guibg=#444444
  hi PmenuSel     guifg=#000000 guibg=#cae682
endif

" General colors
hi Cursor         guifg=NONE    guibg=#656565 gui=none
" hi Normal         guifg=#f6f3e8 guibg=#242424 gui=none
" hi NonText        guifg=#808080 guibg=#303030 gui=none
" hi Normal	ctermfg=248	ctermbg=none	cterm=none	guifg=#e3e0d7	guibg=#242424	gui=none
hi Normal	ctermfg=249	ctermbg=none	cterm=none	guifg=#f6f3e8	guibg=#242424	gui=none
hi NonText	ctermfg=249	ctermbg=none	cterm=none	guifg=#e3e0d7	guibg=#242424	gui=none
" hi Cursor	ctermfg=234	ctermbg=228		cterm=none	guifg=#242424	guibg=#eae788	gui=none
" hi Cursor	ctermfg=39	ctermbg=228		cterm=none	guifg=#242424	guibg=#eae788	gui=none
hi LineNr         guifg=#857b6f guibg=#000000 ctermfg=240 gui=none
"hi StatusLine     guifg=#f6f3e8 guibg=#444444 gui=italic
"hi StatusLine	guifg=#ffffff	guibg=#a6caf0	gui=NONE
"hi StatusLine	ctermfg=fg	ctermbg=153	cterm=NONE
hi StatusLine	guifg=#ffffff	guibg=#272822	gui=bold	ctermbg=153	cterm=NONE
hi StatusLine	ctermfg=White	ctermbg=111
"hi StatusLineNC   guifg=#857b6f guibg=#444444 gui=none
"hi StatusLineNC   guifg=#857b6f guibg=#444444 gui=bold
hi StatusLineNC	ctermfg=16	ctermbg=0	cterm=NONE
hi StatusLineNC	guifg=#000000	guibg=#c0c0c0	gui=NONE
hi VertSplit      guifg=#444444 guibg=#444444 gui=none
hi Folded         guibg=#384048 guifg=#a0a8b0 gui=none
hi Title          guifg=#f6f3e8 guibg=NONE    gui=bold
hi Visual         guifg=#f6f3e8 guibg=#444444 gui=none
hi Visual		ctermfg=NONE	ctermbg=153	cterm=NONE
hi SpecialKey     guifg=#808080 guibg=#343434 gui=none
hi Search	ctermfg=18	ctermbg=169	cterm=none	guifg=#d787ff	guibg=#636066	gui=none

" Syntax highlighting
hi Comment	guifg=#99968b	gui=italic
hi Comment		ctermfg=58	ctermbg=NONE	cterm=NONE
hi Comment		guifg=#606000	guibg=NONE	gui=NONE
hi Todo           guifg=#8f8f8f gui=italic
hi Constant       guifg=#e5786d gui=none
hi String         guifg=#95e454 gui=none
hi Identifier     guifg=#cae682 gui=none
hi Function       guifg=#cae682 gui=none
hi Type           guifg=#cae682 gui=none
hi Statement      guifg=#8ac6f2 gui=none
hi Keyword        guifg=#8ac6f2 gui=none
hi PreProc        guifg=#e5786d gui=none
hi Number         guifg=#e5786d gui=none
hi Special        guifg=#e7f6da gui=none

" My new stuff starts here
hi Label          guifg=#47e0c3 gui=none
hi StartifyPath   guifg=#95e454 gui=none
"hi diffRemoved    guifg=#e5786d gui=none
"hi diffAdded      guifg=#95e454 gui=none
hi DiffAdd        term=bold cterm=bold ctermfg=162 ctermbg=18 guibg=#193300
hi DiffChange     term=bold ctermbg=60 guibg=#333300
hi DiffDelete     term=bold ctermfg=69 ctermbg=234 guifg=#d70000
hi DiffText       term=bold ctermfg=190 ctermbg=99 guibg=#666600

" ModeMsg
hi ModeMsg	ctermfg=220	ctermbg=NONE	cterm=NONE
hi ModeMsg	cterm=none  
hi ModeMsg	guifg=#eeeeee	guibg=#000080	gui=NONE
hi ModeMsg	gui=bold
hi ModeMsg	cterm=bold

" Style warning
hi ALEWarning	ctermfg=18	ctermbg=166	cterm=none	guifg=#d787ff	guibg=#636066	gui=none
hi ALEStyleWarning	ctermfg=18	ctermbg=166	cterm=none	guifg=#d787ff	guibg=#636066	gui=none
hi ALEInfo	ctermfg=18	ctermbg=166	cterm=none	guifg=#d787ff	guibg=#636066	gui=none

"hi VisualNOS	ctermfg=255	ctermbg=18	cterm=NONE
"hi VisualNOS	cterm=none  
"hi VisualNOS	guifg=#eeeeee	guibg=#000080	gui=NONE
"hi VisualNOS	ctermfg=255	ctermbg=146	cterm=NONE
