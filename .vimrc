set encoding=UTF-8
syntax on

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
Plug 'dbeniamine/cheat.sh-vim'
"Plug 'ycm-core/YouCompleteMe'   " Too Complicated, harus Python Cmake, dkk nya
Plug 'mbbill/undotree'
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
set vb t_vb=

if !has('gui_running')
  set t_Co=256
endif

let g:coc_global_extensions = ['coc-html','coc-html-css-support','@yaegassy/coc-intelephense','coc-json','coc-tsserver','coc-css','coc-markdown-preview-enhanced','coc-sh','coc-sql','coc-sumneko-lua','coc-yaml','coc-webview']

"Remap Multi Cursor VIM ----------------------------
let g:VM_maps = {}
let g:VM_maps['Find Under'] = ''
let g:VM_maps['Find Subword Under'] = ''   
xmap <C-d> <Plug>(VM-Find-Subword-Under)
nmap <C-d> <Plug>(VM-Find-Under)

"Remap Change Language
map <C-l> <C-o>:setf 

"Keep it Centered
nnoremap n nzzzv
nnoremap N Nzzzv
set hls

"Undo Break Points
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u
nnoremap <C-u> <C-o>:UndotreeToggle<CR>
inoremap <C-u> <C-o>:UndotreeToggle<CR>

"Tab Navigation
nnoremap <Leader><Up> :tabnew<CR>
nnoremap <Leader><Right> :tabnext<CR>
nnoremap <Leader><Left> :tabprevious<CR>
nnoremap <Leader><Down> :tabclose<CR>

"Cheat SH
let g:syntastic_javascript_checkers = [ 'jshint' ]


"Git Quick Commit
nnoremap <Leader>gc :execute "Git add . \| Git commit -m 'Message of the commit'"
nnoremap <Leader>gp :Git push<CR>
nnoremap <Leader>gl :Git log<CR>
