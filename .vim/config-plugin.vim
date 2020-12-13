"NerdTree Configuración
let NERDTreeQuitOnOpen = 1

"--------------------------

"Configuraciones del airline
let g:airline_powerline_fonts = 1
let g:airline_theme= 'tokyonight'
let g:airline_section_y = 'BN: %{bufnr("%")}'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1

"----------------------------------------------------

"Syntaxis
let g:python_highlight_all = 1

"Coc

"TextEdit might fail if hidden is not set
set hidden

"Ten más espeacio para mostrar mensajes.
set cmdheight=2

"Teniendo mucho tiempo de actualizado (default is 4000 ms = 4s) resulta en
"retrasos y mala experiencias de usuarios
set updatetime=300


" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

"----------------------------------------------------------------------------------------------------------

"indentLine
"let g:indentLine_char_list = ['│', '┊']
let g:indentLine_color_term = 239
let g:indentLine_faster=1

"------------------------------------------------ 

"Closetag configuración
let g:closetag_filenames = '*.html'

"-----------------------------------------------
