" Do this first as it changes how things work in what follows
set nocompatible

" I don't anticipate using modelines so let's avoid any exploits
set modelines=0

" Comma is in a fixed position and easier to type than \
let mapleader = ","

" First thing we do is setup Pathogen to manage our other plugins
filetype off
call pathogen#runtime_append_all_bundles()

" Set encoding
set encoding=utf-8

" Turn on syntax highlighting.
syntax enable

" Intuitive backspacing.
set backspace=indent,eol,start

" Display incomplete commands.
set showcmd

" Display the mode you're in.
set showmode

" Turn on file type detection.
filetype plugin indent on

" Handle multiple buffers better.
set hidden

" Show line numbers.
set number

" Show cursor position.
set ruler

" Make it easier to find the cursor
set cursorline

" We do have a fast "terminal"
set ttyfast

" Show the status line all the time
set laststatus=2

" Show relative line numbers to make it easier to form commands
set relativenumber

" Useful status information at bottom of screen
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{fugitive#statusline()}%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

" Turn on line wrapping.
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

" Show 3 lines of context around the cursor.
set scrolloff=3

" Enhanced command line completion.
set wildmenu

" Complete files like a shell.
set wildmode=list:longest

" Set the terminal's title
set title

" No beeping.
set visualbell

" Don't make a backup before overwriting a file.
set nobackup

" And again.
set nowritebackup

" Keep swap files in one location
set directory=$HOME/.vim/tmp/,.

" Get rid of vims dodgy regexps
nnoremap / /\v
vnoremap / /\v

" Show search matches
set showmatch

" Enable incremental searching
set incsearch

" Highlite search matches
set hlsearch

" Case-insensitive searching.
set ignorecase

" But case-sensitive if expression contains a capital letter.
set smartcase

" Make it easy to get rid of matches when we're doing searching
nnoremap <leader><space> :noh<cr>

" Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set listchars=tab:▸\ ,eol:¬,trail:·
set autoindent

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

" Learn good behaviour
"nnoremap <up> <nop>
"nnoremap <down> <nop>
"nnoremap <left> <nop>
"nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Color scheme setup
set background=dark
colorscheme earendel

" TextMate saves-all on losing focus so let's do that in Vim too
autocmd FocusLost * silent! wall

if filereadable(expand("~/.vim/ruby.vimrc"))
  source ~/.vim/ruby.vimrc
endif

" Configuration for NERDTree plugin

let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$']
map <Leader>n :NERDTreeToggle<CR>

