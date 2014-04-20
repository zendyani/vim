call pathogen#infect()
call pathogen#helptags()

set wrapscan
set number
set backspace=start,indent,eol

set t_Co=256
colorscheme wombat256mod

syntax on                   " syntax highlighting
filetype plugin indent on   " Automatically detect file types.
set mouse=a                 " automatically enable mouse usage
scriptencoding utf-8
	
if has('statusline')
   set laststatus=2

   " Broken down into easily includeable segments
   set statusline=%<%f\    " Filename
   set statusline+=%w%h%m%r " Options
   set statusline+=\ [%{&ff}/%Y]            " filetype
   set statusline+=\ [%{getcwd()}]          " current dir
   set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
endif

set autoindent                  " indent at the same level of the previous line
set shiftwidth=4                " use indents of 4 spaces
set expandtab                   " tabs are spaces, not tabs
set tabstop=4                   " an indentation every four columns
set softtabstop=4               " let backspace delete indent

autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let g:nerdtree_tabs_open_on_console_startup=1
:nnoremap <silent> <C-Right> :<C-u>if tabpagenr('$') > 1<Bar>tabnext<Bar>else<Bar>bnext<Bar>endif<CR>
:nnoremap <silent> <C-Left> :<C-u>if tabpagenr('$') > 1<Bar>tabprevious<Bar>else<Bar>bprevious<Bar>endif<CR>
