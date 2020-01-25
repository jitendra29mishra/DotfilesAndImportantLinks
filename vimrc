let $vundle="~/.vim/bundle/Vundle.vim"
set nocompatible
"================"
" Vundle Setting
"================"
filetype off
set rtp+=$vundle
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'SirVer/ultisnips'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Yggdroot/indentLine'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bluz71/vim-moonfly-colors'
Plugin 'christoomey/vim-system-copy'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'dracula/vim'
Plugin 'fatih/vim-go'
Plugin 'gilgigilgil/anderson.vim'
Plugin 'godlygeek/tabular'
Plugin 'honza/vim-snippets'
Plugin 'jnurmine/Zenburn'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'mileszs/ack.vim'
Plugin 'morhetz/gruvbox'
Plugin 'nvie/vim-flake8'
Plugin 'rakr/vim-one'
Plugin 'rust-lang/rust.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'sjl/badwolf'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/searchfold.vim'
Plugin 'wellle/targets.vim'
call vundle#end()

filetype on
filetype plugin on
filetype plugin indent on
syntax on
" ===================== "
"  AutoLoad .vimrc file
" ===================== "
" autocmd BufWritePost .vimrc source %

" ========== "
" Set Leader
" ========== "
let mapleader="\<Space>"

" ==================== "
" ColorScheme settings "
" ==================== "
" set background=light
map <leader>bg :let &background = ( &background == "dark" ? "light" : "dark" )<CR>
colorscheme solarized
"moonfly, dracula, zenburn, badwolf, anderson

" ===== "
" Basic
" ===== "
set shell=/bin/bash
syntax enable
set autoindent		    " indent when moving to the next line while writing code
set backspace=indent,eol,start
set browsedir=buffer
set clipboard=unnamed   " use system clipboard
set cursorline		    " shows line under the cursor's line
set enc=utf-8           "
set encoding=utf-8      "
set expandtab		    " expand tabs into spaces
set exrc                " enable usage of additional .vimrc files from working direcory
set hlsearch            " Highlight matching search patterns
set incsearch           " Enable incremental search
set laststatus=2
set noshowmode
set number
set path+=**            " search file in sub directory and sub sub directory
set relativenumber      " show line numbers
set ruler
set scrolloff=30        " let 30 lines before/after cursor during scroll
set secure
set shiftwidth=4	    " shift lines by 4 spaces
set showcmd             " Show Command in bottom bar
set showmatch		    " shows matching part of bracket pairs
set smartcase           " Include only uppercase words with uppercase search term
set smarttab 		    " set tabs for a shift tabs logic
set t_Co=256
set tabstop=4 		    " 4 whitespaces for tabs
set ttyfast 		    " terminal acceleration
set wildmenu            " Shows multiple matches on one line

" ========== "
" Navigation
" ========== "
" Jump 10 line in one keyword hit
nnoremap <leader><Down> :+10<CR>
nnoremap <leader><Up> :-10<CR>

" Easier split Navigation
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

nnoremap <F8> <C-W><S-J>
nnoremap <F9> <C-W><S-K>
"nnoremap <A-L> <C-W><S-L>
"nnoremap <A-H> <C-W><S-H>

" Move current line up-down
nnoremap <A-Down> :m+<CR>
nnoremap <A-Up> :m-2<CR>

" Move over buffer
" nnoremap <A-Left> :bprev<CR>
" nnoremap <A-Right> :bnext<CR>

" Move to the previous buffer with "gp"
nnoremap gp :bp<CR>
" Move to the next buffer with "gn"
nnoremap gn :bn<CR>
" List all possible buffers with "gl"
nnoremap gl :ls<CR>
" List all possible buffers with "gb" and accept a new buffer argument [1]
nnoremap gb :ls<CR>:b

" Save the current buffer using the leader key
noremap <leader>w :w<CR>
" Save and exit Vim using the leader key
noremap <leader>e :wqall<CR>
" search file on the base of word present inside it
nnoremap <leader>gr :vim <cword> **/*<CR>

" ============ "
" Map Keywords
" ============ "
" <leader>d is to jump to definition of any function
" or object <C-o> is to jump back
" -> to Capitalize : gUw

" ============= "
" Panel resizes
" ============= "
nmap <C-Up> :res +1<CR>
nmap <C-Down> :res -1<CR>
nmap <C-Right> :vertical resize +1<CR>
nmap <C-Left> :vertical resize -1<CR>

" ====================== "
" Tabs / Buffers setting
" ====================== "
tab sball
set switchbuf=useopen
"nmap <F9> :bprev<CR>
nmap <F6> :bdelete<CR>
nmap <silent> <leader>q :SyntasticCheck # <CR> :bp <BAR> bd #<CR>

" ====== "
" search
" ====== "
nmap <leader>h :nohlsearch<CR>

" ======================== "
" Compile and Run C++ file
" ======================== "
map <F7> :w<CR> :!g++ % -O && ./%< <CR>

" ======================================== "
" ======================================== "
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

" ===== "
" Netrw
" ===== "
" let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_winsize=16

" ========= "
" Ultisnips
" ========= "
let g:UltiSnipsExpandTrigger="<C-t>"
let g:UltiSnipsJumpForwardTrigger="<C-f>"
let g:UltiSnipsJumpBackwardTrigger="<C-b>"
let g:UltiSnipsEditSplit="vertical"
let g:snippets_dir='~/.vim/bundle/vim-snippets/snippets'

" ======== "
" NERDTree
" ======== "
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Load NERDTree only if vim is run without arguments
" autocmd VimEnter * if !argc() | NERDTree | endif
let NERDTreeIgnore=['\.pyc$', '\.pyo$', '__pycache__$']
map <leader>n :NERDTreeToggle<CR>
let NERDTreeWinSize=30

" ========== "
" indentLine
" ========== "
let g:indentLine_faster=1
let g:indentLine_setConceal=0

" ======= "
" Comment
" ======= "
" nnoremap <C-c> :Commentary<CR>
" gc{motion}              Comment or uncomment lines that {motion} moves over.
" gcc                     Comment or uncomment [count] lines.
" {Visual}gc              Comment or uncomment the highlighted lines.
" gc                      Text object for a comment (operator pending mode only.)
" gcgc                    Uncomment the current and adjacent commented lines.
" gcu
" :[range]Commentary      Comment or uncomment [range] lines

" ========== "
" StatusLine
" ========== "
set statusline=
set statusline+=\ %F " File name with complete path
" set statusline+=\ %{expand('%:~:.')}
set statusline+=%#CursorColumn#
set statusline+=\ %y
set statusline+=[%{expand('%:e')}]
set statusline+=\ [%{&fileencoding?&fileencoding:&encoding}]
" set statusline+=\[%{&fileformat}\]
set statusline+=%=
set statusline+=\ Per:\ %p%% " Percentage of line read or view
set statusline+=\ CL:\ %l " Current line position
set statusline+=\ TL:\ %L " Total number of lines in current buffer
set statusline+=\ C:\ %c  " Current column position of cursor
set statusline+=\ %{strftime('[%b\ %d,\ %Y]\ [%a]')} " Day and Date

" ==== "
" Fold
" ==== "
" autocmd Filetype * AnyFoldActivate  " activate for all filetypes
" set foldlevel=0  " close all folds

" ====== "
" Python
" ====== "
" autocmd FileType python map <buffer> <F7> :call flake8#Flake8()<CR>
autocmd BufWritePost *.py call flake8#Flake8()
let python_highlight_all=1
fu PyRun() range
  echo system('~/.local/bin/python3.7 -c ' . shellescape(join(getline(a:firstline, a:lastline), "\n")))
endf
vmap <leader>rp :call PyRun()<CR>
" nmap <leader>rp :w<CR>:!python3.7 %<CR>
nmap <leader>rp :w<CR>:echo system('python3.7 ' . expand('%:t'))<CR>

" ===== "
" Latex
" ===== "
nmap <leader>rx :w<CR>:!latexrun %<CR>:!evince %:r.pdf<CR>

" ============= "
" YouCompleteMe
" ============= "
set completeopt-=preview
let g:ycm_global_ycm_extra_conf='~/.vim/ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0
nmap <leader>g :YcmCompleter GoTo<CR>
nmap <leader>d :YcmCompleter GoToDefinition<CR>

" ====== "
" Tagbar
" ====== "
let g:tagbar_autofocus=0
let g:tagbar_width=40
nmap <F8> :TagbarToggle<CR>
let g:tagbar_type_html={
            \'ctagstype':'html',
            \'kind':['i:identifiers', 'c:classes'],
            \}
" autocmd BufEnter *.py :call tagbar#autoopen(0)
" autocmd BufEnter *.cpp :call tagbar#autoopen(0)
" autocmd BufEnter *.java :call tagbar#autoopen(0)
" autocmd BufWinLeave *.py :TagbarClose
" autocmd BufWinLeave *.cpp :TagbarClose
" autocmd BufWinLeave *.java :TagbarClose

" ===== "
" CtrlP
" ===== "
let g:ctrlp_map='<c-p>'
let g:ctrlp_cmd='CtrlP'
let g:ctrlp_working_path_mode='ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore='\v[\/]\.(git|hg|svn)$'

" ==== "
" RUST
" ==== "
let g:rustfmt_autosave=1
" Run RUST
function! RunCargo()
    :echo system('cargo run RUST_BACKTRACE=1')
endfunc
command! -nargs=0 RunCargo :call RunCargo()

" =============== "
" Custom Function
" =============== "
" Toggle between number and relative number
function! ToggleNumber()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunc
nnoremap <S-n> :call ToggleNumber()<CR>

" Remove Multiple empty lines"
" function! Removeemptylines()
"     :%s/^\s*$\n*^*$*\n*^*\s*$*//g
" endfunc
" command! -nargs=0 Removeemptylines :call Removeemptylines()
" nnoremap <leader>rl :Removeemptylines<CR>

" Remove trailing white spaces
function! RemoveTrailingSpaces()
    :%s/\s\+$//g
endfunc
command! -nargs=0 RemoveTrailingSpaces :call RemoveTrailingSpaces()

" Format JSON file
" Required external terminal command called "jq"
" Install using command "sudo apt install jq"
function! FormatJSON()
    :%!jq .
endfunc
command! -nargs=0 Formatjson :call FormatJSON()
nnoremap <leader>fj :Formatjson<CR>

" Add below empty lines
function! AddEmptyLineBelow()
  call append(line("."), "")
endfunction

function! AddEmptyLineAbove()
  let l:scrolloffsave = &scrolloff
  " Avoid jerky scrolling with ^E at top of window
  set scrolloff=0
  call append(line(".") - 1, "")
  if winline() != winheight(0)
    silent normal! <C-e>
  end
  let &scrolloff = l:scrolloffsave
endfunction

nnoremap <leader>j :call AddEmptyLineBelow()<CR>
nnoremap <leader>k :call AddEmptyLineAbove()<CR>

" ============================== "
" To open vimrc
nnoremap <leader>v :e ~/.vimrc<CR>





