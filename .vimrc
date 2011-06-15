" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=eol,indent,start

" Make a backup before overwriting a file.  The backup is removed 
" after the file was successfully written
set writebackup

set ruler       " Show the cursor position all the time 
set noexpandtab     " Let tabs be tabs
set showmatch       " Match Parens
set matchtime=500   " Match for half a second
set autoindent      " Always have autoindenting on
set shiftwidth=4    " Autoindenting uses this spacing
set tabstop=4       " Show tabs as 4 spaces
set pastetoggle=<F3>    " Toggle our paste mode to not indent
set foldmethod=syntax   " Fold on syntax by default

" Make vim smart
syntax on
filetype plugin on
filetype indent on

colorscheme torte

" For twiki syntax folding
let g:Twiki_FoldAtHeadings = 1

" Break a line
map <Leader>f 072lBi<cr><esc>

" Tabbing
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set shiftround

set wildmode=longest,list "tab completion

" Makefiles don't like spaces
au FileType make set noexpandtab

" Fold Conf Files
au FileType conf syn region confBraces start="{" end="}" transparent fold

" I rarely write old-style sh. It's almost always bash:
let is_bash="true"

" Fix backspaces
"set t_kb=^?
"set t_kD=^[[3~

" If I paste and indentation gets fsck'd:
inoremap <silent> <C-g> <ESC>u:set paste<CR>.:set nopaste<CR>gi
