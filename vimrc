" https://github.com/tpope/vim-pathogen
execute pathogen#infect()

syntax on
filetype plugin indent on

set nocompatible                            " make Vim behave in a more useful way
set noerrorbells                            " don't beep
set nobackup                                " don't use local backup files
set noswapfile                              " don't use local swap files
set nowrap                                  " don't wrap lines
set autoindent                              " copy indent from current line when starting a new line
set encoding=utf-8                          " sets the character encoding used inside Vim
set expandtab                               " use the appropriate number of spaces to insert a <Tab>
set history=1000                            " remember more commands and search history
set hlsearch                                " when there is a previous search pattern, highlight all its matches
set ignorecase                              " ignore the case of normal letters when searching
set incsearch                               " while typing a search command, show where the pattern, as it was typed so far, matches
set laststatus=2                            " always give the last window a status line
set list                                    " display whitespace characters
set listchars=tab:▸\ ,eol:¬,trail:·,nbsp:·  " whitespace characters
set number                                  " print the line number in front of each line
set relativenumber                          " show the line number relative to the line with the cursor in front of each line
set ruler                                   " show the line and column number of the cursor position, separated by a comma
set scrolljump=5                            " minimal number of lines to scroll when the cursor gets off the screen
set scrolloff=5                             " minimal number of screen lines to keep above and below the cursor
set shiftround                              " round indent to multiple of 'shiftwidth'
set shiftwidth=4                            " number of spaces to use for each step of (auto)indent
set showcmd                                 " show (partial) command in the last line of the screen
set showmatch                               " when a bracket is inserted, briefly jump to the matching one
set smartcase                               " override the 'ignorecase' option if the search pattern contains upper case characters
set smartindent                             " do smart autoindenting when starting a new line
set smarttab                                " when on, a <Tab> in front of a line inserts blanks according to 'shiftwidth'
set softtabstop=4                           " number of spaces that a <Tab> counts for while performing editing operations, like inserting a <Tab> or using <BS>
set tabstop=4                               " number of spaces that a <Tab> in the file counts for
set title                                   " change the terminal's title
set ttyfast                                 " indicates a fast terminal
set undolevels=1000                         " use many muchos levels of undo
set visualbell                              " don't beep
set wildignore=*.swp,*.bak,*.pyc,*.class    " ignore certain files

" Display trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red

" Theme
color molokai
let g:rehash256 = 1
set guifont=Powerline\ Consolas:h15         " https://github.com/runsisi/consolas-font-for-powerline

" NERDTree
let NERDTreeShowHidden = 1
autocmd vimenter * if !argc() | NERDTree | endif

" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
