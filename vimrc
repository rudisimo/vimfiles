" vim: set foldmarker={,} foldlevel=1 foldmethod=marker spell:

" Basics {
    set nocompatible                                    " make vim behave in a more useful way
" }

" Pathogen {
    silent! call pathogen#infect()
    silent! call pathogen#helptags()
" }

" General {
    filetype plugin indent on                           " detect file types automatically
    syntax on                                           " syntax highlighting
    set mouse=a                                         " enable mouse automatically
    set encoding=utf-8                                  " sets the character encoding used inside Vim
    set history=1000                                    " remember more commands and search history
    set undolevels=1000                                 " use many levels of undo
    set noerrorbells                                    " don't beep
    set nobackup                                        " don't use local backup files
    set noswapfile                                      " don't use local swap files
    set visualbell                                      " don't beep
    set ttyfast                                         " indicates a fast terminal
" }

" UI {
    color molokai                                       " https://github.com/tomasr/molokai
    set tabpagemax=15                                   " only show 15 tabs
    set cursorline                                      " highlight current line
    set number                                          " print the line number in front of each line
    set relativenumber                                  " show the line number relative to the line with the cursor in front of each line
    set title                                           " change the terminal's title

    if has('cmdline_info')
        set ruler                                       " show the line and column number of the cursor position, separated by a comma
        set showcmd                                     " show (partial) command in the last line of the screen
    endif

    if has('statusline')
        set laststatus=2                                " always give the last window a status line
    endif

    set backspace=indent,eol,start                      " backspace for dummies
    set showmatch                                       " when a bracket is inserted, briefly jump to the matching one
    set incsearch                                       " while typing a search command, show where the pattern, as it was typed so far, matches
    set hlsearch                                        " when there is a previous search pattern, highlight all its matches
    set ignorecase                                      " ignore the case of normal letters when searching
    set smartcase                                       " override the 'ignorecase' option if the search pattern contains upper case characters
    set smartindent                                     " do smart autoindenting when starting a new line
    set smarttab                                        " when on, a <Tab> in front of a line inserts blanks according to 'shiftwidth'
    set scrolljump=5                                    " minimal number of lines to scroll when the cursor gets off the screen
    set scrolloff=5                                     " minimal number of screen lines to keep above and below the cursor
    set list                                            " display whitespace characters
    set listchars=tab:▸\ ,eol:¬,trail:·,nbsp:·          " whitespace characters

    if has('gui_running')
        set transparency=10                             " enable window transparency
    endif

    highlight ExtraWhitespace ctermbg=red guibg=red
" }

" Formatting {
    set nowrap                                          " don't wrap lines
    set noautoindent                                    " copy indent from current line when starting a new line
    set shiftwidth=4                                    " number of spaces to use for each step of (auto)indent
    set expandtab                                       " use the appropriate number of spaces to insert a <Tab>
    set tabstop=4                                       " number of spaces that a <Tab> in the file counts for
    set softtabstop=4                                   " number of spaces that a <Tab> counts for while performing editing operations, like inserting a <Tab> or using <BS>
" }

" NERDTree {
    let NERDTreeChDirMode=0
    let NERDTreeShowHidden=1

    autocmd VimEnter * call CdIfDirectory(expand("<amatch>"))
    autocmd VimEnter * if !argc() | NERDTree | endif
    autocmd WinEnter * call CloseIfOnlyNerdTreeLeft()
" }

" Airline {
    let g:airline_powerline_fonts = 1
    let g:airline#extensions#tabline#enabled = 1
" }

" Local Overrides {
    if filereadable(expand("\~/.vimrc.local"))
        source \~/.vimrc.local
    endif
" }

" vim:set et tw=4 sw=4:
