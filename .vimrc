" Workaround: https://github.com/vim-jp/isses/issues/578
set t_u7=
set t_RV=


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

" Visual: Cursor
set cursorline
let &t_EI .= "\e[2 q"  " Normal Mode & Visual Mode
let &t_SI .= "\e[6 q"  " Insert Mode
let &t_SR .= "\e[4 q"  " Select Mode

" Visual: Others
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


" Beep:
set noerrorbells visualbell t_vb=
if has('autocmd')
    autocmd GUIEnter * set visualbell t_vb=
endif
set belloff=all


" Other:
"set autochdir
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


" Command: W (save with sudo)
function W (...)
    let l:filename = a:0 >= 1 ? a:1 : expand("%:p")
    execute "silent write !sudo tee " . l:filename . " >/dev/null"
    edit!
endfunction
command! W call W(<f-args>)

" Command: VSN
command! VSN vsplit | next

" Command: SPN
command! SPN split | next

" Command: Hard Mode (Disable Cursor keys)
function! HardMode ()
	noremap <Up> <Nop>
	noremap <Down> <Nop>
	noremap <Left> <Nop>
	noremap <Right> <Nop>
endfunction
command! HardMode call HardMode()

" Command: Easy Mode (Enable Cursor keys)
function! EasyMode ()
	noremap <Up> <Up>
	noremap <Down> <Down>
	noremap <Left> <Left>
	noremap <Right> <Right>
endfunction
command! EasyMode call EasyMode()

