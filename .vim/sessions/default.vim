let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Project/paiza/python
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
$argadd detectDuplicate_1_2.py
edit test_detectDuplicate_testing.py
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 10 + 24) / 49)
exe 'vert 1resize ' . ((&columns * 99 + 119) / 238)
exe '2resize ' . ((&lines * 36 + 24) / 49)
exe 'vert 2resize ' . ((&columns * 99 + 119) / 238)
exe '3resize ' . ((&lines * 13 + 24) / 49)
exe 'vert 3resize ' . ((&columns * 138 + 119) / 238)
exe '4resize ' . ((&lines * 33 + 24) / 49)
exe 'vert 4resize ' . ((&columns * 138 + 119) / 238)
argglobal
balt test_detectDuplicate_testing.py
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 4 - ((3 * winheight(0) + 5) / 10)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 4
normal! 0
wincmd w
argglobal
if bufexists("detectDuplicate_1.py") | buffer detectDuplicate_1.py | else | edit detectDuplicate_1.py | endif
balt detectDuplicate_1_2.py
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 05|
wincmd w
argglobal
if bufexists("test_hello_testing.py") | buffer test_hello_testing.py | else | edit test_hello_testing.py | endif
balt test_hello_func.py
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 7 - ((3 * winheight(0) + 6) / 13)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 7
normal! 021|
wincmd w
argglobal
if bufexists("test_hello_func.py") | buffer test_hello_func.py | else | edit test_hello_func.py | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 4 - ((3 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 4
normal! 019|
wincmd w
2wincmd w
exe '1resize ' . ((&lines * 10 + 24) / 49)
exe 'vert 1resize ' . ((&columns * 99 + 119) / 238)
exe '2resize ' . ((&lines * 36 + 24) / 49)
exe 'vert 2resize ' . ((&columns * 99 + 119) / 238)
exe '3resize ' . ((&lines * 13 + 24) / 49)
exe 'vert 3resize ' . ((&columns * 138 + 119) / 238)
exe '4resize ' . ((&lines * 33 + 24) / 49)
exe 'vert 4resize ' . ((&columns * 138 + 119) / 238)
tabnext 1
badd +1 detectDuplicate_1_2.py
badd +2 detectDuplicate_1.py
badd +9 sortList_2.py
badd +1 July9_3.py
badd +5 sortStrAndInt_1.py
badd +1 test_hello_func.py
badd +1 test_hello_testing.py
badd +1 test_t_018_func.py
badd +1 test_t_018_testing.py
badd +1 test_t_034_testing.py
badd +0 test_detectDuplicate_testing.py
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOSA
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
