filetype plugin on

"Plugins
call plug#begin('~/.local/share/nvim/site/mplugins')
Plug 'scrooloose/nerdTree'
Plug 'tpope/vim-surround'
Plug 'Shougo/deoplete.nvim', {'do':':UpdateRemotePlugins'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'
Plug 'sirver/ultisnips'
call plug#end()

set ignorecase
set hidden
set cmdheight=2
set updatetime=300
set shortmess+=c
set backspace=indent,eol,start
set autoindent
set showcmd
set ruler
set tabstop=4

vnoremap _g y:exe "grep /" . escape(@", '\\/') . "/ /.py *.js"<CR>
filetype plugin indent on
set rnu
set nu

"Plugin Config
so ~/.config/nvim/plugin.config.vim

" Mapeo de lider y shortcuts personales
inoremap ii <Esc>
let mapleader = " "
let gmapleader = " "
nmap <leader>q :q<cr>
nmap <leader>s :w!<cr>
nmap <leader>n :bn<cr>
nmap <leader>p :bp<cr> 
nmap <leader>d :bd<cr>
set mouse=a


"Skip closing character with tab
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : stridx(" ])}`\"", getline('.')[col('.')-1]) > 1 ? "\<Right>":"\t"

"Snippet to press f in visual mode to select the text and
"do :%s/selected_text/cursor/gc

vnoremap f y/\V<C-R>=escape(@",'/\')<CR><CR>
vnoremap g y:%s/\<<C-R>=escape(@",'/\')<CR>\>/

"Function to swap lines with Ctrl+J or Ctrl+K
function! s:swap_lines(n1, n2)
    let line1 = getline(a:n1)
    let line2 = getline(a:n2)
    call setline(a:n1, line2)
    call setline(a:n2, line1)
endfunction

function! s:swap_up()
    let n = line('.')
    if n == 1
        return
    endif

    call s:swap_lines(n, n - 1)
    exec n - 1
endfunction

function! s:swap_down()
    let n = line('.')
    if n == line('$')
        return
    endif

    call s:swap_lines(n, n + 1)
    exec n + 1
endfunction

noremap <silent> <c-k> :call <SID>swap_up()<CR>
noremap <silent> <c-j> :call <SID>swap_down()<CR>

