" ========== Vim Basic Settings ============="

"TAB settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Common Settings
set encoding=utf-8
set autoindent
syntax on
set number
set paste

" Set title to window
set title
" Enable mouse
set mouse=a

" To  show special characters in Vim
"set list
set listchars=tab:▸\ ,eol:¬

" Naviagations using keys up/down/left/right
" Disabling default keys to learn the hjkl
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
"inoremap <up> <nop>
"inoremap <down> <nop>
"inoremap <left> <nop>
"inoremap <right> <nop>
nnoremap j gj
nnoremap k gk
"Works in normal mode, must press Esc first"
:map <M-s> :w<kEnter>
"Works in insert mode, saves and puts back in insert mode"
:imap <M-s> <Esc>:w<kEnter>i

"Changing Leader Key
let mapleader = ","

" Set vim to save the file on focus out.
au FocusLost * :wa

"Make Sure that Vim returns to the same line when we reopen a file"
augroup line_return
    au!
    au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \ execute 'normal! g`"zvzz' |
        \ endif
augroup END

" =========== END Basic Vim Settings ===========

" NERDTree settings
nnoremap <C-n> :NERDTreeToggle<cr>
" close vim if the only window left open is a NERDTree
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

" TagBar settings
nmap <leader>l <ESC>:TagbarToggle<cr>

" MiniBufferExplorer settings
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
noremap <leader>n :bn<cr>
noremap <leader>p :bp<cr>
noremap <leader>d :bd<cr>

