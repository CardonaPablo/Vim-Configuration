"Plugin Configuration

"Airline
let g:airline_powerline_fonts = 1
let g:airline_theme='luna'

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
set completeopt+=menuone
set completeopt+=noselect
autocmd CompleteDone * if !pumvisible() | pclose | endif
set belloff+=ctrlg

