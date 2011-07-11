if has("gui_running")
    set guioptions=egmrt
endif

set history=1000 " увеличение истории команд
set undolevels=1000

set nobackup       #no backup files
set nowritebackup  #only in case you don't want a backup file while editing
set noswapfile     #no swap files

colorscheme beauty256
set guifont=Monaco:h12
set linespace=1 " Pixels of space between lines

set number        " enable line numbers
set wrap          " If a line is too long for display, wrap it
set autoindent
set smartindent

set so=4          " scrolloff (lines of context during scrolling)
set nolbr         " lbr=wrap on word boundaries (for display-only-wrapping)
set sm            " Shortly jump to matching bracket

set expandtab     " expandtab = <Tab> inserts spaces
set tabstop=2     " :retab substitutes a tab with this many spaces (or vice versa)
set shiftwidth=2  " Automatic indentation indents this many spaces

autocmd FileType * set tabstop=2|set shiftwidth=2
autocmd FileType javascript set tabstop=4|set shiftwidth=4

" ----------------------------------------
" Search
" ----------------------------------------
set ignorecase
set hls
set ignorecase
set incsearch

" ----------------------------------------
" Syntax highlighting & Autocompletion
" ----------------------------------------
syntax enable
filetype on
filetype indent on
filetype plugin on

" CSS3 syntax
au BufRead,BufNewFile *.css set ft=css syntax=css3

" Mustache syntax
au BufRead,BufNewFile *.mustache set ft=html syntax=html

" ----------------------------------------
" Maps
" ----------------------------------------
imap <silent> <F6> <Esc>:w<CR>
map <F6> <Esc>:w<CR>

imap <silent> <F2> <c-x><c-n>
map <F2> <c-x><c-n>

imap <silent><c-l> :noh<CR>
map <c-l> :noh<CR>

imap <silent><c-tab> <Space><Space>

imap <silent><F7> :FufCoverageFile<CR>
map <F7> :FufCoverageFile<CR>

imap {<CR> {<CR>}<Esc>O

" Invisible characters
set listchars=trail:.,tab:>-
set nolist
:noremap ,i :set list!<CR> " Toggle invisible chars"

let g:user_zen_expandabbr_key = '<Tab>'
let g:use_zen_complete_tag = 0

" No annoying error noises
set noerrorbells
set visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" Use the cool tab complete menu
set wildmenu
set wildignore=*.o,*~

" map cyrillic keys to latin
map ё `
map й q
map ц w
map у e
map к r
map е t
map н y
map г u
map ш i
map щ o
map з p
map х [
map ъ ]
map ф a
map ы s
map в d
map а f
map п g
map р h
map о j
map л k
map д l
map ж ;
map э '
map я z
map ч x
map с c
map м v
map и b
map т n
map ь m
map б ,
map ю .
map Ё ~
map Й Q
map Ц W
map У E
map К R
map Е T
map Н Y
map Г U
map Ш I
map Щ O
map З P
map Х {
map Ъ }
map Ф A
map Ы S
map В D
map А F
map П G
map Р H
map О J
map Л K
map Д L
map Ж :
map Э "
map Я Z
map Ч X
map С C
map М V
map И B
map Т N
map Ь M
map Б <
map Ю >

