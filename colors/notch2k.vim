
set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "notch2k"

lua require('notch2k').setup()
