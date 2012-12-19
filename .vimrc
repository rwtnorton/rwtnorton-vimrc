filetype on
filetype indent on
filetype plugin on
set et
set ts=8 sts=4 sw=4
set ruler
set textwidth=0
set nohlsearch
set scrolloff=0
set nofoldenable
set nobackup
set nowritebackup
syntax on

au BufNewFile,BufRead *.tt,*.tt2 set filetype=tt2html
au BufNewFile,BufRead Gemfile,.autotest,params,.aprc,*.god,Guardfile set filetype=ruby
au BufNewFile,BufRead *.json set filetype=javascript
au BufNewFile,BufRead *.rvmrc set filetype=sh

"
" Be specific about tabs in certain languages.
"
au FileType ruby,html,erb,eruby,css,haml,javascript set ts=8 sts=2 sw=2
au FileType perl,python set ts=4 sts=4 sw=4
au FileType go,c set ts=8 sts=8 sw=8 noet
au FileType xml,xsd set ts=2 sts=2 sw=2 list!

colorscheme Tomorrow-Night-Bright

" hi Statement    ctermfg=yellow
" hi Comment      ctermfg=green
" hi String       ctermfg=red
" hi Constant     ctermfg=DarkGreen

"
" Make lines longer than 78 chars standout.
" Undo with ':match'.
"
hi LineTooLong  term=bold ctermfg=white ctermbg=red
"match LineTooLong '\%>78v.\+'
"au BufRead,BufNewFile * syntax match LineTooLong '\%>78v.\+'
function! MarkLinesTooLong()
    match LineTooLong '\%>78v.\+'
    au BufRead,BufNewFile * syntax match LineTooLong '\%>78v.\+'
endfunction
call MarkLinesTooLong()

"
" Make EOL-whitespace and tabs stand out.
" Toggle with ':set list!'.
"
hi SpecialKey   ctermfg=white ctermbg=blue
set listchars=tab:>-,trail:.
set list

set guifont=Menlo:h13
if has("gui_running")
    colorscheme darkblue
    hi SpecialKey   guifg=white guibg=blue
    hi LineTooLong  gui=bold guifg=white guibg=DarkRed
end

" Force saving files that require root permission.
" From http://vimbits.com/bits?sort=top
"cmap w!! %!sudo tee > /dev/null %
