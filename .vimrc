set number
set mouse=a
set relativenumber
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set noshowmode
set sw=2
set expandtab
set smartindent
set laststatus=2
set noswapfile
set background=dark
set t_Co=256
set hidden
if (has("termguicolors"))
  set termguicolors
endif

so ~/.vim/plugins.vim
so ~/.vim/maps.vim
so ~/.vim/config-plugin.vim

colorscheme gruvbox
let g:gruvbox_termcolors = 256
let g:gruvbox_contrast_dark="hard"
