" source settings files
source ~/.config/nvim/init/sets.vim
source ~/.config/nvim/init/plugins.vim
source ~/.config/nvim/init/mappings.vim
source ~/.config/nvim/init/coc.vim
source ~/.config/nvim/init/nerdtree.vim
source ~/.config/nvim/init/telescope.vim
source ~/.config/nvim/init/airline.vim
source ~/.config/nvim/init/vimspector.vim
source ~/.config/nvim/init/harpoon.vim

" lua init settings
:lua require('kevin')
au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC
colorscheme gruvbox

" ChangeCase
function! ChangeCase()
    let l:word = expand('<cword>')
    if l:word =~? '_\w'
        " has underscore, change to camel case
        " might be all caps, tolower() first
        let l:word = tolower(l:word)
        let l:word = substitute(l:word, '_\(\w\)', '\U\1', 'g')
        exec 'norm! ciw' . l:word
    else
        " no underscore, change to snake case
        let l:word = substitute(l:word, '\(\u[A-Z]\)', '_\u\1', 'g')
        let l:word = tolower(l:word)
        exec 'norm! ciw' . l:word
    endif
endfunction
nnoremap <leader>cc :call ChangeCase()<cr>

" fzf settings
" This is the default extra key bindings
let g:fzf_action = {
            \ 'ctrl-t': 'tab split',
            \ 'ctrl-x': 'split',
            \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }

" Customize fzf colors to match your color scheme
let g:fzf_colors =
            \ { 'fg':      ['fg', 'Normal'],
            \ 'bg':      ['bg', 'Normal'],
            \ 'hl':      ['fg', 'Comment'],
            \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
            \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
            \ 'hl+':     ['fg', 'Statement'],
            \ 'info':    ['fg', 'PreProc'],
            \ 'prompt':  ['fg', 'Conditional'],
            \ 'pointer': ['fg', 'Exception'],
            \ 'marker':  ['fg', 'Keyword'],
            \ 'spinner': ['fg', 'Label'],
            \ 'header':  ['fg', 'Comment'] }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'

" remember folds
augroup remember_folds
    autocmd!
    autocmd BufWinLeave *.* mkview
    autocmd BufWinEnter *.* silent! loadview
augroup end
