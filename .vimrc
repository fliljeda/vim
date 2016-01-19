" A vimrc configuration by Fredrik Liljedahl

" better safe than sorry, has to be first
set nocompatible

" PATHOGEN {
    execute pathogen#infect()
    call pathogen#helptags()
" }\PATHOGEN

" ENVIRONMENT {
    set t_Co=16
    syntax on

    " Assume a dark background
    set background=dark

    "let g:solarized_termcolors=256

    " Set the colorscheme
    colorscheme babymate256
    "colorscheme solarized "needs solarized colorpalette in terminal to work properly
" }/ENVIRONMENT

" SYNTASTIC {
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*

    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 0
" }\SYNTASTIC

" GENERAL {
    " Automatically detect file types
    filetype plugin indent on

    " enable syntax processing
    syntax enable

    " Enables mouse
    set mouse=a

    " Set line number
    "set number

    " Lets you put cursor at last character of line + 1
    set virtualedit=onemore

    " Allows backspaces over items
    set backspace=indent,eol,start

    " Set relative line number
    set relativenumber

    " Shows the command entered in the bottom right
    set showcmd

    " Highlights the cursor line
    set cursorline

    " Redeaw only when we need to
    set lazyredraw

    " Gives graphical menu when tabbing through :e etc.
    set wildmenu
" }\GENERAL

" FORMATTING{
    " Wrap long lines
    set nowrap

    " Scrolls horizontally
    set sidescroll=1

    " Sets at X amount of columns until scroll horizontally
    set sidescrolloff=5

    " Indents based on the previous line
    set autoindent

    " A tab counts as X spaces
    set tabstop=4

    " X number of spaces that a tab is when editing
    set softtabstop=4

    " Use indents of X spaces
    set shiftwidth=4

    " Tabs become spaces
    set expandtab
    
    " Scrolls window when X lines from bottom/top
    set scrolloff=3
" }\FORMATTING


" SEARCHING{
    " Ignores case when searching
    set ignorecase

    " Highlights as you search
    set hlsearch

    " Finds as you search
    set incsearch

" }\SEARCHING

" MAPPINGS{
    " Makes j and k move visually up/down at wrapped lines
    nnoremap j gj
    nnoremap k gk

    " Yank from cursor to end of line
    nnoremap Y y$
" }\MAPPINGS
