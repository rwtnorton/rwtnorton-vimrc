filetype indent on
set et
set ts=8 sts=4 sw=4
set ruler
set textwidth=80
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
" Be specific about tabs in certain languages.
"
au FileType ruby,html,erb,eruby,css set ts=8 sts=2 sw=2
au FileType perl,python set ts=4 sts=4 sw=4
au FileType go,c set ts=8 sts=8 sw=8 noet
