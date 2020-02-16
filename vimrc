let $vundle="~/.vim/bundle/Vundle.vim"
set nocompatible
"================"
" Vundle Setting
"================"
filetype off
set rtp+=$vundle
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'zorgnax/vim-color-whisk'            " Color Schema
Plugin 'vim-python/python-syntax'           " Python Syntax
Plugin 'tpope/vim-speeddating'
Plugin 'tpope/vim-commentary'
Plugin 'scrooloose/nerdtree'
Plugin 'sainnhe/gruvbox-material'           " Color Schema
Plugin 'rhysd/vim-color-spring-night'       " ColorScheme
Plugin 'nvie/vim-flake8'                    " For Python: syntax checker
Plugin 'mileszs/ack.vim'
Plugin 'mhartington/oceanic-next'           " ColorScheme
Plugin 'majutsushi/tagbar'
Plugin 'lifepillar/vim-colortemplate'       " Color Schema Template
Plugin 'kooparse/vim-color-desert-night'    " Color Schema
Plugin 'kien/ctrlp.vim'
Plugin 'joshdick/onedark.vim'               " ColorScheme
Plugin 'jnurmine/Zenburn'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'jiangmiao/auto-pairs'               " Auto Pairs - auto-pairs.vim
Plugin 'jceb/vim-orgmode'
Plugin 'honza/vim-snippets'
Plugin 'godlygeek/tabular'                  " To Arrange Text
Plugin 'fatih/vim-go'                       " Golang programming - vim-go.vim
Plugin 'dracula/vim'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Yggdroot/indentLine'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Shougo/vimproc'
Plugin 'Rigellute/rigel'                    " ColorScheme
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'simnalamburt/vim-mundo'             " Undo Tree
" Plugin 'wellle/targets.vim'
" Plugin 'vim/killersheep'
" Plugin 'vim-scripts/searchfold.vim'
" Plugin 'tpope/vim-surround'
" Plugin 'tpope/vim-fugitive'
" Plugin 'tomasr/molokai'
" Plugin 'tmhedberg/simpylfold'
" Plugin 'terryma/vim-multiple-cursors'
" Plugin 'rust-lang/rust.vim'                 " Rust programming - rust.vim
" Plugin 'rakr/vim-one'
" Plugin 'morhetz/gruvbox'
" Plugin 'itchyny/lightline.vim'              " statusline - lightline.vim
" Plugin 'flazz/vim-colorschemes'             " Color Schema
" Plugin 'christoomey/vim-system-copy'
" Plugin 'chriskempson/base16-vim'
" Plugin 'ayu-theme/ayu-vim'                  " Orange ColorScheme
" Plugin 'SirVer/ultisnips'

call vundle#end()

filetype on
filetype plugin on
filetype plugin indent on
syntax on
" ====================================================================== "
" :W sudo saves the file (useful for handling the permission-denied error)
" ====================================================================== "
cmap w!! w !sudo tee % > /dev/null

" ========== "
" Set Leader
" ========== "
let mapleader="\<Space>"

" ===================== "
"  AutoLoad .vimrc file
" ===================== "
" autocmd BufWritePost .vimrc source %
nnoremap <leader>rv :source ~/.vimrc<CR>

" ===== "
" Basic
" ===== "
set shell=/bin/bash
syntax enable
" set autochdir
set autoindent		    " indent when moving to the next line while writing code
set autoread            " Set to auto read when a file changed from the outside
set backspace=indent,eol,start
set browsedir=last      " Use same directory as with last file browser, a file was opened or saved
set clipboard=unnamed   " use system clipboard
set nocursorline          " shows line under the cursor's line
set nocursorcolumn
set enc=utf-8           "
set encoding=utf-8      "
set expandtab		    " expand tabs into spaces
" set exrc                " enable usage of additional .vimrc files from working direcory
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
" set termguicolors       " enable true colors support

" ==================== "
"
" ==================== "
" swap colon with semi-colon
nnoremap ; :
nnoremap : ;
nnoremap :Q :q
nnoremap :W :w
nnoremap :Wq :wq
nnoremap :WQ :wq
" nnoremap gj j
" nnoremap gk k

" ========== "
" indentLine
" ========== "
" set listchars=space:·,precedes:«,extends:»,trail:¬,tab:··,eol:↲    " trail:·,precedes:«,extends:»,eol:↲,tab:▸\
" set list

" set vb t_vb= " Turn off visual bell, error flash
" Tutorial "
" 'set noro' command used to change the mode of file from read only to read-write mode

" ============ "
"  CursorLine
" ============ "
au VimEnter * hi CursorLine cterm=bold,italic ctermbg=White ctermfg=Black

" ====== "
" search
" ====== "
nnoremap <leader>h :nohlsearch<CR>:call clearmatches()<CR>

" =========== "
"
" Remove trailing whitespace
nnoremap W :%s/\s\+$//:let @/=''

" ============= "
" PANEL RESIZES
" ============= "
nnoremap <C-Up> :res +1<CR>
nnoremap <C-Down> :res -1<CR>
nnoremap <C-Right> :vertical resize +1<CR>
nnoremap <C-Left> :vertical resize -1<CR>

" ========== "
" NAVIGATION
" ========== "
" Jump 10 line in one keyword hit
nnoremap <leader><Down> :+10<CR>
nnoremap <leader><Up> :-10<CR>

" EASIER WAY TO MOVE OVER WINDOWS
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

" MOVE CURRENT LINE UP-DOWN
nnoremap <A-Down> :m+<CR>
nnoremap <A-Up> :m-2<CR>
" MOVE MULTIPLE LINE UP-DOWN
vnoremap <A-Down> :m '>+1<CR>gv=gv
vnoremap <A-Up> :m '<-2<CR>gv=gv

" ============================
" TERMINAL MODE
" ============================
" To Terminate Terminal buffer
tmap <C-K> <C-W>:quit!<CR>

" send text to terminal buffer
nnoremap <S-L> <S-V>"+y<C-W>W<CR>
vnoremap <S-L> "+y<C-W>W<CR>
tmap <C-V> <C-W>"+<C-W>p<CR>
" Move over buffer
" nnoremap <A-Left> :bprev<CR>
" nnoremap <A-Right> :bnext<CR>

" ====================
" Buffers
" ====================
" Move to the previous buffer with "gp"
nnoremap gp :bp<CR>
" Move to the next buffer with "gn"
nnoremap gn :bn<CR>
" List all possible buffers with "gl"
nnoremap gl :ls<CR>
" List all possible buffers with "gb" and accept a new buffer argument [1]
" e_qnnoremap gb :ls<CR>:b
nnoremap gb :BufExplorer<CR>
" Open in new Tab
nnoremap <leader>nt :tabedit %<CR>

" =========================================== "
" Fast saving and exiting
" =========================================== "
" Save the current buffer using the leader key
noremap <leader>w :w<CR>
" Save and exit Vim using the leader key
noremap <leader>e :wqall<CR>

" ==========================================================
" search file on the base of word present inside it
" nnoremap <leader>gr :vim <cword> **/*<CR>
nnoremap <leader>gr :Ack <cword><CR>
" ============ "
" Map Keywords
" ============ "
" <leader>d is to jump to definition of any function
" or object <C-o> is to jump back

" ==================== "
" ColorScheme settings "
" ==================== "
nnoremap <leader>bg :let &background = ( &background == "dark" ? "light" : "dark" )<CR>
set background=dark
" colorscheme gruvbox-material
colorscheme onedark 

" ====================== "
" Tabs / Buffers setting
" ====================== "
tab sball
set switchbuf=useopen
"nmap <F9> :bprev<CR>
nmap <F6> :bdelete<CR>
nmap <silent> <leader>q :SyntasticCheck # <CR> :bp <BAR> bd #<CR>

" ======================== "
" Compile and Run C++ file
" ======================== "
"map <F7> :w<CR> :!g++ % -O && ./%< <CR>

" ==================== "
" StatusLine
" ==================== "
set statusline=\ \»\
set statusline+=%t
if exists("*fugitive#head")
    set statusline+=\ %{fugitive#head()}
endif
set statusline+=\ %m
set statusline+=\ %r
set statusline+=%=
set statusline+=\ %{strlen(&fenc)?&fenc:'none'}
set statusline+=\ \«\ %{&ff}
set statusline+=\ \«\ %l,%c
set statusline+=\ \«\ %L
set statusline+=\ \«\ %P
set statusline+=\ %y\

" Change the status line color depending on the mode we are on
function! InsertStatuslineColor(mode)
  if a:mode == 'i'
    hi statusline ctermfg=7 ctermbg=0 guifg=white guibg=black
  elseif a:mode == 'r'
    hi statusline ctermfg=5 ctermbg=0 guifg=#C05266 guibg=black
  else
    hi statusline ctermfg=1 ctermbg=0 guifg=black
  endif
endfunction

au InsertEnter * call InsertStatuslineColor(v:insertmode)
au InsertLeave * hi statusline ctermfg=8 ctermbg=15 guifg=#545454 guibg=#DBDFE0
hi StatusLine      ctermfg=8  ctermbg=15   guifg=#545454 guibg=#DBDFE0
hi StatusLineNC    ctermfg=8  ctermbg=0    guifg=#828D92 guibg=#545454  gui=none

" =============== "
" vim table mode
" =============== "
nnoremap <leader>tb :TableModeToggle<CR>
nnoremap <leader>ta :TableModeRealign<CR>

" ========= "
" Undo Tree
" ========= "
" Enable persistent undo so that undo history persists across vim sessions
set undofile
set undodir=~/.vim/undo
nnoremap <F5> :MundoToggle<CR>
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
nnoremap <leader>n :NERDTreeToggle<CR>
let NERDTreeWinSize=30

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
" let g:lightline = {
"       \ 'colorscheme': 'gruvbox_material',
"       \ }

" ==== "
" Fold
" ==== "
" autocmd Filetype * AnyFoldActivate  " activate for all filetypes
set foldmethod=manual
" set foldlevel=0  " close all folds
" autocmd BufWinLeave *.* mkview
" autocmd BufWinEnter *.* silent loadview
" let g:anyfold_fold_comments=1

" ====== "
" Python
" ====== "
autocmd FileType python map <buffer> <F7> :call flake8#Flake8()<CR>
autocmd BufWritePost *.py call flake8#Flake8()
let g:flake8_show_in_file=1
let g:flake8_show_in_gutter=1
let g:flake8_error_marker='EE'
let g:flake8_warning_marker='WW'
let python_highlight_all=1
fu PyMyRun() range
  echo system('~/.local/bin/python3.7 -c ' . shellescape(join(getline(a:firstline, a:lastline), "\n")))
endf
au FileType python vmap <leader>r :call PyMyRun()<CR>
augroup ft_python
    au!
    au FileType python setlocal foldmethod=indent
augroup END
"" nmap <leader>rp :w<CR>:!python3.7 %<CR>
nnoremap <leader>rp :w<CR>:echo system('python3.7 ' . expand('%:t'))<CR>

" ===============
"    vim-go     "
" ===============
au FileType go nmap <leader>rr  <Plug>(go-run)
au FileType go nmap <leader>b  <Plug>(go-build)
au FileType go nmap <leader><leader>t  <Plug>(go-test)
au FileType go nmap <leader>c  :GoCoverageBrowser<cr>
au FileType go nmap <leader>gd <Plug>(go-doc)
au FileType go nmap <leader>dh <Plug>(go-def-split)
au FileType go nmap <leader>dv <Plug>(go-def-vertical)
au FileType go nmap <leader>i  <Plug>(go-info)
let g:go_fmt_command = "goimports"
let g:go_doc_keywordprg_enabled= 0

" ===== "
" Latex
" ===== "
" nmap <leader>rx :w<CR>:!latexrun %<CR>:!evince %:r.pdf<CR>

" ============= "
" YouCompleteMe
" ============= "
set completeopt-=preview
let g:ycm_global_ycm_extra_conf='~/.vim/ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0
nnoremap <leader>g :YcmCompleter GoTo<CR>
nnoremap <leader>d :YcmCompleter GoToDefinition<CR>

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
" let g:rustfmt_autosave=1
" " Run RUST
" function! RunCargo()
"     :echo system('cargo run RUST_BACKTRACE=1')
" endfunc
" command! -nargs=0 RunCargo :call RunCargo()

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
" nnoremap <S-n> :call ToggleNumber()<CR>

function! ToggleWrap()
    if(&wrap == 1)
        set nowrap
    else
        set wrap
    endif
endfunc
nnoremap <leader>nw :call ToggleWrap()<CR>

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

" format json compose
vnoremap <leader>fjc :!jq -c .<CR>
vnoremap <leader>fjp :!jq .<CR>

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

function! ToggleCurline ()
  if &cursorline && &cursorcolumn
    set cursorline
    set cursorcolumn
  else
    set nocursorline
    set nocursorcolumn
  endif
endfunction

nnoremap <leader>cl :call ToggleCurline()<CR>

"     let c = getcompletion('','color')
"     let len_c = len(c)
"     let rand_value = rand()
"     let posi = rand_value % len_c
"     " echo posi
"     exec \" colorscheme \" .  c[posi]
"     echo c[posi]

function! ChangeColorScheme()
python3 << endpy
import vim
import random

lst = vim.eval("getcompletion('', 'color')")
color_value = random.choices(lst)[0]
try:
    vim.command("color {}".format(color_value))
except:
    vim.command("echo {}".format(color_value))
endpy
endfunction
"
nnoremap <A-Right> :call ChangeColorScheme()<CR>
" " Auto Run below command to select random theme
" "exec ChangeColorScheme()

" : echo colors_name<CR>
nnoremap <A-Left> :echo colors_name<CR>

" function! JsonPretty()
" python3 << endpython
" import vim
" import json

" buf = vim.current.buffer
" (lnum1, col1) = buf.mark('<')
" (lnum2, col2) = buf.mark('>')
" lines = vim.eval('getline({}, {})'.format(lnum1, lnum2))
" if len(lines) == 1:
"     lines[0] = lines[0][col1:col2 + 1]
" else:
"     lines[0] = lines[0][col1:]
"     lines[-1] = lines[-1][:col2 + 1]
"     #print(lines)
"     #print(json.dumps(lines, indent=4))
" # # return json.dumps("\n".join(lines), indent=4)
" vim.eval('setline({}, \'{}\')'.format(lnum1, json.dumps(lines[0], indent=4)))
" endpython
" endfunction

" ============================== "
" To open vimrc
nnoremap <leader>v :e ~/.vimrc<CR>
