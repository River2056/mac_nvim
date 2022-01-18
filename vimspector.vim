" for Vimspector debug java
" stop => shift + f5
nmap <F1> :CocCommand java.debug.vimspector.start<CR>
nnoremap <leader>vr :VimspectorReset<cr>
nnoremap <leader>lb :call vimspector#ListBreakpoints()<cr>
nnoremap <leader>cb :call vimspector#ClearBreakpoints()<cr>
let g:vimspector_enable_mappings = 'VISUAL_STUDIO'
