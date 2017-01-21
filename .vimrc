    set nocompatible " be iMproved
    set nocompatible | filetype indent plugin on | syn on
    filetype off     " required!

    call plug#begin('~/.vim/plugged')
      Plug 'kchmck/vim-coffee-script'
      Plug 'tpope/vim-fugitive'
      Plug 'kchmck/vim-coffee-script'
      Plug 'mileszs/ack.vim'
      Plug 'rking/ag.vim'
      "Plug 'isRuslan/vim-es6'
      Plug 'tpope/vim-surround'
      Plug 'tpope/vim-repeat'
      Plug 'vim-syntastic/syntastic'
      "Plug 'Valloric/YouCompleteMe'
      Plug 'othree/javascript-libraries-syntax.vim'
      Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
      Plug 'othree/yajs.vim'
      Plug 'othree/es.next.syntax.vim'
      Plug 'ervandew/supertab'

      Plug 'SirVer/ultisnips'
      Plug 'honza/vim-snippets'

      " Plug 'MarcWeber/vim-addon-mw-utils'
      " Plug 'tomtom/tlib_vim'
      " Plug 'marcweber/vim-addon-manager'
      " Plug 'garbas/vim-snipmate'
      " Plug 'honza/vim-snippets'
    call plug#end()

    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()

    " let Vundle manage Vundle, required
    Plugin 'VundleVim/Vundle.vim'

    " My Bundles here:
    " NOTE: comments after Plugin command are not allowed...
    "
    " Libs
      Plugin 'L9'
      Plugin 'grep.vim'
      Plugin 'genutils'
      Plugin 'ftpsync'
    " Interface
      Plugin 'altercation/vim-colors-solarized'
      Plugin 'vim-scripts/IndexedSearch'
      Plugin 'ctrlpvim/ctrlp.vim'
      Plugin 'plasticboy/vim-markdown'
    " HTML/HAML
      Plugin 'othree/html5.vim'
      Plugin 'hokaccha/vim-html5validator'
      Plugin 'gregsexton/MatchTag'
    " Ruby/Rails
      Plugin 'tpope/vim-rails'
    call vundle#end()

    filetype plugin indent on " required!
    filetype plugin on        " required!
    " Brief help
    " :PluginList          - list configured bundles
    " :PluginInstall(!)    - install(update) bundles
    " :PluginSearch(!) foo - search(or refresh cache first) for foo
    " :PluginClean(!)      - confirm(or auto-ap prove) removal of unused bundles
    " see :h vundle for more details or wiki for FAQ




" Interface
    set guifont=Monaco:h14
    set nonumber                  " Не показываем нумерацию строк
                                  " Во-первых, номер текущей строки всегда
                                  " есть в statusline, во-вторых, всегда можно
                                  " быстро перейти к нужной строке набрав :1
                                  " где 1 — номер строки.

    set encoding=utf-8            " character encoding used inside Vim.
    set fileencodings=utf8,cp1251 " Возможные кодировки файлов и последовательность определения
    "set wildmenu " Саджест по <tab> в командной строке
                 " When 'wildmenu' is on, command-line completion operates in an enhanced
                 " mode.  On pressing 'wildchar' (usually <Tab>) to invoke completion,
                 " the possible matches are shown just above the command line, with the
                 " first match highlighted (overwriting the status line, if there is
                 " one).
    set title    " window title
                 " the title of the window will be set to the value of 'titlestring'
                 " (if it is not empty), or to: filename [+=-] (path) - VIM
    set showcmd  " Show (partial) command in the last line of the screen
                 " Set this option off if your terminal is slow.
                 " In Visual mode the size of the selected area is shown:
                 " - When selecting characters within a line, the number of characters.
                 "   If the number of bytes is different it is also displayed: "2-6"
                 "   means two characters and six bytes.
                 " - When selecting more than one line, the number of lines.
                 " - When selecting a block, the size in screen characters:
                 "   {lines}x{columns}.
    " set scrolljump=5
    " set scrolloff=3
    "set scrolloff=999       " focus mode like in Writer app http://www.iawriter.com/
    set showtabline=1       " Показывать табы всегда
    set list                " display unprintable characters
    set wrap                " Включаем перенос строк (http://vimcasts.org/episodes/soft-wrapping-text/)
    " if version >= 703
        "set colorcolumn=80 " Подсвечиваем 80 столбец
    " end
    set formatoptions-=o    " dont continue comments when pushing o/O
    set linebreak           " Перенос не разрывая слов
    set autoindent          " Копирует отступ от предыдущей строки
    set smartindent         " Включаем 'умную' автоматическую расстановку отступов
    set expandtab
    set shiftwidth=2        " Размер сдвига при нажатии на клавиши << и >>
    set tabstop=2           " Размер табуляции
    set softtabstop=2
    set linespace=1         " add some line space for easy reading
    set cursorline          " Подсветка строки, в которой находится в данный момент курсор
    set gcr=n:blinkon0      " Отключаем мигание курсора в MacVim. Больше никакого стресса.
    set guioptions=         " Вырубаем все лишнее из ГУИ, если надо потогглить см <F6>
    set t_Co=256            " Кол-во цветов
    set guicursor=          " Отключаем мигание курсора
    set splitbelow          " новый сплит будет ниже текущего :sp
    set splitright          " новый сплит будет правее текущего :vsp
    set shortmess+=I        " не показывать intro screen
    set mouseshape=s:udsizing,m:no " turn to a sizing arrow over the status lines
    set mousehide " Hide the mouse when typing text

    set hidden " this allows to edit several files in the same time without having to save them
    set iskeyword+=-        " Заставляем работать выделение слова с дефисами
    "set virtualedit=all     " Выделение в не захватывает символ переноса строки

    " Не бибикать!
        set visualbell " Use visual bell instead of beeping
        set t_vb=

    " Символ табуляции и конца строки
        if has('multi_byte')
            if version >= 700
                set listchars=tab:▸\ ,trail:·,extends:→,precedes:←,nbsp:×
            else
                set listchars=tab:»\ ,trail:·,extends:>,precedes:<,nbsp:_
            endif
        endif

    " Символ, который будет показан перед перенесенной строкой
        if has("linebreak")
              let &sbr = nr2char(8618).' '  " Show ↪ at the beginning of wrapped lines
        endif


    " Приводим в порядок status line

        function! FileSize()
            let bytes = getfsize(expand("%:p"))
            if bytes <= 0
                return ""
            endif
            if bytes < 1024
                return bytes . "B"
            else
                return (bytes / 1024) . "K"
            endif
        endfunction

        function! CurDir()
          return expand('%:p:~')
        endfunction

        set laststatus=2
        set statusline=\  
        " set statusline+=%n\                 " buffer number
        set statusline+=\%{CurDir()}
        " set statusline+=%t                   " filename with full path
        set statusline+=%m                   " modified flag
        set statusline+=\ \ \  
        set statusline+=%{&paste?'[paste]\ ':''}
        " set statusline+=%{&fileencoding}
        " set statusline+=\ \ %Y               " type of file
        " set statusline+=\ %3.3(%c%)          " column number
        set statusline+=\ \ %3.9(%l/%L%)     " line / total lines
        " set statusline+=\ \ %2.3p%%          " percentage through file in lines
        " set statusline+=\ \ %{FileSize()}
        set statusline+=%<                   " where truncate if line too long
        set statusline+=%#warningmsg#
        "set statusline+=%{SyntasticStatuslineFlag()}
        set statusline+=%*


    " Show the line and column number of the cursor position
        set ruler
        set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)

    " Создаем меню с кодировками
        menu Encoding.UTF-8 :e ++enc=utf8 <CR>
        menu Encoding.Windows-1251 :e ++enc=cp1251<CR>
        menu Encoding.koi8-r :e ++enc=koi8-r<CR>
        menu Encoding.cp866 :e ++enc=cp866<CR>

    " Проверка орфографии
        " if version >= 700
        "     set spell spelllang=
        "     set nospell " По умолчанию проверка орфографии выключена
        "     menu Spell.off :setlocal spell spelllang= <cr>
        "     menu Spell.Russian+English :setlocal spell spelllang=ru,en <cr>
        "     menu Spell.Russian :setlocal spell spelllang=ru <cr>
        "     menu Spell.English :setlocal spell spelllang=en <cr>
        "     menu Spell.-SpellControl- :
        "     menu Spell.Word\ Suggest<Tab>z= z=
        "     menu Spell.Previous\ Wrong\ Word<Tab>[s [s
        "     menu Spell.Next\ Wrong\ Word<Tab>]s ]s
        " endif

    " Фолдинг
        " Всё, что нужно знать для начала:
        " za - скрыть/открыть текущую складку.
        " {zR, zM} - {открыть, скрыть} все складки.
        " from https://github.com/sjl/dotfiles/blob/master/vim/.vimrc
        " function! MyFoldText()
        "     let line = getline(v:foldstart)

        "     let nucolwidth = &fdc + &number * &numberwidth
        "     let windowwidth = winwidth(0) - nucolwidth - 3
        "     let foldedlinecount = v:foldend - v:foldstart

        "     " expand tabs into spaces
        "     let onetab = strpart(' ', 0, &tabstop)
        "     let line = substitute(line, '\t', onetab, 'g')

        "     let line = strpart(line, 0, windowwidth - 2 - len(foldedlinecount))
        "     let fillcharcount = windowwidth - len(line) - len(foldedlinecount)
        "     return line . '…' . repeat(" ",fillcharcount) . foldedlinecount . '…' . ' '
        " endfunction
        " set foldtext=MyFoldText()

        set foldcolumn=0        " Ширина строки где располагается фолдинг
        " set foldmethod=indent   " Фолдинг по отступам
        " set foldnestmax=10      " Глубина фолдинга 10 уровней
        set nofoldenable        " Не фолдить по умолчанию
        " set foldlevel=1         " This is just what i use
        set fillchars="fold: "  " remove the extrafills --------

    " Не показывать парную скобку
        let loaded_matchparen=1 " перестает прыгать на парную скобку, показывая где она. +100 к скорости
        set noshowmatch " Не показывать парные <> в HTML

" Search
    set incsearch   " При поиске перескакивать на найденный текст в процессе набора строки
    set hlsearch    " Включаем подсветку выражения, которое ищется в тексте
    set ignorecase  " Игнорировать регистр букв при поиске
    set smartcase   " Override the 'ignorecase' if the search pattern contains upper case characters
    set gdefault    " Включает флаг g в командах замены, типа :s/a/b/

    " No annoying sound on errors
    set noerrorbells
    set novisualbell
    set t_vb=
    set tm=500
    " Properly disable sound on errors on MacVim
    if has("gui_macvim")
        autocmd GUIEnter * set vb t_vb=
    endif

" Шорткаты
    let mapleader = "," " мапим <Leader> на запятую. По умолчанию <Leader> это обратный слэш \

    " ,m
        " в Normal mode тогглит поддержку мыши
        set mouse=
        function! ToggleMouse()
          if &mouse == 'a'
            set mouse=
            echo "Mouse usage disabled"
          else
            set mouse=a
            echo "Mouse usage enabled"
          endif
        endfunction
        nnoremap <leader>m :call ToggleMouse()<CR>

    " ,r
        " Поиск и замена во всех открытых буферах http://vim.wikia.com/wiki/VimTip382
        function! Replace()
            let s:word = input("Replace " . expand('<cword>') . " with:")
            :exe 'bufdo! %s/\<' . expand('<cword>') . '\>/' . s:word . '/gce'
            :unlet! s:word
        endfunction
        map <Leader>r :call Replace()<CR>

    " <Esc>
        " Clear the search highlight by pressing ENTER when in Normal mode (Typing commands)
        nnoremap <silent> <Esc><Esc> :nohlsearch<CR><Esc>

    " < >
        vnoremap < <gv
        vnoremap > >gv

    " ,p
        " Вставлять код извне без этой строчки проблематично, без нее начитается
        " бешеный реформат кода
        set pastetoggle=<Leader>p


    " ,n
        " Toggle type of line numbers
        " http://stackoverflow.com/questions/4387210/vim-how-to-map-two-tasks-under-one-shortcut-key
        " vim 7.3 required
        let g:relativenumber = 0
        function! ToogleRelativeNumber()
          if g:relativenumber == 0
            let g:relativenumber = 1
            set norelativenumber
            set number
            echo "Show line numbers"
          elseif g:relativenumber == 1
            let g:relativenumber = 2
            set nonumber
            set relativenumber
            echo "Show relative line numbers"
          else
            let g:relativenumber = 0
            set nonumber
            set norelativenumber
            echo "Show no line numbers"
          endif
        endfunction
        map <Leader>n :call ToogleRelativeNumber()<cr>

    " ,g
        function! ToggleGUINoise()
          if &go==''
            exec('se go=mTrL')
            echo "Show GUI elements"
          else
            exec('se go=')
            echo "Show no GUI elements"
          endif
        endfunction
        map <Leader>g <Esc>:call ToggleGUINoise()<cr>

    " ,f
        " Fast grep
        " грепает в текущей директории по слову, на котором стоит курсор
        map <Leader>f :execute "Ack " . expand("<cword>") <Bar> cw<CR>

    " Перемещение строк
        " переместить одну строку
        nmap <C-S-k> ddkP
        nmap <C-S-j> ddp
        " переместить несколько выделенных строк http://www.vim.org/scripts/script.php?script_id=1590
        vmap <C-S-k> xkP'[V']
        vmap <C-S-j> xp'[V']

    " Мапим {действие} от курсора до конца строки
        nnoremap Y y$
        nnoremap D d$
        nnoremap C c$

    " Pasting with correct indention
        "nmap p p=`]
        "nmap P P=`[

    " Disable <Arrow keys>
        " Warning: nightmare mode!
        inoremap <Up> <NOP>
        inoremap <Down> <NOP>
        inoremap <Left> <NOP>
        inoremap <Right> <NOP>
        noremap <Up> <NOP>
        noremap <Down> <NOP>
        noremap <Left> <NOP>
        noremap <Right> <NOP>
        " Позволяем передвигаться с помощью hjkl в Insert mode зажав <Ctrl>
        imap <C-h> <C-o>h
        imap <C-j> <C-o>j
        imap <C-k> <C-o>k
        imap <C-l> <C-o>l

    " ,v
        " Pressing ,v opens the .vimrc in a new tab
        nmap <leader>v :tabedit $MYVIMRC<CR>

    " <Space> = <PageDown> Как в браузерах
        nmap <Space> <PageDown>

    " Tab shift
      vmap <Tab> >
      vmap <S-Tab> <

    " n и N
        " когда бегаем по результатам поиска, то пусть они всегда будут в центре
        nmap n nzz
        nmap N Nzz
        nmap * *zz
        nmap # #zz
        nmap g* g*zz
        nmap g# g#zz

    " K to split
        " Basically this splits the current line into two new ones at the cursor position,
        " then joins the second one with whatever comes next.
        "
        " Example:                      Cursor Here
        "                                    |
        "                                    V
        " foo = ('hello', 'world', 'a', 'b', 'c',
        "        'd', 'e')
        "
        " becomes
        "
        " foo = ('hello', 'world', 'a', 'b',
        "        'c', 'd', 'e')
        "
        " Especially useful for adding items in the middle of long lists/tuples in Python
        " while maintaining a sane text width.
        nnoremap K <nop>
        nnoremap K h/[^ ]<cr>"zd$jyyP^v$h"zpJk:s/\v +$//<cr>:noh<cr>j^

    " It's 2011. Don't skip wrap lines
        " Еще раз и попонятнее:
        " если строка n длиная и не влезла в окно — она перенесется на
        " следующую (wrap on). Шокткаты ниже нужны, чтобы попасть
        " на каждую псевдострочку этой врапнутой строки.
        noremap j gj
        noremap k gk

    " <Return> toggle command mode
        " С таким мапом возникают проблемы когда нужно грепнуть и перемещаться
        " по файлам в результатах поиска нажимая энтер.
        "nmap <Return> :

    " gf открывает фойл под курсором в вертикальном сплите
        " (по дефолту gf открывает файл в том же буфере)
        nmap gf :vertical wincmd f<CR>

    " Создаем пустой сплит относительно текущего
        nmap <Leader><left>  :leftabove  vnew<CR>
        nmap <Leader><right> :rightbelow vnew<CR>
        nmap <Leader><up>    :leftabove  new<CR>
        nmap <Leader><down>  :rightbelow new<CR>

    " ,c
        " camelCase => camel_case
        vnoremap <silent> <Leader>c :s/\v\C(([a-z]+)([A-Z]))/\2_\l\3/g<CR>

    " Fix Trailing White Space
        map <leader>ts :%s/\s\+$//e<CR>


    " ,bl show buffers
        nmap <Leader>bl :ls<cr>:b

    " ,bp prev buffer
        nmap <Leader>bp :bp<cr>

    " ,bn next buffer
        nmap <Leader>bn :bn<cr>


" Environment
    set history=1000 " store lots of :cmdline history
    cmap w!! %!sudo tee > /dev/null % " save file with root permissions"

    " Backspacing settings
        " start     allow backspacing over the start of insert;
        "           CTRL-W and CTRL-U stop once at the start of insert.
        " indent    allow backspacing over autoindent
        " eol       allow backspacing over line breaks (join lines)
        set backspace=indent,eol,start

    " Backup и swp файлы
        set backupdir=~/.vimi/bac,/tmp " Директория для backup файлов
        set directory=~/.vimi/swp,/tmp " Директория для swp файлов
        set noswapfile

    " Загрузка предыдущей сессии
        set viminfo='10,\"100,:20,%,n~/.viminfo
        " Устанавливаем курсор в файле на место, где он был при закрытии этого файла
        au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

    " AutoReload .vimrc
        " from http://vimcasts.org/episodes/updating-your-vimrc-file-on-the-fly/
        " Source the vimrc file after saving it
        if has("autocmd")
          autocmd! bufwritepost .vimrc source $MYVIMRC
        endif

    au FileType javascript  set tabstop=2
    au FileType javascript  set softtabstop=2
    au FileType javascript  set shiftwidth=2
    au BufRead,BufNewFile *.cjsx set ft=coffee


" Плагины

    " Solarized
      syntax enable
      syntax on
      set background=light
      colorscheme solarized

    " HAML
      au BufRead,BufNewFile *.hamljs set ft=haml syntax=haml
      au BufRead,BufNewFile *.mustache set ft=html syntax=html

    " CTRLP
      set runtimepath^=~/.vim/bundle/ctrlp.vim
      set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.github/*,*/.sass-cache/*,*/log/*,*/node_modules/*,*/tmp/*,*/db/*,*/support/*

      " Exclude trash from indexing

    " Save File
      map <F6> <Esc>:w<CR>
      imap <F6> <Esc>:w<CR>
      nmap <F6> <Esc>:w<CR>
      nnoremap <F6> <Esc>:w<CR>

    " Ack search
      map <F3> <Esc>:Ag 
      imap <F3> <Esc>:Ag 
      nmap <F3> <Esc>:Ag 
      nnoremap <F3> <Esc>:Ag 

    " Snipmate
      " imap <Tab> <Plug>snipMateNextOrTrigger
      " smap <Tab> <Plug>snipMateNextOrTrigger
      " let g:snipMate = get(g:, 'snipMate', {}) " Allow for vimrc re-sourcing
      " let g:snipMate.scope_aliases = {}
      " let g:snipMate.scope_aliases['sass'] = 'sass'
      " let g:snipMate.scope_aliases['css'] = 'css'

    " Syntastic
      " let g:syntastic_always_populate_loc_list = 1
      " let g:syntastic_auto_loc_list = 1
      " let g:syntastic_check_on_open = 1
      let g:syntastic_check_on_wq = 0
      let g:syntastic_javascript_checkers = ['jslint']

    " JS context coloring
      " let g:js_context_colors_jsx = 1
      " let g:js_context_colors_allow_jsx_syntax = 1

    " Javascript libraries syntax
      " let g:used_javascript_libs = 'underscore,jquery,react'

    " YouCompleteMe
      " make YCM compatible with UltiSnips (using supertab)
      " let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
      " let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
      " let g:SuperTabDefaultCompletionType = '<C-n>'
      " let g:ycm_autoclose_preview_window_after_completion = 1
      " let g:ycm_min_num_of_chars_for_completion = 1
      " set completeopt-=preview
      autocmd BufEnter *.jsx set filetype=javascript

    " UltiSnips
      " better key bindings for UltiSnipsExpandTrigger
      let g:UltiSnipsExpandTrigger = "<tab>"
      let g:UltiSnipsJumpForwardTrigger = "<tab>"
      let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

