"NerdTree Configuración
let NERDTreeQuitOnOpen = 1

let g:NERDTreeLimitedSyntax = 1
"let g:NERDTreeSyntaxDisableDefaultExtensions = 1
"let g:NERDTreeSyntaxDisableDefaultExactMatches = 1
"let g:NERDTreeSyntaxDisableDefaultPatternMatches = 1
"let g:NERDTreeSyntaxEnabledExtensions = ['c', 'vim', 'json', 'py', 'js', 'css', 'html'] " enabled extensions with default colors
"let g:NERDTreeSyntaxEnabledExactMatches = ['node_modules', 'favicon.ico', 'core', 'app'] " enabled exact matches with default colors

"--------------------------

"Configuraciones del airline
let g:airline_powerline_fonts = 1
let g:airline_theme= 'dracula'
let g:airline_section_y = 'BN: %{bufnr("%")}'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

" let g:airline#extensions#coc#enabled = 0
" let airline#extensions#coc#error_symbol = 'Error:'
" let airline#extensions#coc#warning_symbol = 'Warning:'
" let airline#extensions#coc#stl_format_err = '%E{[%e(#%fe)]}'
" let airline#extensions#coc#stl_format_warn = '%W{[%w(#%fw)]}'

"----------------------------------------------------

"Layout
if !exists('g:undotree_WindowLayout')
    let g:undotree_WindowLayout = 2
endif

" diff window height
if !exists('g:undotree_DiffpanelHeight')
    let g:undotree_DiffpanelHeight = 8
endif

" if set, let undotree window get focus after being opened, otherwise
" focus will stay in current window.
if !exists('g:undotree_SetFocusWhenToggle')
    let g:undotree_SetFocusWhenToggle = 1
endif
"----------------------------------------------------

"indentLine
"let g:indentLine_char_list = ['│', '┊']
let g:indentLine_color_term = 239
let g:indentLine_faster=1

"Syntaxis
let g:python_highlight_all = 1

"Closetag configuración
let g:closetag_filenames = '*.html'

"-----------------------------------------------

"Coc

"TextEdit might fail if hidden is not set
"set hidden

"Ten más espacio para mostrar mensajes.
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
xmap <leader>e  <Plug>(coc-format-selected)
nmap <leader>e  <Plug>(coc-format-selected)

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
"Fuzzy Finder


let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }


let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'

"call fzf#run({'sink': 'tabedit', 'options': '--multi --reverse'})

let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'preview-fg': ['fg', 'Conditional'],
  \ 'preview-bg': ['bg', 'Conditional'],
  \ 'header':  ['fg', 'Comment'] }
