call plug#begin('~/.vim/plugged')

"Temas
Plug 'morhetz/gruvbox'
Plug 'mhartington/oceanic-next'
Plug 'joshdick/onedark.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'ghifarit53/tokyonight-vim'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

"IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'yggdroot/indentLine'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mbbill/undotree'

"Syntaxis
Plug 'vim-python/python-syntax'
Plug 'sheerun/vim-polyglot'

"Autocompletado
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'alvan/vim-closetag'

call plug#end()
