filetype plugin on

"Plugins
call plug#begin('~/.local/share/nvim/site/mplugins')
Plug 'scrooloose/nerdTree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-fugitive'
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
vnoremap _g y:exe "grep /" . escape(@", '\\/') . "/ /.py *.js"<CR>
filetype plugin indent on
set rnu
set nu
"coc settings
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ stridx('])}"`', getline('.')[col('.')-1])!=-1 ? "\<Right>":
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Mapeo de lider y shortcuts personales
inoremap ii <Esc>
let mapleader = " "
let gmapleader = " "
nmap <leader>q : :q<cr>
nmap <leader>s : :w!<cr>
nmap <leader>z  <C-w>w
set mouse=a

"NERDTree Keymaps
nmap <leader>n :NERDTreeToggle<CR> 
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <Leader> <Plug>(easymotion-prefix)

"Fuentes de Airline
let g:airline_powerline_fonts = 1
let g:airline_theme='luna'
