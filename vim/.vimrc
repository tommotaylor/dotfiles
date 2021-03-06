set nocompatible

call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'alvan/vim-closetag'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'ervandew/supertab'
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'jbgutierrez/vim-babel'
Plug 'junegunn/goyo.vim'
Plug 'jvanja/vim-bootstrap4-snippets'
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }
Plug 'kien/ctrlp.vim'
Plug 'mattn/webapi-vim'
Plug 'mileszs/ack.vim', { 'on': 'Ack' }
Plug 'mxw/vim-jsx'
Plug 'othree/html5.vim', { 'for': ['html', 'eruby'] }
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
Plug 'scrooloose/syntastic'
Plug 'Raimondi/delimitMate'
Plug 'rizzatti/dash.vim'
Plug 'sirver/ultisnips'
Plug 'thoughtbot/vim-rspec', { 'for': 'ruby' }
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-haml', { 'for': ['haml', 'sass', 'scss'] }
Plug 'tpope/vim-rails', { 'for': 'ruby' }
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-dispatch'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'xolox/vim-misc'
Plug 'xolox/vim-easytags'
call plug#end()

" set guioptions+=e
" set showtabline=2

set encoding=utf-8

set showcmd                       " Display incomplete commands.
set noshowmode                    " Display the mode you're in.

set backspace=indent,eol,start    " Intuitive backspacing.
set hidden                        " Handle multiple buffers better.

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

set number                        " Show line numbers.
set ruler                         " Show cursor position.
set cursorline                    " Highlight the line of the cursor.

set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

set spelllang=en
set spellfile=$HOME/.vim/spell/en.utf-8.add
set complete+=kspell
set completeopt=longest,menu,preview

set wrap                          " Turn on line wrapping.
set linebreak                     " Break lines.
set nolist                        " `set list` disables linebreak.
set scrolloff=5                   " Line scroll offset from top and bottom.

set title                         " Set the terminal's title
set visualbell                    " No beeping.

set noswapfile                    " Disable .swp file creation.
set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.

set history=1000                  " Remember last 1000 commands.
set undolevels=1000               " Remember last 1000 undos.
set wildignore=*.swp,*.swo,*.bak,*.class

set tabstop=2                     " Global tab width.
set shiftwidth=2                  " And again, related.
set expandtab                     " Use spaces instead of tabs.

set clipboard=unnamed             " Enable OS clipboard to properly paste in to VIM buffer.
set pastetoggle=<F2>

colorscheme monokai

let &colorcolumn="80,100"         " Highlight column 80 and 100
let c_space_errors=1              " Highlight trailing spaces
set splitbelow                    " Open vsplits to below
set splitright                    " Open hsplits to the right
set winwidth=100                   " Set split heights and autoexpand on focus
set winheight=5
set winminheight=5
set winheight=999

" Flag filetypes
augroup filetypes
  " Clear this group's autocmds if previously set
  autocmd!

  " Ruby
  autocmd BufRead,BufNewFile {Rakefile,Gemfile,config.ru,Vagrantfile,Thorfile,Brewfile}
        \ let g:SuperTabDefaultCompletionType="context" |
        \ set ft=ruby

  " Sass/Scss
  autocmd BufRead,BufNewFile *.sass set ft=sass.css
  autocmd BufRead,BufNewFile *.scss set ft=scss.css
  autocmd FileType css,sass
        \ let b:SuperTabDefaultCompletionType="<c-x><c-o>" |
        \ setlocal iskeyword+=-

  " Activate omnifunc on filetypes
  autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
  autocmd FileType css,sass,scss setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags

  " git commit
  autocmd Filetype gitcommit
        \ let &l:colorcolumn="50,72" |
        \ setlocal spell textwidth=72

  " Markdown
  autocmd BufRead,BufNewFile *.md
        \ let &l:colorcolumn="80" |
        \ setlocal spell
augroup END

let mapleader=","
let g:font_normal="Meslo\ LG\ M\ Regular\ for\ Powerline:h14"
let g:font_focus="Meslo\ LG\ M\ Regular\ for\ Powerline:h14"
let g:jsx_ext_required = 0
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.js"

runtime! config/**/*.vim
