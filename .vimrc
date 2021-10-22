set number
set mouse=a
set relativenumber
set numberwidth=1
set clipboard=unnamedplus
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set noshowmode
set nocompatible
set sw=2
set expandtab
set smartindent
set smarttab
set laststatus=2
set noswapfile
"set background=dark
set t_Co=256
set hidden
set linebreak
set splitright
set guifont=HackNF\ 12
filetype on
filetype indent on
filetype plugin on
if (has("termguicolors"))
 set termguicolors
endif

let g:polyglot_disabled = ['python', 'c/c++', 'sensible']

so ~/.vim/plugins.vim
so ~/.vim/config-plugin.vim
so ~/.vim/maps.vim

let g:material_theme_style = 'palenight' "default, palenight, ocean, lighter, and darker
let g:material_terminal_italics = 1
colorscheme material

"let g:onedark_terminal_italics=1
"let g:onedark_termcolors=256
"colorscheme onedark
" hi Normal guibg=NONE ctermbg=NONE
" hi LineNr guibg=NONE ctermbg=NONE
" hi SignColumn guibg=NONE ctermbg=NONE
" hi EndOfBuffer guibg=NONE ctermbg=NONE


" colorscheme rose-pine-dark

"let g:tokyonight_style = 'storm' " available: night, storm colorscheme tokyonight
"let g:tokyonight_enable_italic = 1
"let g:tokyonight_transparent_background = 1
"let g:tokyonight_current_word = 'italic'
"colorscheme tokyonight

" colorscheme dracula

"let g:gruvbox_contrast_dark="soft"
"let g:gruvbox_transparent_bg= 1
"let g:gruvbox_italicize_comments= 1
"colorscheme gruvbox

"let g:oceanic_next_terminal_bold = 1
"let g:oceanic_next_terminal_italic = 1
"colorscheme OceanicNext

"if &term == "alacritty"        
"  let &term = "xterm-256color"
"endif

"let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"let &t_8b = "\<Esc>[48:2;%lu;%lu;%lum"
"execute "set t_8f=\e[38;2;%lu;%lu;%lum"
"execute "set t_8b=\e[48;2;%lu;%lu;%lum"

