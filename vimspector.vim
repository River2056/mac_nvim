" for Vimspector debug java
" stop => shift + f5
nmap <leader>dj :CocCommand java.debug.vimspector.start<CR>
nmap <leader>sj :call vimspector#Stop()<CR>
nnoremap <leader>vr :VimspectorReset<cr>
nnoremap <leader>lb :call vimspector#ListBreakpoints()<cr>
nnoremap <leader>cb :call vimspector#ClearBreakpoints()<cr>
let g:vimspector_enable_mappings = 'VISUAL_STUDIO'
