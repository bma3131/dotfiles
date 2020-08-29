" vim-plug plugins
call plug#begin('~/.vim/plugged')

Plug 'flazz/vim-colorschemes'
Plug 'xavierd/clang_complete'
Plug 'StanAngeloff/php.vim'
Plug 'shawncplus/phpcomplete.vim'
"Plug 'scrooloose/nerdtree'
Plug 'vim-vdebug/vdebug'
Plug 'pangloss/vim-javascript'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'mattn/emmet-vim'

call plug#end()


"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif


" Setup
" General
set number
set autoindent
set colorcolumn=78
set linebreak
set tabstop=4
set shiftwidth=4

" Folding
set foldmethod=indent
set foldlevel=99
set foldclose=all
set guicursor=i:blinkwait700-blinkon400-blinkoff250

" Binds
nnoremap <Home> <Nop>
nnoremap <End> <Nop>
nnoremap <Del> <Nop>
nnoremap <BS> <Nop>
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <PageUp> <Nop>
nnoremap <PageDown> <Nop>
nnoremap <Space> <Nop>
nnoremap <Enter> <Nop>
inoremap <Home> <Nop>
inoremap <End> <Nop>
inoremap <Del> <Nop>
inoremap <BS> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap <PageUp> <Nop>
inoremap <PageDown> <Nop>
vnoremap <Home> <Nop>
vnoremap <End> <Nop>
vnoremap <Del> <Nop>
vnoremap <BS> <Nop>
vnoremap <Up> <Nop>
vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>
vnoremap <PageUp> <Nop>
vnoremap <PageDown> <Nop>
vnoremap <Space> <Nop>
vnoremap <Enter> <Nop>
cnoremap <Home> <Nop>
cnoremap <End> <Nop>
cnoremap <Del> <Nop>
cnoremap <BS> <Nop>
cnoremap <Up> <Nop>
cnoremap <Down> <Nop>
cnoremap <Left> <Nop>
cnoremap <Right> <Nop>
cnoremap <PageUp> <Nop>
cnoremap <PageDown> <Nop>

" Completion
set completeopt-=preview

" Relative numbers function and bind (ctrl + l)
function! g:ToggleNuMode()
  if &rnu == 0
     set rnu
  else
     set nornu
  endif
endfunction
nnoremap <silent><C-L> :call g:ToggleNuMode()<cr>

" Filetypes tabs
autocmd FileType javascript setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab

" C Completion
let g:clang_library_path='/usr/lib/llvm-3.9/lib/'

" NERDTree Toggle Bind
"map <C-n> :NERDTreeToggle<CR>

" Emmet self-closing tag
let g:emmet_html5 = 0

" Colors
colorscheme Tomorrow-Night-Eighties
"colorscheme breeze
highlight LineNr guifg=Silver
"highlight CursorLineNr guifg=Grey14 guibg=Grey42
highlight StatusLine guifg=Grey66 guibg=Grey11
highlight Normal guibg=Grey11
highlight NonText guibg=Grey11
highlight DbgBreakptLine guibg=Grey23
highlight NERDTreeFile guibg=None
" highlight ColorColumn guibg=Grey11

"let g:airline_theme='minimalist'
"let g:airline_theme='desertink'
