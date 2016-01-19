"""""""""""""""
"""""""""BASICS
"""""""""""""""

set syntax=on
syntax on
"For encryption of files
set cm=blowfish2

""""""""""""""""
"FOLDING MARKERS
""""""""""""""""

set foldmarker=#--,--#
set foldlevel=0
set foldmethod=marker
""set foldcolumn=2

""""""""""
"LINE NUMS
""""""""""

"Use line numbers. Not in use at present due to copy/paste issues.
"set number

"""""""""""""""""""
"TIMESTAMPING ON F5
"""""""""""""""""""

"These timestamps might be a little too detailed for your use (2016-01-19 Tue 10:48 am)
"The day and time may be redundant and too cluttered
nmap <F5> a<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc>
imap <F5> <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>

"""""""""""""""""""
"Custom keymaps
"move current line to the end of buffer without moving cursor
"""""""""""""""""""
nnoremap <leader>mv ddGp``

"""""""""""""""""""
"copy current line to the end of buffer without moving cursor
"""""""""""""""""""
nnoremap <leader>cp YGp``

"""""""""""""""""""
"""TAB AUTOCOMPLETE
"""""""""""""""""""

"Use TAB to complete when typing words, else inserts TABs as usual.
"Uses dictionary and source files to find matching words to complete.

"See help completion for source,
function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction
:inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
:set dictionary="/usr/dict/words"

""""""""""""""""""""""
""""""SAVE AS = CTRL+S
""""""""""""""""""""""

:inoremap <c-s> <c-o>:update<CR>
noremap <C-S> :update<CR>
