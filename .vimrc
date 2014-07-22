set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
syntax on

" F keybord array keys
noremap t h
noremap m j

" File Save and Compile
map <F6> :w <CR>:!dmd % <CR>
map <F2> :NERDTreeToggle <CR>

set laststatus=2
set backspace=2
set foldcolumn=1
set encoding=utf8
set ffs=unix,dos,mac

set nocompatible
set cursorline
set ruler
set number
set autoindent
set showmatch

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Format the status line
"set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ Path:\ %r%{getcwd()}%h\ \ \ Line:\ %l

if has("gui_running")
	colorscheme codeschool 
	set guifont=Inconsolata\ 12
	set guioptions-=T	"Remove Toolbar
	set guioptions-=r  	"Remove right-hand scroll bar
	set guioptions-=L  	"Remove left-hand scroll bar
endif





"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction
