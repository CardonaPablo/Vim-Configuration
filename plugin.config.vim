"Plugin Configuration
let g:deoplete#enable_at_startup = 1

"Fuentes de Ailine 
let g:airline_powerline_fonts = 1
let g:airline_theme='luna'

"NERDTree Keymaps
nmap <leader>t :NERDTreeToggle<CR> 
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <Leader> <Plug>(easymotion-prefix)

"Nerdtree 
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeShowLineNumbers=1
let NERDTreeMapOpenInTab='\t'
let g:javascript_plugin_flow = 1

"UltiSnippets
let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/.vim/UltiSnips']
