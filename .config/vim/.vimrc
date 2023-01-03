" GENERAL.
filetype plugin on | filetype indent on | syntax enable | set encoding=utf-8
set mouse=a linebreak bg=dark shortmess+=I viminfo=""
set ignorecase smartcase incsearch showmatch hlsearch gdefault
set nobackup nowritebackup noswapfile
set equalalways splitbelow splitright
set wildmenu wildoptions=pum wildignorecase
set clipboard^=unnamed,unnamedplus

" AUTOCOMMANDS.
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o " Disables automatic commenting on newline.
autocmd BufWritePre * %s/\s\+$//e " Remove trailing whitespace on save.

" KEYBINDINGS
let g:mapleader = "\<Space>"

" Disable Recording & Ex Mode.
map q <Nop>
map Q <Nop>

" Disable arrow keys.
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
nnoremap <C-y  <esc>:%y+<CR>

" File explorer
nnoremap <silent> <C-f> :NERDTreeToggle<CR>

" Toggle Goyo
nnoremap <leader><ENTER> :Goyo<CR>

" ABBREVIATIONS
source $HOME/.vim/abbreviations.vim

" VIM-PLUG INSTALL
source $HOME/.vim/plug.vim
