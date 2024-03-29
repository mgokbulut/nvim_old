" nnoremap j jzz
" nnoremap k kzz

" Basic Key Mappings 
" imap <C-h> <C-w>h
" imap <C-j> <C-w>j
" imap <C-k> <C-w>k
" imap <C-l> <C-w>l

" g Leader key
let mapleader=" "
" let localleader=" "
nnoremap <Space> <Nop>

" Better indenting
vnoremap < <gv
vnoremap > >gv

" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Escape remaps
inoremap jk <Esc>
inoremap kj <Esc>
inoremap jf <Esc>
inoremap fj <Esc>

" Easy CAPS
" inoremap <c-u> <ESC>viwUi
" nnoremap <c-u> viwU<Esc>

" TAB in general mode will move to text buffer
nnoremap <silent> <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <silent> <S-TAB> :bprevious<CR>

" Move selected line / block of text in visual mode
" shift + k to move up
" shift + j to move down
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

" Alternate way to save
" nnoremap <silent> <C-s> :w<CR>
" Alternate way o quit
" nnoremap <silent> <C-Q> :wq!<CR>
" Use control-c instead of escape
nnoremap <silent> <C-c> <Esc>
" <TAB>: completion.
" inoremap <silent> <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better window navigation
" nnoremap <C-h> <C-w>h
" nnoremap <C-j> <C-w>j
" nnoremap <C-k> <C-w>k
" nnoremap <C-l> <C-w>l
" -> tmux-navigator config has updated version

" Terminal window navigation
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l
inoremap <C-h> <C-\><C-N><C-w>h
inoremap <C-j> <C-\><C-N><C-w>j
inoremap <C-k> <C-\><C-N><C-w>k
inoremap <C-l> <C-\><C-N><C-w>l
tnoremap <Esc> <C-\><C-n>

" Use alt + hjkl to resize windows
" nnoremap <silent> <A-j>    :resize -2<CR>
" nnoremap <silent> <A-k>    :resize +2<CR>
" nnoremap <silent> <A-h>    :vertical resize -2<CR>
" nnoremap <silent> <A-l>    :vertical resize +2<CR>

let g:elite_mode=1  " Disable arrows"
if get(g:, 'elite_mode')
" Disable arrow movement, resize splits instead.
  nnoremap <C-Up>    :resize -2<CR>
  nnoremap <C-Down>  :resize +2<CR>
  nnoremap <C-Left>  :vertical resize -2<CR>
  nnoremap <C-Right> :vertical resize +2<CR>
  " Disable arrow keys in normal mode
  nnoremap <Left>  :echoe "Use h"<CR>
  nnoremap <Right> :echoe "Use l"<CR>
  nnoremap <Up>    :echoe "Use k"<CR>
  nnoremap <Down>  :echoe "Use j"<CR>
  " Disable arrow keys in elite mode
  inoremap <Left>  <ESC>:echoe "Use h"<CR>
  inoremap <Right> <ESC>:echoe "Use l"<CR>
  inoremap <Up>    <ESC>:echoe "Use k"<CR>
  inoremap <Down>  <ESC>:echoe "Use j"<CR>
endif

" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Center when searching
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

" vv to select line to the end
vnoremap v $h

" Use backspace key for matching parens
nmap <BS> %
xmap <BS> %
"
" Allow misspellings
cnoreabbrev qw wq
cnoreabbrev Wq wq
cnoreabbrev WQ wq
cnoreabbrev Qa qa
cnoreabbrev Bd bd
cnoreabbrev bD bd
