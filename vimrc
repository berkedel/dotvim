filetype off
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin indent on

"gets rid of all the crap that Vim does to be vi compatible
set nocompatible

"prevents some security exploits having to do with modelines in files
set modelines=0
