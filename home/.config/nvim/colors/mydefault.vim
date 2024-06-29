" Neovim color file
" Maintainer:	The Neovim Project <https://github.com/neovim/neovim>
" Last Change:	2023 Dec 01

" This is the default color scheme. See `:help dev_theme`.

" Remove all existing highlighting and set the defaults.
hi clear

" Load the syntax highlighting defaults, if it's enabled.
if exists("syntax_on")
  syntax reset
endif

let colors_name = "mydefault"
" Tone down the contrast a tiny bit.
hi normal guibg=#00151b

" vim: sw=2
