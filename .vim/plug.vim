" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

" Plugins.
call plug#begin() | Plug 'preservim/nerdtree' | Plug 'ryanoasis/vim-devicons' | Plug 'jiangmiao/auto-pairs' | Plug 'junegunn/goyo.vim'  | Plug 'junegunn/limelight.vim' | Plug 'lilydjwg/colorizer' | call plug#end()

" Goyo Settings. 
autocmd! User GoyoEnter Limelight     | autocmd! User GoyoLeave Limelight!
let g:limelight_conceal_ctermfg = 240 | let g:limelight_conceal_guifg = '#777777'

" NERDTree Settings. 
let NERDTreeMinimalUI =1 | let NERDTreeDirArrows =1
let NERDTreeShowHidden=1 | let NERDTreeQuitOnOpen=1
