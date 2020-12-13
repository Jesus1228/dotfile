"Mapeo de la tecla lider
let mapleader=" "


"CoC configuración
" nmap <silent> gd <Plug>(coc-definition)
" nmap <silent> gy <Plug>(coc-type-definition)
" nmap <silent> gi <Plug>(coc-implementation)
" nmap <silent> gr <Plug>(coc-references)

"Atajos del modo normal
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>vs :vsp<CR>
nmap <Leader>k :bnext<CR>
nmap <Leader>j :bprevious<CR>
nmap <Leader>x :bdelete<CR>

"Atajos del modo insertar
inoremap ii <Esc>
inoremap ' ''<Esc>i
inoremap ( ()<Esc>i

"Atajos del modo visial
vnoremap <Leader>e <Esc>
vnoremap <Leader>c I# <Esc>
