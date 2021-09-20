set encoding=UTF-8
call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mileszs/ack.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'itchyny/lightline.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-commentary'
Plug 'terryma/vim-expand-region'
Plug 'tpope/vim-fugitive'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'nathanaelkane/vim-indent-guides'
Plug 'michaeljsmith/vim-indent-object'
Plug 'editorconfig/editorconfig-vim'
Plug 'dracula/vim', { 'as': 'dracula' }
call plug#end()

colorscheme dracula
let g:snipMate = { 'snippet_version' : 1 }
set number
set tabstop=4
set shiftwidth=4
set expandtab
let mapleader = " "
inoremap <C-b> <C-o>:NERDTreeToggle<CR>
nnoremap <C-b> :NERDTreeToggle<CR>i
