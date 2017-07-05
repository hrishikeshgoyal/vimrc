set autoindent
set nu
set tabstop=4
set shiftwidth=4

set expandtab

filetype plugin indent on
syntax on

vmap <C-c> "*y
vmap <C-p> "+P
" Opens a new tab with the current buffer's path
"  Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

"Always show current position
set ruler

"Height of the command bar
set cmdheight=2
"gnore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

"Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" display statusline
set laststatus=2

" Add  file path to your existing statusline
"set statusline+=%f

set mouse=a

colorscheme pablo
""""""""""""""
" tmux fixes "
""""""""""""""
" Handle tmux $TERM quirks in vim
"if $TERM =~ '^screen-256color'
"    map <Esc>OH <Home>
"    map! <Esc>OH <Home>
"    map <Esc>OF <End>
"    map! <Esc>OF <End>
"endif

" Highlight current line
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey20
":hi CursorLine   cterm=NONE ctermbg=grey ctermfg=black
"hi Visual  guifg=#000000 guibg=#FFFFFF gui=none
hi Visual term=reverse cterm=reverse guifg=White
" Set tmux status bar title.
autocmd BufReadPost,FileReadPost,BufNewFile * call system("tmux rename-window " . expand("%:t"))
let tmuxtitle = system("tmux display-message -p '#W'")
autocmd VimLeave * call system("tmux rename-window " . (tmuxtitle))


"---delete and cut
nnoremap x "_d
vnoremap x "_d

