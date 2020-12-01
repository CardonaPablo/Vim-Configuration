"Plugin Configuration

"Airline
let g:airline_powerline_fonts = 1
let g:airline_theme='luna'
let g:airline#extensions#tabline#enabled = 1

"Easymotion
map <Leader> <Plug>(easymotion-prefix)

"NERDTree
nmap <Leader>t :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeMinimalUI=1
let NERDTreeShowLineNumbers=1

"UltiSnippets
let g:UltiSnipsExpandTrigger='<Tab>'
let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/UltiSnips']

"Kite Config
let g:kite_supported_languages = ['python', 'javascript', 'typescript', 'html']
let g:kite_tab_complete=1
let g:kite_auto_complete=1
autocmd CompleteDone * if !pumvisible() | pclose | endif
set completeopt+=menuone
set completeopt-=noselect  " Highlight the first completion automatically
set completeopt+=noinsert
inoremap <C-space> <C-x><C-u>
imap <C-j> <C-n>
imap <C-k> <C-p>


