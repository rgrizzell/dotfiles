" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin('~/.vim/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'altercation/vim-colors-solarized'
Plug 'hashivim/vim-terraform'
Plug '~/.dotfiles/fzf'
call plug#end()


" Vim settings
set modeline
set modelines=5


" Plugin settings
let g:terraform_align=1
let g:terraform_fold_sections=1
let g:terraform_fmt_on_save=1


" Custom commands
command W :execute ':silent w !sudo tee % > /dev/null' | :edit!


" Filetype specific settings
autocmd FileType fish setlocal shiftwidth=4 tabstop=4


" Enable Manpage support
runtime ftplugin/man.vim
set keywordprg=:Man
