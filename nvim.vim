set shortmess=atWI
set ignorecase
set nowrap
set smartcase
set laststatus=2
set updatetime=100
set noswapfile
set shortmess+=T
set cmdheight=1

let g:snipMate = { 'snippet_version' : 1 }


call plug#begin('~/.vim/plugged')
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'easymotion/vim-easymotion'
Plug 'lervag/vimtex'
Plug 'mattn/emmet-vim'
"snipmate
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
"endsnipmate
call plug#end()



"Tab Navigation
nnoremap <Leader><Up> <Cmd>enew<CR>
nnoremap <Leader><Right> <Cmd>BufferLineCycleNext<CR>
nnoremap <Leader><Left> <Cmd>BufferLineCyclePrev<CR>
nnoremap <Leader><Down> :bw!<CR>
nnoremap ZQ :bw!<CR>

"Copy Paste from OS Clipboard
vnoremap <C-c> "+y
nnoremap <C-v> "+p
inoremap <C-v> <C-o>"+p

"Toggle Wrap
nnoremap <Leader>w :set wrap!<CR><CR>

"Ctrl+S to save
nnoremap <C-s> :w<CR>
inoremap <C-s> <C-o>:w<CR>

nmap <leader>` <Cmd>execute v:count . "ToggleTerm"<CR>
tnoremap <silent><leader>` <Cmd>execute v:count . "ToggleTerm"<CR>
tnoremap <C-w> <C-\><C-n><C-w><C-w>
tnoremap <Esc> <C-\><C-n>


"Compile and run C++
"Define a global variable containing the current environment's name
"if it hasn't been already defined.
if !exists('g:env')
    if has('win64') || has('win32') || has('win16')
        let g:env = 'WINDOWS'
    else
        let g:env = toupper(substitute(system('uname'), '\n', '', ''))
    endif
endif

autocmd FileType javascript  nnoremap <buffer> <leader>cc :execute "!node %"<CR>
autocmd FileType cpp  nnoremap <buffer> <leader>cc :execute g:env == "WINDOWS" ? "terminal! g++ % -o %:r.exe && %:r.exe" : "terminal! g++ % -o %:r.out && ./%:r.out "<CR>
autocmd FileType typescript  nnoremap <buffer> <leader>cc :execute "!ts-node %"<CR>
autocmd FileType sh  nnoremap <buffer> <leader>cc :execute "terminal! bash %"<CR>

"Keep it Centered
nnoremap n nzzzv
nnoremap N Nzzzv
set hls

"Remap Multi Cursor VIM ----------------------------
let g:VM_maps = {}
let g:VM_maps['Find Under'] = ''
let g:VM_maps['Find Subword Under'] = ''   
xmap <C-d> <Plug>(VM-Find-Subword-Under)
nmap <C-d> <Plug>(VM-Find-Under)

"COC Prettier
command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument

"Emmet Control A
imap <C-A> <Plug>(emmet-expand-abbr)


