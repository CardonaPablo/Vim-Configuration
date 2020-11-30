"Plugin Configuration
let g:deoplete#enable_at_startup = 1

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

let g:javascript_plugin_flow = 1

"UltiSnippets
let g:UltiSnipsExpandTrigger='<c-j>'
let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/.vim/UltiSnips']

