"Mapeo de la tecla lider
let mapleader=" "
"----------------------------------------------------

"Fuzzi Finder keybindings
nnoremap <Leader>f :Files<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>ag :Ag<CR>
nnoremap <Leader>cs :Colors<CR>
nnoremap <Leader>l :Lines<CR>
nnoremap <Leader>z :BLines<CR>
nnoremap <Leader>h :History<CR>
nnoremap <Leader>cm :Commands<CR>
"----------------------------------------------------

"Atajos del modo normal
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>vs :vsp<CR>
nmap <Leader>k :bnext<CR>
nmap <Leader>j :bprevious<CR>
nmap <Leader>x :bdelete<CR>
nnoremap <Leader>g /<++><Esc>
"----------------------------------------------------

"Atajos del modo insertar
inoremap <A-i> <Esc>
inoremap ' ''<Esc>i
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i
inoremap ;g <++><Esc>
"----------------------------------------------------

"Atajos del modo visial
vnoremap <Leader>e <Esc>
vnoremap <Leader>c I# <Esc>
vnoremap <Leader>z I" <Esc>
"----------------------------------------------------
"Terminal Buffer
tnoremap <Esc> <C-\><C-n>
nnoremap <Leader>t :terminal<CR>


"----------------------------------------------------

"Undotree
nnoremap <silent>zm :UndotreeToggle<CR>
"---------------------------------------------------- CoC

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)"
nnoremap <Leader>d :CocDiagnostics<CR>
"----------------------------------------------------

" LaTex
" Comandos generales
nnoremap <Leader>tex :-1read /home/chuyx/Plantillas/Plantilla.tex<CR>
autocmd filetype tex nnoremap <Leader>c :CocCommand latex.Build<CR>
autocmd filetype tex nnoremap <Leader>v :CocCommand latex.ForwardSearch<CR>

"Bloques
autocmd filetype tex nnoremap <Leader>tem i\item
autocmd filetype tex nnoremap <Leader>up i\usepackage{}<Esc>i
autocmd filetype tex nnoremap <Leader>inc i\include{Portada}<Esc>
autocmd filetype tex nnoremap <Leader>toc i\tableofcontents<Esc>

"Formato

autocmd filetype tex inoremap <silent>bf \textbf{}<Esc>i
autocmd filetype tex inoremap <silent>itc \textit{}<Esc>i
autocmd filetype tex inoremap <silent>tt \texttt{}<Esc>i
autocmd filetype tex inoremap <silent>tsc \textsc{}<Esc>i
autocmd filetype tex inoremap <silent>bb \mathbb{}<Esc>i

"Modo Matemático
autocmd filetype tex inoremap nn \
autocmd filetype tex inoremap <C-f> \forall
autocmd filetype tex inoremap <C-s> \leftrightarrow
autocmd filetype tex inoremap <A-m> $$<Esc>i
