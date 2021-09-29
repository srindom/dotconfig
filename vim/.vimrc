" ~/.vimrc
" Sebastian Rindom

call plug#begin()
  Plug 'dense-analysis/ale'
  Plug 'pangloss/vim-javascript'
  Plug 'mxw/vim-jsx'
  Plug 'projekt0n/github-nvim-theme'
  Plug 'preservim/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'tpope/vim-surround'
  Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'junegunn/fzf.vim'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'epmatsw/ag.vim'
  Plug 'vim-airline/vim-airline'
  Plug 'rakr/vim-one'
call plug#end()

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

" - VARIABLES
set nocompatible                " get rid of strict vi compatibility
set nu                          " show line numbers
set autoindent                  " auto indent
set noerrorbells                " silence is zen
set modeline                    " show what I'm doing
set showmode                    " show the mode on the dedicated line
set nowrap                      " don't wrap
set ignorecase                  " search without regards to case
set backspace=indent,eol,start  " backspace over everything
set fileformats=unix,dos,mac    " open files from mac/dos
set exrc                        " open local config files
set nojoinspaces                " don't add white space when I don't tell you to
set ruler                       " which line am I on?
set showmatch                   " ensure Dyck language
set incsearch                   " incremental searching
set nohlsearch                  " meh
set bs=2                        " fix backspacing in insert mode
set bg=light                    " better contrast
set colorcolumn=81              " show me when my lines are too long
highlight ColorColumn ctermbg=16

" Expand tabs in C files to spaces
au BufRead,BufNewFile *.{c,h,java,py,js,ts,vim} set expandtab
au BufRead,BufNewFile *.{c,h,java,py,js,ts,vim} set shiftwidth=2
au BufRead,BufNewFile *.{c,h,java,py,js,ts,vim} set tabstop=2

" Do not expand tabs in assembly file.  Make them 8 chars wide.
au BufRead,BufNewFile *.s set noexpandtab
au BufRead,BufNewFile *.s set shiftwidth=8
au BufRead,BufNewFile *.s set tabstop=8

" Show syntax
syntax on

" For switching between many opened file by using ctrl+l or ctrl+h
map <C-J> :next <CR>
map <C-K> :prev <CR>

" Spelling toggle via F9 and F10
map <F9> <Esc>:setlocal spell spelllang=en_us<CR>
map <F10> <Esc>:setlocal nospell<CR>
" Continue comments on new lines
set formatoptions+=r

"" Disable Arrow keys in Normal mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Disable Arrow keys in Insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Airline
" colorscheme one
" set background=dark
let g:airline_theme='one'

" For Macros across multiple lines
xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>

function! ExecuteMacroOverVisualRange()
  echo "@".getcmdline()
  execute ":'<,'>normal @".nr2char(getchar())
endfunction

" ALE Lint
let b:ale_fixers = ['prettier', 'eslint']
let g:ale_fix_on_save = 1

" Nerdtree
let NERDTreeShowHidden=1

" FZF
nnoremap <silent> <C-p> :GFiles<CR>
nnoremap <silent> <Leader>f :Rg<CR>

autocmd BufWritePre *.md,*.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.vue,*.yaml,*.html silent! PrettierAsync


