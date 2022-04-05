" custom mappings
inoremap jk <esc>
inoremap kj <esc>
let mapleader = ","
noremap <leader>aa :%y+<cr>
noremap <leader>pp ggVG"+p
noremap <leader>jp :JsonPath<cr>
nnoremap <leader><space> :noh<cr>
nnoremap <leader>ss :w<cr>
nnoremap <leader>o :Ex<cr>
nnoremap <leader>q :q<cr>
vnoremap <leader>p "_dP

" tabs
nnoremap <leader>dt :diffthis<cr>
nnoremap <leader>df :diffoff<cr>
nnoremap <leader>nt :tabnew<cr>
nnoremap <leader>vba :vert ba<cr>

" buffers
nnoremap <leader>nb :enew<cr>
nnoremap <leader>bn :bnext<cr>
nnoremap <leader>bp :bprevious<cr>
nnoremap <leader>bd :bdelete<cr>

" fzf
nnoremap <leader>ev :Hex! ~/.config/nvim/<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>pi :PlugInstall<cr>
nnoremap <leader>pc :PlugClean<cr>
nnoremap <leader>fl :Lines 
nnoremap <leader>fb :BLines 
nnoremap <leader>ff :Files<cr>
nnoremap <leader>fg :GFiles 
nnoremap <leader>f? :GFiles? 
nnoremap <leader>ft :Tags<cr>
nnoremap <leader>fa :Ag 
nnoremap <leader>fc :Commits

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Use alt + hjkl to resize windows
nnoremap ∆    :resize -2<CR>
nnoremap ˚    :resize +2<CR>
nnoremap ˙    :vertical resize -2<CR>
nnoremap ¬    :vertical resize +2<CR>

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" visual indent
vnoremap > >gv
vnoremap < <gv

" git fugitive
nnoremap <leader>gs :Git<cr>
nnoremap <leader>gf :diffget //2<cr>
nnoremap <leader>gj :diffget //3<cr>

" language specific
" nmap <F5> :call CompileRun()<cr>
" noremap <leader>r :!javac % && java %:r<cr>
noremap <leader>r :call CompileRun()<cr>
func! CompileRun()
    exec "w"
    if &filetype == 'java'
        let l:path = expand('%')
        echo l:path
        exec '!javac -d bin -cp /src' . l:path
        echo 'compile success: ' . l:path
        let l:path = substitute(l:path, "\\", ".", "g")
        let l:path = substitute(l:path, "/", ".", "g")
        let l:path = substitute(l:path, ".java", "", "")
        let l:path = substitute(l:path, "./", "", "")
        let l:path = substitute(l:path, "src.", "", "")
        echo l:path
        exec '!java -cp ./bin ' . l:path
    elseif &filetype == 'python'
        exec "!python3 %"
    elseif &filetype == 'lua'
        exec "!lua %"
    elseif &filetype == 'javascript'
        exec "!node %"
    endif
endfunc
noremap <leader>gr :!gradle run<cr>
inoremap <leader>ss System.out.println();<esc>hi
noremap <leader>ll :love .

" language specific abbreviations
autocmd FileType java iabbrev pcls public class <esc>"%pvbbdbbv^wwdA {<cr>}<esc>O
autocmd FileType java iabbrev pint public interface <esc>"%pvbbdbbv^wwdA {<cr>}<esc>O
autocmd FileType java iabbrev psvm public static void main(String[] args) {<cr>}<esc>O
autocmd FileType typescript iabbrev ecls export class <esc>"%pvbbdbbv^wwdA {<cr>}<esc>O
autocmd FileType typescript iabbrev eint export interface <esc>"%pvbbdbbv^wwdA {<cr>}<esc>O
