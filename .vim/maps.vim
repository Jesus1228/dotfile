"Mapeo de la tecla lider
let mapleader=" "

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

"Atajos del modo insertar
inoremap ii <Esc>
inoremap ' ''<Esc>i
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i
inoremap ;g <++><Esc>

"Atajos del modo visial
vnoremap <Leader>e <Esc>
vnoremap <Leader>c I# <Esc>
vnoremap <Leader>z I" <Esc>

"CoC

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)"
nnoremap <Leader>d :CocDiagnostics<CR>

" LaTex
" Comandos generales
nnoremap <Leader>tex :-1read /home/chuyx/Plantillas/Plantilla.tex<CR>
autocmd filetype tex nnoremap <Leader>c :CocCommand latex.Build<CR>
autocmd filetype tex nnoremap <Leader>v :CocCommand latex.ForwardSearch<CR>

"Bloques
autocmd filetype tex inoremap sct \section{}<Esc>i
autocmd filetype tex inoremap ssec \subsection{}<Esc>i
autocmd filetype tex nnoremap <Leader>tem i\item
autocmd filetype tex nnoremap <Leader>up i\usepackage{}<Esc>i
autocmd filetype tex nnoremap <Leader>inc i\include{Portada}<Esc>
autocmd filetype tex nnoremap <Leader>toc i\tableofcontents<Esc>

"Formato
autocmd filetype tex inoremap <Leader>bf \textbf{}<Esc>i
autocmd filetype tex inoremap <Leader>it \textit{}<Esc>i
autocmd filetype tex inoremap <Leader>tt \texttt{}<Esc>i
autocmd filetype tex inoremap <Leader>sc \textsc{}<Esc>i
autocmd filetype tex inoremap <Leader>bb \mathbb{}<Esc>i

"Modo Matemático
autocmd filetype tex inoremap mm \
autocmd filetype tex inoremap forall \forall
autocmd filetype tex inoremap ssi \leftrightarrow
