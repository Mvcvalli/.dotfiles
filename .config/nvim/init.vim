" Plugins.
call plug#begin('~/.config/nvim/plugged')
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'lilydjwg/colorizer'
call plug#end()

" GENERAL
set encoding=utf-8
set mouse=a
set linebreak
set gdefault
set clipboard^=unnamed,unnamedplus
set background=dark
set viminfo=""
set virtualedit=onemore
set shortmess+=I laststatus=0
set wildmenu wildoptions=pum
set equalalways splitbelow splitright
set nobackup nowritebackup noswapfile
set incsearch hlsearch ignorecase smartcase wildignorecase
set backspace=indent,eol,start
filetype plugin on | filetype indent on | syntax enable

" KEYBINDINGS

" Leader key.
let g:mapleader = "\<Space>"

" Disable Recording & Ex Mode
map q <Nop>
map Q <Nop>

" Disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
map <PageUp> <nop>
map <PageDown> <nop>

" : to ;
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;

" Copies the contents of the entire file to clipboard
nnoremap <C-y> <Cmd>%y +<CR>

" File explorer
nnoremap <silent> <C-f> :NERDTreeToggle<CR>

" Toggle Goyo
nnoremap <leader><ENTER> :Goyo<CR>

" AUTOCOMMANDS

" Disable automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Automatically deletes all trailing whitespace and newlines at end of file on save. & reset cursor position
 	autocmd BufWritePre * let currPos = getpos(".")
	autocmd BufWritePre * %s/\s\+$//e
	autocmd BufWritePre * %s/\n\+\%$//e
  autocmd BufWritePre *.[ch] %s/\%$/\r/e " add trailing newline for ANSI C standard
  autocmd BufWritePre *neomutt* %s/^--$/-- /e " dash-dash-space signature delimiter in emails
  	autocmd BufWritePre * cal cursor(currPos[1], currPos[2])

" SOURCING FILES

source ~/.config/nvim/abbreviations.vim
