
" An example for a vimrc file.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2019 Dec 17
"
" To use it, copy it to
"	       for Unix:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"	 for MS-Windows:  $VIM\_vimrc
"	      for Haiku:  ~/config/settings/vim/vimrc
"	    for OpenVMS:  sys$login:.vimrc

" When started as "evim", evim.vim will already have done these settings, bail
" out.

" PLUGINS ---------------------------------------------------------------- {{{

"auto closing"
ino " ""<left>
ino ' ''<left>
ino ( ()<left>
ino [ []<left>
ino { {}<left>
ino { <CR> {<CR>}<ESC>O

" }}}


" MAPPINGS --------------------------------------------------------------- {{{

" Mappings code goes here.

" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{
"theme
colorscheme desert
"Activer la numérotaion absolue des lignes
:set rnu nu
"Passer un bufffer en arrière plan sans avoir besoin de l'enregistrer
:set hidden
"Auto indentation
:set ai
"réglage indentation
set tabstop =2
set shiftwidth=2
"colorisation syntaxique
if has("syntax")
	syntax on
endif
"Afficher la position du curseur
set ruler
"retrouver facilement le curseur dans une page
set cursorline
"définie le split vertical pour visualiser les différences
set diffopt=vertical
"active la detection d'extention de fichier
filetype on
"active l'indentation en fonction des type de fichier
filetype indent on
"affiche les commandes partielles
set showcmd
"surligne les mots correspondant lors d'une recherche
set hlsearch
"active l'auto completion dans le menu d'action
set wildmenu
"ignore les fichiers suivant :
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
"
" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" Encoding
set encoding=utf-8
" }}}


" STATUS LINE ------------------------------------------------------------ {{{

set laststatus=1

" }}}

