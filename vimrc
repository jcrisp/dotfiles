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
map - orequire 'ruby-debug'; breakpoint<esc>
      
map ` \vV
map rrc :so %<cr>

let g:fuzzy_ignore = "*.svn"
let g:fuzzy_ignore = "*.swp"
let g:fuzzy_ignore = "*.jpg"
let g:fuzzy_ignore = "*.gif"
let g:fuzzy_ignore = "*~"

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

imap ` <Esc>
imap <F14> <Esc>
imap ;; <Esc>
