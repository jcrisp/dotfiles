source $VIMRUNTIME/vimrc_example.vim
behave xterm
set nu
set tabstop=2
set shiftwidth=2
set softtabstop=2
set ai
set expandtab
set smarttab
let g:rubycomplete_rails = 1

map f :FuzzyFinderTextMate<cr>
map n :tabnew<cr>
map q :tabclose<cr>
map r :ruby finder.rescan!<CR>
map k :tabnext<cr>
map j :tabprevious<cr>
map - :%!python -m json.tool
      
map rrc :so %<cr>

map '  :s,^\(\s*\)[^# \t]\@=,\1#,e<CR>:nohls<CR>zv
map "  :s,^\(\s*\)#\s\@!,\1,e<CR>:nohls<CR>zv

let g:fuzzy_ignore = "*.svn;*.swp;*.jpg;*.gif;*~;node_modules/**;bower_components/**;tmp/**;vendor/**;dist/**;"
let g:fuzzy_ceiling = 1000000

set nobackup

autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab

set grepprg=ack\ -H\ --nocolor\ --nogroup
set grepformat=%f:%l:%m

function! Ack(args)
  let grepprg_bak=&grepprg
  set grepprg=ack\ -H\ --nocolor\ --nogroup
  execute "silent! grep " . a:args
  botright copen
  let &grepprg=grepprg_bak
endfunction
command! -nargs=* -complete=file Ack call Ack(<q-args>)
map s :Ack<space>

" map ` \vV
" imap ` <Esc>

imap <F14> <Esc>
imap <F2> <Esc>

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//


au BufRead,BufNewFile *.handlebars,*.hbs set ft=html syntax=handlebars

