syntax on
set shortmess=a
set nowrap
set ignorecase
set smartcase
set laststatus=2
set updatetime=100
set noswapfile

"Auto open nerdTree
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd BufWinEnter * NERDTreeMirror

let g:ctrlp_custom_ignore = '\v[\/](wp-admin|wp-includes|node_modules|target|dist)|(\.(swp|ico|git|svn))$'
let g:ctrlp_clear_cache_on_exit = 0

call plug#begin('~/.vim/plugged')
Plug 'itchyny/vim-gitbranch'
Plug 'airblade/vim-gitgutter'
Plug 'rbong/vim-flog'
Plug 'dNitro/vim-pug-complete', { 'for': ['jade', 'pug'] }
Plug 'jiangmiao/auto-pairs'
Plug 'brooth/far.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mileszs/ack.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'itchyny/lightline.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'digitaltoad/vim-pug'
"snipmate
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
"endsnipmate
"
"Plug 'hrsh7th/vim-vsnip'
"Plug 'hrsh7th/vim-vsnip-integ'
"
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
Plug 'gruvbox-community/gruvbox'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'yuezk/vim-js'
"Plug 'puremourning/vimspector'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'pmalek/toogle-maximize.vim'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
call plug#end()

let g:material_theme_style = 'darker-community'

"Snipmate Scope
let g:snipMate = get(g:, 'snipMate', {}) " Allow for vimrc re-sourcing
let g:snipMate.scope_aliases = {}
let g:snipMate.scope_aliases['javascriptreact'] = 'javascript,javascriptreact'
let g:snipMate.scope_aliases['typescript'] = 'javascript,typescript'
let g:snipMate.scope_aliases['typescriptreact'] = 'javascriptreact,typescriptreact'


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

let g:coc_global_extensions = ['coc-html','coc-html-css-support','@yaegassy/coc-intelephense','coc-json','coc-tsserver','coc-css','coc-sh','coc-sql','coc-sumneko-lua','coc-yaml','coc-webview']

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


"Git Mapping
nnoremap <Leader>g :vertical Git<CR>45<C-w><<C-w><C-w>
nnoremap <Leader>gg :vertical Git<CR>45<C-w><<C-w><C-w>
nnoremap <Leader>gc :execute "Git add . \| Git commit -m 'msg'"
nnoremap <Leader>gp :vertical Git push<CR>
nnoremap <Leader>gd :Git diff<CR>
nnoremap <Leader>gl :Flogsplit<CR>

"MISC
nmap <leader><leader> :redraw!<CR>
nmap <leader>` :terminal<CR><C-w>J<C-w>-<C-w>-<C-w>-<C-w>-<C-w>-

"RESIZE WINDOW
nnoremap . :vertical resize -10<CR>
nnoremap , :vertical resize +5<CR>

"Light Line Custom
let g:lightline = {
            \ 'colorscheme': 'powerline',
            \ 'active': {
            \   'left': [ [ 'mode', 'paste' ],
            \             [ 'gitbranch', 'readonly', 'filename', 'shortcut' ] ],
            \   'right': [ [ 'lineinfo' ],
            \              [ 'filetype' ],[ 'shortcur' ] ]
            \ },
            \ 'component': {
            \   'shortcut': 'Hotkey=>g:GIT,`:Terminal,KB:Cheat.sh',
            \   'shortcur': 'Commands:Far',
            \ },
            \ 'component_function' : {
            \   'gitbranch': 'gitbranch#name'
            \ }
            \ }
