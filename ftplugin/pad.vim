setlocal fileencoding=utf-8
setlocal cursorline
setlocal buftype=nofile
setlocal noswapfile
setlocal nowrap
setlocal nomodified
setlocal conceallevel=2
setlocal concealcursor=nc
setlocal nocp
noremap <buffer> <silent> <enter> :call pad#EditPad()<cr>
if has("gui_running")
	noremap <buffer> <silent> <delete> :call pad#DeletePad()<cr>
	noremap <buffer> <silent> <S-esc> :bw<cr>
else
	noremap <buffer> <silent> dd :call pad#DeletePad()<cr>
	noremap <buffer> <silent> <leader><esc> :bw<cr>
endif
noremap <buffer> <silent> <S-f> :call pad#IncrementalSearch()<cr>
noremap <buffer> <silent> <S-s> :call pad#Sort()<cr>
