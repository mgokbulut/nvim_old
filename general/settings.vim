set iskeyword+=-                      	" treat dash separated words as a word text object"
set formatoptions-=cro                  " Stop newline continution of comments

syntax enable                           " Enables syntax highlighing
set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                              " Display long lines as just one line
" set whichwrap+=<,>,[,],h,l            " when you press l at the end of the line, it will to to the next line
set encoding=utf-8                      " The encoding displayed
set nohlsearch                          " Set no highlighting while searching
" set pumheight=10                      " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler             		            " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
" set conceallevel=0                    " So that I can see `` in markdown files
set tabstop=4 softtabstop=4             " Insert 4 spaces for a tab
set shiftwidth=4                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set copyindent                          " copy the previous indentation on autoindenting
set laststatus=2                        " Always display the status line
set number                              " Line numbers
set cursorline                          " Enable highlighting of the current line
set background=dark                     " tell vim what the background color looks like
set showtabline=2                       " Always show tabs
" set noshowmode                        " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set undodir=~/.config/nvim/undodir
set undofile
" set nowritebackup                     " This is recommended by coc
" set shortmess+=c                      " Don't pass messages to |ins-completion-menu|.
set signcolumn=yes                      " Always show the signcolumn, otherwise it would shift the text each time
set updatetime=300                      " Faster completion
set timeoutlen=100                      " By default timeoutlen is 1000 ms
set clipboard=unnamedplus               " Copy paste between vim and everything else
set incsearch                           " incremental search
set termguicolors                       " makes colorizer.lua work
set nocompatible
" set guifont=Fira\ Code:h12
set scrolloff=10 " Keep 8 lines below and above the cursor
" set guifont=JetBrainsMono\ Nerd\ Font
set cursorline                          " highlights the cursor line
"set nocursorline

" New stuff
" set notimeout nottimeout
" set scrolloff=1
" set sidescroll=1
" set sidescrolloff=1
" set display+=lastline
set backspace=eol,start,indent
" set nostartofline
" let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" set mmp=1300
" set autochdir                           " Your working directory will always be the same as your working directory
" set foldcolumn=2                        " Folding abilities

filetype on
filetype indent on
filetype plugin on

" au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" au bufread,bufnewfile *.md setlocal textwidth=80
au BufRead,BufNewFile *.txt setlocal textwidth=80 " to reformat visual mode + gq

" You can't stop me - allows to write files with no permission (aka sudo)
" cmap w!! w !sudo tee %

" double slash gets rid of the highligting after search
nnoremap // :noh<return>
