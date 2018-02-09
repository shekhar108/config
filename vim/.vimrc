set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'wmgraphviz'
Plugin 'vim-airline/vim-airline'
Plugin 'jiangmiao/auto-pairs'

call vundle#end()            " required
filetype plugin on
filetype indent on " automatically indent code

" display settings
set encoding=utf-8 " encoding used for displaying file
set ruler " show the cursor position all the time
set showmatch " highlight matching braces
set showmode " show insert/replace/visual mode
set number
syntax enable

" write settings
set confirm " confirm :q in case of unsaved changes
set fileencoding=utf-8 " encoding used when saving file

"backup settings
set swapfile
set dir=$HOME/.vim/swapfiles

" edit settings
set tabstop=2
set autoindent
set expandtab
set shiftwidth=2
set mouse=a " enable mouse

set clipboard=unnamed
set splitbelow
set splitright

" search settings
set hlsearch " highlight search results
set hlsearch
hi Search ctermbg=LightYellow
hi Search ctermfg=Red
set ignorecase " do case insensitive search...
set incsearch " do incremental search

set laststatus=2

" file type specific settings
"filetype on " enable file type detection
"filetype plugin on " load the plugins for specific file types

" characters for displaying non-printable characters
set listchars=eol:$,tab:>-,trail:.,nbsp:_,extends:+,precedes:+

" automatic commands
if has('autocmd')
   autocmd VimEnter * NERDTree | wincmd p

   " delete any trailing whitespaces
   autocmd BufWritePre * :%s/\s\+$//ge
endif

" Give a shortcut key to NERD Tree
map <F2> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="-"

" general key mappings
nnoremap <Tab> <c-w>w
nnoremap <bs> <c-w>W

imap jj <esc>
