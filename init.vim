filetype plugin indent on

"Plugins
call plug#begin('~/.local/share/nvim/site/mplugins')

"Navigation tree
Plug 'preservim/nerdTree'
"Start screen
Plug 'mhinz/vim-startify'
"Surround with cs <target><replace>
Plug 'tpope/vim-surround'
"Pretty status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Moving through file
Plug 'easymotion/vim-easymotion'
"Git commands 
Plug 'tpope/vim-fugitive'
"Show diff in file
Plug 'airblade/vim-gitgutter'
"Custom snippets
Plug 'sirver/ultisnips'
"Icons for NERDTree
Plug 'ryanoasis/vim-devicons'
"Git Icons for NERDTree
Plug 'Xuyuanp/nerdtree-git-plugin'
"Multicursors
Plug 'terryma/vim-multiple-cursors'
"Finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"Auto-close HTML tags"
Plug 'alvan/vim-closetag'
"Commenter <leader>c<space>
Plug 'preservim/nerdcommenter'
"Auto-pairs
Plug 'jiangmiao/auto-pairs'
"Highlight CSS Colors
Plug 'ap/vim-css-color'
"Emmet
Plug 'mattn/emmet-vim'
call plug#end()

set ignorecase
set hidden
set noshowmode
set shortmess+=c
set backspace=indent,eol,start
set autoindent
set tabstop=2
set shiftwidth=2
set expandtab
set nu

"Mapeo de lider y shortcuts personales
inoremap ii <Esc>
let mapleader = " "
let gmapleader = " "
nmap <leader>q :q<cr>
nmap <leader>s :wa!<cr>
nmap <leader>n :bn<cr>
nmap <leader>p :bp<cr>
nmap <leader>d :bd<cr>
nmap nf :NERDTreeFind<cr>
set mouse=a

"Show trailing whitespace
nmap tw /\s\+$<CR>
"Disable highlight
nmap H :noh<CR>
"Copy to system clipboard in visual mode
vmap <C-x> "*y
"Skip character with Shift-tab
imap <S-Tab> <Right>

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

"Plugin Config
so ~/.config/nvim/pluginconfig.vim
