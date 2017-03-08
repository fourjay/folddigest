setlocal buftype=nofile bufhidden=hide noswapfile nowrap ft=
setlocal foldcolumn=0 nonumber

nnoremap <silent><buffer> <CR> :call tdvimFolddigest#Jump()<CR>
nnoremap <silent><buffer> r :call tdvimFolddigest#>Refresh()<CR>
nnoremap <buffer> <silent> <2-LeftMouse> :call tdvimFolddigest#Jump()<CR>
nnoremap <buffer> <silent> <nowait> q :quit<Cr>
