set nocompatible              " required
filetype off                  " required
set background=dark
syntax enable
set backspace=indent,eol,start
"set number
set relativenumber
set showcmd




"colorscheme	 dracula

"--------------Mappings-----------------------"
nmap ,ev :tabedit $MYVIMRC<cr>

"---------------Auto-commands-----------------"
"Automatically source the vimrc file on save.
"autocmd BufWritePost .vimrc source %
set t_Co=256 "set 256 colors
"colorscheme wombat256mod "set color scheme
set ruler
set ttyfast
set tabstop=4
set shiftwidth=4
set smarttab 
set cursorline
set showmatch
set enc=utf-8


set hlsearch
set incsearch
"Enable bold fonts for methods in vim.
let g:enable_bold_font = 1

"Unmap the arrow keys
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
no <up> <Nop>

ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'mattn/emmet-vim'
Plugin 'severin-lemaignan/vim-minimap'
Plugin 'kristijanhusak/vim-hybrid-material'
Plugin 'tpope/vim-fugitive'
Plugin 'SirVer/ultisnips'
 "-------------------=== Code/Project navigation ===-------------
Plugin 'majutsushi/tagbar' "Class/module browser
Plugin 'kien/ctrlp.vim'    " Fast transitions on project file
Plugin 'scrooloose/nerdtree'

"-------------------=== Other ===-------------------------------
Plugin 'bling/vim-airline'                  " Lean & mean status/tabline for vim
Plugin 'vim-airline/vim-airline-themes'     " Themes for airline
Plugin 'Lokaltog/powerline'                 " Powerline fonts plugin
Plugin 'fisadev/FixedTaskList.vim'          " Pending tasks list
Plugin 'rosenfeld/conque-term'              " Consoles as buffers
Plugin 'tpope/vim-surround'                 " Parentheses, brackets, quotes, XML tags, and more
Plugin 'flazz/vim-colorschemes'             " Colorschemes
Plugin 'dracula/vim' 						"Color theme dracula for vim.
"-------------------=== Snippets support ===--------------------
Plugin 'garbas/vim-snipmate'                " Snippets manager
Plugin 'MarcWeber/vim-addon-mw-utils'       " dependencies #1
Plugin 'tomtom/tlib_vim'                    " dependencies #2
Plugin 'honza/vim-snippets'                 " snippets repo
"-------------------=== Languages support ===-------------------
Plugin 'tpope/vim-commentary'               " Comment stuff out
Plugin 'mitsuhiko/vim-sparkup'              " Sparkup(XML/jinja/htlm-django/etc.) support
Plugin 'Rykka/riv.vim'                      " ReStructuredText plugin

"-------------------=== Python  ===-----------------------------
Plugin 'klen/python-mode'                   " Python mode (docs, refactor, lints...)
Plugin 'scrooloose/syntastic'               " Syntax checking plugin for Vim


" All of your Plugins must be added before the following line

call vundle#end()            " required
filetype plugin indent on    " required
