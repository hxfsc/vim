set nocompatible 

set tabstop=2
set softtabstop=2
set shiftwidth=2

" 行号 当前行列高亮
set nu
set cursorline
set cursorcolumn

" 语法高亮
syntax on

" 搜索高亮
set hls
set incsearch

" 自动缩进
set autoindent

" 使用系统clipboard
set clipboard=unnamed




let mapleader=","
inoremap <leader>w <Esc>:w<cr>
inoremap jj <Esc>`^
inoremap <C-d> <Esc>ddi
inoremap <C-l> <Esc>lli
inoremap <C-h> <Esc>ha


nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l




com! FormatJSON %!python3 -m json.tool


" vim-plug配置
call plug#begin()
	Plug  'sainnhe/everforest'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'yggdroot/indentline'
	Plug 'scrooloose/nerdtree'
	Plug 'kien/ctrlp.vim'
	Plug 'easymotion/vim-easymotion'
	Plug 'tpope/vim-surround'
	Plug 'junegunn/fzf'
	Plug 'mattn/emmet-vim'
	Plug 'connorholyday/vim-snazzy'

	Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()


colorscheme snazzy 

let g:SnazzyTransparent = 1

" For dark version.
 set background=dark

" For light version.
" set background=light

" Set contrast.
" This configuration option should be placed before `colorscheme everforest`.
" Available values: 'hard', 'medium'(default), 'soft'
let g:everforest_background = 'soft'

" For better performance
let g:everforest_better_performance = 1


" airline 配置
"let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_theme='angr'



"NERD Tree配置
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-e> :NERDTreeFind<CR>
nnoremap <C-n> :NERDTreeMirror<CR>:NERDTreeFocus<CR>


let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'



"CtrlP 配置
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
	\ 'dir':  '\v[\/]\.(git|hg|svn)$',
	\ 'file': '\v\.(exe|so|dll)$',
	\ 'link': 'some_bad_symbolic_links',
	\ }
let g:ctrlp_user_command = 'find %s -type f'


"easy motion配置
nmap ss <Plug>(easymotion-s2)



"coc configuration
set updatetime=300
set signcolumn=yes

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction




