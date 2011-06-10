filetype indent on
set et
set ts=8 sts=4 sw=4
set ruler
set textwidth=78
set nohlsearch
set scrolloff=0
set nofoldenable
syntax on

au BufNewFile,BufRead *.tt,*.tt2 set filetype=tt2html
au BufNewFile,BufRead Gemfile,.autotest set filetype=ruby

hi Statement    ctermfg=yellow
hi Comment      ctermfg=green
hi String       ctermfg=red
hi Constant     ctermfg=blue

"
" Make EOL-whitespace and tabs stand out in visually painful ways.
" Toggle with ':set list!'.
"
hi SpecialKey   ctermfg=white ctermbg=red
set listchars=tab:>-,trail:.
set list

"
" Override defaults for Ruby, HTML, and CSS.
"
au FileType ruby,html,erb,eruby,css set ts=8 sts=2 sw=2
