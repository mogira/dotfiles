" File: Encoding & Format
set encoding=utf-8
set fileencoding=utf-8
set nofixeol

" File: Generated Files
set nobackup
set noswapfile
set noundofile
set viminfo=

" File: Reopen from the previous edited line
autocmd BufReadPost *
	\ if line("'\"") > 0 && line ("'\"") <= line("$") |
	\   exe "normal! g'\"" |
	\ endif


" Visual: Syntax Highlight
filetype on
syntax on

" Visual: Color
autocmd ColorScheme * highlight Normal ctermbg=none
autocmd ColorScheme * highlight LineNr ctermbg=none
colorscheme molokai

" Visual: Others
set cursorline
set number
set nowrap


" Tab_Indent:
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set expandtab


" Search:
set hlsearch
set ignorecase
set smartcase


" Other:
"set autochdir
set belloff=all
set backspace=indent,eol,start
set splitbelow
set splitright
set mouse=


" KeyMap: [Insert] Esc
inoremap <silent> jj <Esc>
inoremap <silent> jk <Esc>
inoremap <silent> kk <Esc>
inoremap <silent> kj <Esc>

" KeyMap: [Insert] Cursor Keys
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

" KeyMap: [All] Disable F1 Help
nnoremap <F1> <Nop>
vnoremap <F1> <Nop>
cnoremap <F1> <Nop>
inoremap <F1> <Nop>


" Command: vsn vsplit -> next
command! VSN :vsplit | :next

" Command: Hard/Easy Mode (Disable/Enable Cursor keys)
function! HardMode ()
	noremap <Up> <Nop>
	noremap <Down> <Nop>
	noremap <Left> <Nop>
	noremap <Right> <Nop>
endfunction
command! HardMode call HardMode()
function! EasyMode ()
	noremap <Up> <Up>
	noremap <Down> <Down>
	noremap <Left> <Left>
	noremap <Right> <Right>
endfunction
command! EasyMode call EasyMode()

