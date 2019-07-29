call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'pangloss/vim-javascript'
Plug 'lifepillar/vim-solarized8'
Plug 'chriskempson/base16-vim'
Plug 'morhetz/gruvbox'
Plug 'dracula/vim'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'easymotion/vim-easymotion'
Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'leafgarland/typescript-vim'

call plug#end()


set cursorline
set number
hi cursorline cterm=none term=none
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
highlight CursorLine guibg=#303000 ctermbg=234

let NERDTreeShowHidden=1 " 显示隐藏文件
let g:NERDTreeWinPos = "right"
" Stick this in your vimrc to open NERDTree with Ctrl+n (you can set whatever key you want):
map <C-n> :NERDTreeToggle<CR>
" How can I close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:NERDTreeShowIgnoredStatus = 1
let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
let NERDTreeWinSize=30
let g:nerdtree_tabs_open_on_console_startup=1
let NERDTreeIgnore=['\.git$', '\.*\.swp$']
" vim不指定具体文件打开是，自动使用nerdtree
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
let g:NERDTreeWinPos = "left"

" solrized8
set background=dark
colorscheme solarized8
let g:solarized_visibility="high"
"let g:solarized_diffmode="hight"
let g:solarized_termtrans=0
"let g:solarized_statusline="flat"
"let g:solarized_italics=0
"let g:solarized_old_cursor_style=1
highlight Normal ctermbg=None

" vim-javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

set backspace=indent,eol,start
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType html       setlocal shiftwidth=2 tabstop=2
autocmd FileType python     setlocal shiftwidth=4 softtabstop=4 expandtab

" auto save
"let g:auto_save = 1
