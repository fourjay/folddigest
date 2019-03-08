" setup known state
if exists('g:did_tdvimFolddigest') 
      " \ || &compatible 
      " \ || version < 700}
    finish
endif
let g:did_tdvimFolddigest = '1'
let s:save_cpo = &cpoptions
set compatible&vim

" minor maintenance josef.fortier@gmail.com

" Folddigest plugin initialization
" The plugin is implemented in the autocommands functions.
"
" Mantainer:	Pablo Gimenez <pablogipi@gmail.com>
" Last Change:2010-09-16.
" Version: 0.1
" Notes: based on Folddigest plugin by Taro Muraoka:
"   http://www.vim.org/scripts/script.php?script_id=732
"


let g:FoldDigest_Window_Title = '==FOLDDIGEST=='

" FoldDigest window position
if !exists('g:FoldDigest_Pos')
    let g:FolsDigest_Pos='right'
endif

" Setup all commands: {{{
" Open FoldDigest window
command! -nargs=0 -bar FoldDigest call tdvimFolddigest#FoldDigest()
" Close FoldDigest window
command! -nargs=0 -bar FoldDigestClose call tdvimFolddigest#FoldDigestClose()
" Toggle FoldDigest window
command! -nargs=0 -bar FoldDigestToggle call tdvimFolddigest#FoldDigestToggle()
"}}}

" Setup autocommands: {{{
augroup FoldDigest
    autocmd!
    "autocmd BufEnter ==FOLDDIGEST== call tdvimFolddigest#AutoRefresh()
    autocmd BufEnter g:FoldDigest_Window_Title call tdvimFolddigest#AutoRefresh()
    "autocmd BufEnter g:FoldDigest_Window_Title setlocal nomodifiable
    "autocmd BufLeave g:FoldDigest_Window_Title setlocal modifiable
    autocmd BufEnter * call tdvimFolddigest#ChangeBufferRefresh()
augroup END
" }}}

" Optional mapping: {{{
" Example mapping F8 to FoldDigestToggle()
"nnoremap  <unique> <silent>    <SID>TdvimFoldDigestToggle   :call tdvimFolddigest#FoldDigestToggle()<CR>
"vnoremap  <unique> <silent>    <SID>TdvimFoldDigestToggle   <Esc>:call tdvimFolddigest#FoldDigestToggle()<CR>
"inoremap  <unique> <silent>    <SID>TdvimFoldDigestToggle   <Esc>:call tdvimFolddigest#FoldDigestToggle()<CR>

"nmap <silent> <F8> <SID>TdvimFoldDigestToggle
"imap <silent> <F8> <SID>TdvimFoldDigestToggle
"vmap <silent> <F8> <SID>TdvimFoldDigestToggle
"}}}


" Return vim to users choice
let &cpoptions = s:save_cpo
" vim: ts=8 ft=vim nowrap fdm=marker
