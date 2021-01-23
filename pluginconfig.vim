"Plugin Configuration

"Airline
let g:airline_powerline_fonts = 1
let g:airline_theme='luna'
let g:airline#extensions#tabline#enabled = 1

"Easymotion
map <Leader> <Plug>(easymotion-prefix)

"NERDTree
nmap <Leader>t :NERDTreeToggle<CR> :NERDTreeMirror<CR>
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeMinimalUI=1
let NERDTreeShowLineNumbers=1
let g:NERDTreeWinSize=40

"UltiSnippets
let g:UltiSnipsExpandTrigger='<C-Space>'
let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/UltiSnips']

"Fuzzy Finder
let g:fzf_preview_window = 'right:50%'
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6  }  }
map <C-f> :Rg<CR>

"Closetag
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'
let g:closetag_filetypes = 'html,xhtml,phtml'

"Emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key=','

"Coc  
set updatetime=300
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

