" Leader Key Maps

let @s = 'veS"'

" Open finder
command! Finder silent exe '!open ' . expand("%:p:h")

" Timeout
let g:which_key_timeout = 100

let g:which_key_display_names = {'<CR>': '?', '<TAB>': '?'}

" Map leader to which_key
nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" set timeoutlen=100

" Coc Search & refactor
" nnoremap <leader>? CocSearch <C-R>=expand("<cword>")<CR><CR>
" let g:which_key_map['?'] = 'search word'

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0
let g:which_key_max_size = 0

" let g:which_key_position = 'botright'
" let g:which_key_position = 'topleft'
" let g:which_key_vertical = 1

" Change the colors if you want

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Close buffer without exitting neovim
nnoremap Q :bp<cr>:bd #<cr>
" automatically remove trailing whitespaces
autocmd BufWritePre * %s/\s\+$//e

" nmap <c-s-t> :vs<bar>:b#<CR>

" open last closed buffer
function! OpenLastClosed()
    let last_buf = bufname('#')

    if empty(last_buf)
        echo "No recently closed buffer found"
        return
    endif
    let result = input("Open ". last_buf . " in (n)ormal (v)split, (t)ab or (s)plit ? (n/v/t/s) : ")
    if empty(result) || (result !=# 'v' && result !=# 't' && result !=# 's' && result !=# 'n')
        return
    endif
    if result ==# 't'
        execute 'tabnew'
    elseif result ==# 'v'
        execute "vsplit"
    elseif result ==# 's'
        execute "split"
    endif
    execute 'b ' . last_buf
endfunction

nnoremap <C-t> :call OpenLastClosed() <CR>

" Single mappings
let g:which_key_map['/'] = [ 'gc'                                              , 'comment' ]
" let g:which_key_map['.'] = [ ':e $MYVIMRC'                                     , 'open init' ]
let g:which_key_map[';'] = [ ':Commands'                                       , 'commands' ]
let g:which_key_map['='] = [ '<C-W>='                                          , 'balance windows' ]

let g:which_key_map['e'] = [ ':CocCommand explorer --toggle --sources=file+'   , 'explorer' ]
" let g:which_key_map['h'] = [ '<C-W>s'                                          , 'split below']
" let g:which_key_map['n'] = [ ':let @/ = ""'                                    , 'no highlight' ]
" let g:which_key_map['o'] = [ ':RnvimrToggle'                                   , 'open' ]
" let g:which_key_map['p'] = [ ':Rg'                                             , 'search text' ]
let g:which_key_map['q'] = [ '<Plug>(coc-fix-current)'                         , 'quickfix' ]
" let g:which_key_map['T'] = [ ':TSHighlightCapturesUnderCursor'                 , 'treesitter highlight' ]
" let g:which_key_map['u'] = [ ':UndotreeToggle'                                 , 'undo tree']
" let g:which_key_map['v'] = [ '<C-W>v'                                          , 'split right']
" let g:which_key_map['W'] = [ ':call WindowSwap#EasyWindowSwap()'               , 'move window' ]
let g:which_key_map['r'] = [ ':RnvimrToggle'                                   , 'ranger' ]
let g:which_key_map['v'] = [ ':Vista!!'                                        , 'vista' ]

" Group mappings

nmap <leader>1 <Plug>AirlineSelectTab1
let g:which_key_map.1 = 'which_key_ignore'
nmap <leader>2 <Plug>AirlineSelectTab2
let g:which_key_map.2 = 'which_key_ignore'
nmap <leader>3 <Plug>AirlineSelectTab3
let g:which_key_map.3 = 'which_key_ignore'
nmap <leader>4 <Plug>AirlineSelectTab4
let g:which_key_map.4 = 'which_key_ignore'
nmap <leader>5 <Plug>AirlineSelectTab5
let g:which_key_map.5 = 'which_key_ignore'
nmap <leader>6 <Plug>AirlineSelectTab6
let g:which_key_map.6 = 'which_key_ignore'
nmap <leader>7 <Plug>AirlineSelectTab7
let g:which_key_map.7 = 'which_key_ignore'
nmap <leader>8 <Plug>AirlineSelectTab8
let g:which_key_map.8 = 'which_key_ignore'
nmap <leader>9 <Plug>AirlineSelectTab9
let g:which_key_map.9 = 'which_key_ignore'


" a is for actions
let g:which_key_map.a = {
      \ 'name' : '+actions' ,
      \ 'C' : [':ColorizerToggle'                                       , 'colorizer'],
      \ 'f' : [':Finder'                                                , 'open in finder'],
      \ 'o' : [':Finder'                                                , 'open in finder'],
      \ 'e' : [':CocCommand explorer'                                   , 'explorer'],
      \ 'h' : [':let @/ = ""'                                           , 'remove search highlight'],
      \ 'l' : [':Bracey'                                                , 'start live server'],
      \ 'L' : [':BraceyStop'                                            , 'stop live server'],
      \ 'm' : [':MarkdownPreview'                                       , 'markdown preview'],
      \ 'M' : [':MarkdownPreviewStop'                                   , 'markdown preview stop'],
      \ 'n' : [':set nonumber!'                                         , 'line-numbers'],
      \ 's' : ['ysi'                                                    , 'surround'],
      \ 'r' : [':set norelativenumber!'                                 , 'relative line nums'],
      \ 'g' : [':SignifyToggle'                                         , 'signify'],
      \ 'w' : [':<C-u>silent! keeppatterns %substitute/\s\+$//e<CR>'    , 'remove whitespace'],
      \ }

let g:which_key_map.a.c = {
      \ 'name' : '+Colorschemes' ,
      \ '1' : [':call ChangeColorscheme(1) | sleep 100ms | call ChangeColorscheme(1)'       , 'gruvbox'],
      \ '2' : [':call ChangeColorscheme(2) | sleep 100ms | call ChangeColorscheme(2)'       , 'codedark'],
      \ '3' : [':call ChangeColorscheme(3) | sleep 100ms | call ChangeColorscheme(3)'       , 'aurora'],
      \ '4' : [':call ChangeColorscheme(4) | sleep 100ms | call ChangeColorscheme(4)'       , 'palenight'],
      \ '5' : [':call ChangeColorscheme(5) | sleep 100ms | call ChangeColorscheme(5)'       , 'nord'],
      \ '6' : [':call ChangeColorscheme(6) | sleep 100ms | call ChangeColorscheme(6)'       , 'dracula'],
      \ '7' : [':call ChangeColorscheme(7) | sleep 100ms | call ChangeColorscheme(7)'       , 'onedark'],
      \ '8' : [':call ChangeColorscheme(8) | sleep 100ms | call ChangeColorscheme(8)'       , 'snazzy'],
      \ }

" b is for buffer
let g:which_key_map.b = {
      \ 'name' : '+buffer' ,
      \ '>' : [':BufferMoveNext'        , 'move next'],
      \ '<' : [':BufferMovePrevious'    , 'move prev'],
      \ '1' : [':BufferGoto 1'          , 'buffer 1'],
      \ '2' : [':BufferGoto 2'          , 'buffer 2'],
      \ '3' : [':BufferGoto 3'          , 'buffer 3'],
      \ '4' : [':BufferGoto 4'          , 'buffer 4'],
      \ '5' : [':BufferGoto 5'          , 'buffer 5'],
      \ '6' : [':BufferGoto 6'          , 'buffer 6'],
      \ '7' : [':BufferGoto 7'          , 'buffer 7'],
      \ '8' : [':BufferGoto 8'          , 'buffer 8'],
      \ '9' : [':BufferGoto 9'          , 'buffer 9'],
      \ '0' : [':BufferGoto 0'          , 'buffer 0'],
      \ 'b' : [':BufferPick'            , 'pick buffer'],
      \ 'd' : [':Bdelete'               , 'delete-buffer'],
      \ 'p' : ['bprevious'              , 'previous-buffer'],
      \ '?' : ['Buffers'                , 'fzf-buffer'],
      \ 'h' : [':vertical resize -5'    , 'resize ←'],
      \ 'j' : [':res -5'                , 'resize ↓'],
      \ 'k' : [':res +5'                , 'resize ↑'],
      \ 'l' : [':vertical resize +5'    , 'resize →'],
      \ }

" d is for debug
let g:which_key_map.d = {
      \ 'name' : '+debug' ,
      \ 'b' : ['<Plug>VimspectorToggleBreakpoint'              , 'breakpoint'],
      \ 'B' : ['<Plug>VimspectorToggleConditionalBreakpoint'   , 'conditional breakpoint'],
      \ 'c' : ['<Plug>VimspectorRunToCursor'                   , 'run to cursor'],
      \ 'd' : ['<Plug>VimspectorContinue'                      , 'continue'],
      \ 'f' : ['<Plug>VimspectorAddFunctionBreakpoint'         , 'function breakpoint'],
      \ 'm' : [':MaximizerToggle'                              , 'maximize window'],
      \ 'o' : ['<Plug>VimspectorStepOver'                      , 'step over'],
      \ 'O' : ['<Plug>VimspectorStepOut'                       , 'step out'],
      \ 'i' : ['<Plug>VimspectorStepInto'                      , 'step into'],
      \ 'p' : ['<Plug>VimspectorPause'                         , 'pause'],
      \ 'r' : ['<Plug>VimspectorRestart'                       , 'restart'],
      \ 's' : ['<Plug>VimspectorStop'                          , 'stop'],
      \ }

" f is for find and replace
" let g:which_key_map.f = {
"       \ 'name' : '+find & replace' ,
"       \ 'f' : [':Farr --source=vimgrep'    , 'file'],
"       \ 'p' : [':Farr --source=rgnvim'     , 'project'],
"       \ }

" k is for task
" let g:which_key_map.k = {
"       \ 'name' : '+task' ,
"       \ 'c' : [':AsyncTask file-compile'      , 'compile file'],
"       \ 'b' : [':AsyncTask project-build'     , 'build project'],
"       \ 'e' : [':AsyncTaskEdit'               , 'edit local tasks'],
"       \ 'f' : [':AsyncTaskFzf'                , 'find task'],
"       \ 'g' : [':AsyncTaskEdit!'              , 'edit global tasks'],
"       \ 'h' : [':AsyncTaskList!'              , 'list hidden tasks'],
"       \ 'l' : [':CocList tasks'               , 'list tasks'],
"       \ 'm' : [':AsyncTaskMacro'              , 'macro help'],
"       \ 'o' : [':copen'                       , 'open task view'],
"       \ 'r' : [':AsyncTask file-run'          , 'run file'],
"       \ 'p' : [':AsyncTask project-run'       , 'run project'],
"       \ 'x' : [':cclose'                      , 'close task view'],
"       \ }
      " \ 'l' : [':AsyncTaskList'               , 'list tasks'],

" m is for mark
" let g:which_key_map.m = {
"       \ 'name' : '+mark' ,
"       \ 'c' : [':CocCommand bookmark.clearForCurrentFile', 'clear file'],
"       \ 'C' : [':CocCommand bookmark.clearForAllFiles', 'clear project'],
"       \ 'j' : [':CocCommand bookmark.next', 'next bookmark'],
"       \ 'k' : [':CocCommand bookmark.prev', 'prev bookmark'],
"       \ 't' : [':CocCommand bookmark.toggle', 'toggle bookmark'],
"       \ }
      " CoC throws an error
      " \ 'a' : [':CocCommand bookmark.annotate', 'annotate bookmark'],

" s is for search
let g:which_key_map.s = {
      \ 'name' : '+search' ,
      \ '/' : [':History/'              , 'history'],
      \ ';' : [':FzfPreviewCommandPalette'              , 'commands'],
      \ 'a' : [':Ag'                    , 'text Ag'],
      \ 'b' : [':CocCommand fzf-preview.BufferLines'                , 'current buffer'],
      \ 'B' : [':CocCommand fzf-preview.Buffers'               , 'open buffers'],
      \ 'c' : [':Commits'               , 'commits'],
      \ 'C' : [':BCommits'              , 'buffer commits'],
      \ 'd' : [':CocCommand fzf-preview.DirectoryFiles'              , 'directories'],
      \ 'f' : [':CocCommand fzf-preview.ProjectFiles'                 , 'files'],
      \ 'g' : [':CocCommand fzf-preview.GitFiles'                , 'git files'],
      \ 'G' : [':GFiles?'               , 'modified git files'],
      \ 'h' : [':History'               , 'file history'],
      \ 'H' : [':History:'              , 'command history'],
      \ 'l' : [':Lines'                 , 'lines'] ,
      \ 'm' : [':CocCommand fzf-preview.Marks', 'list marks'],
      \ 'M' : [':Maps'                  , 'normal maps'] ,
      \ 'p' : [':Helptags'              , 'help tags'] ,
      \ 'P' : [':Tags'                  , 'project tags'],
      \ 'q' : [':CocCommand fzf-preview.QuickFix'                  , 'quickfix list'],
      \ 's' : [':CocList snippets'      , 'snippets'],
      \ 'S' : [':Colors'                , 'color schemes'],
      \ 't' : [':Rg'                    , 'text Rg'],
      \ 'T' : [':BTags'                 , 'buffer tags'],
      \ 'w' : [':Windows'               , 'search windows'],
      \ 'y' : [':Filetypes'             , 'file types'],
      \ 'z' : [':FZF'                   , 'FZF'],
      \ }
"
" :CocCommand fzf-preview.AllBuffers
" :CocCommand fzf-preview.Changes
" :CocCommand fzf-preview.Yankround
" :CocCommand fzf-preview.CocReferences
" :CocCommand fzf-preview.CocDiagnostics
" :CocCommand fzf-preview.CocCurrentDiagnostics
" :CocCommand fzf-preview.CocTypeDefinitions
" \ 'l' : [':CocCommand fzf-preview.Bookmarks', 'list bookmarks'],
" $FZF_PREVIEW_PREVIEW_BAT_THEME = 'ansi-dark'
"

" let g:which_key_map.S = {
"       \ 'name' : '+Session' ,
"       \ 'c' : [':SClose'          , 'Close Session']  ,
"       \ 'd' : [':SDelete'         , 'Delete Session'] ,
"       \ 'l' : [':SLoad'           , 'Load Session']     ,
"       \ 's' : [':Startify'        , 'Start Page']     ,
"       \ 'S' : [':SSave'           , 'Save Session']   ,
"       \ }

" g is for git
let g:which_key_map.g = {
      \ 'name' : '+git' ,
      \ 'a' : [':Git add .'                        , 'add all'],
      \ 'A' : [':CocCommand fzf-preview.GitStatus' , 'actions'],
      \ 'b' : [':Git blame'                        , 'blame'],
      \ 'B' : [':GBrowse'                          , 'browse'],
      \ 'c' : [':Git commit'                       , 'commit'],
      \ 'd' : [':Git diff'                         , 'diff'],
      \ 'D' : [':Gdiffsplit'                       , 'diff split'],
      \ 'g' : [':GGrep'                            , 'git grep'],
      \ 'G' : [':Gstatus'                          , 'status'],
      \ 'h' : [':GitGutterLineHighlightsToggle'    , 'highlight hunks'],
      \ 'H' : ['<Plug>(GitGutterPreviewHunk)'      , 'preview hunk'],
      \ 'i' : [':Gist -b'                          , 'post gist'],
      \ 'j' : ['<Plug>(GitGutterNextHunk)'         , 'next hunk'],
      \ 'k' : ['<Plug>(GitGutterPrevHunk)'         , 'prev hunk'],
      \ 'l' : [':Git log'                          , 'log'],
      \ 'm' : ['<Plug>(git-messenger)'             , 'message'],
      \ 'p' : [':Git push'                         , 'push'],
      \ 'P' : [':Git pull'                         , 'pull'],
      \ 'r' : [':GRemove'                          , 'remove'],
      \ 's' : ['<Plug>(GitGutterStageHunk)'        , 'stage hunk'],
      \ 'S' : [':CocCommand fzf-preview.GitStatus' , 'status'],
      \ 't' : [':GitGutterSignsToggle'             , 'toggle signs'],
      \ 'u' : ['<Plug>(GitGutterUndoHunk)'         , 'undo hunk'],
      \ 'v' : [':GV'                               , 'view commits'],
      \ 'V' : [':GV!'                              , 'view buffer commits'],
      \ }
      " \ 'A' : [':Git add %'                        , 'add current'],
      " \ 'S' : [':!git status'                      , 'status'],
"
"
"

" let g:which_key_map.G = {
"       \ 'name' : '+gist' ,
"       \ 'a' : [':Gist -a'                          , 'post gist anon'],
"       \ 'b' : [':Gist -b'                          , 'post gist browser'],
"       \ 'd' : [':Gist -d'                          , 'delete gist'],
"       \ 'e' : [':Gist -e'                          , 'edit gist'],
"       \ 'l' : [':Gist -l'                          , 'list public gists'],
"       \ 's' : [':Gist -ls'                         , 'list starred gists'],
"       \ 'm' : [':Gist -m'                          , 'post gist all buffers'],
"       \ 'p' : [':Gist -P'                          , 'post public gist '],
"       \ 'P' : [':Gist -p'                          , 'post private gist '],
"       \ }

" l is for language server protocol
let g:which_key_map.l = {
      \ 'name' : '+lsp' ,
      \ '.' : [':CocConfig'                          , 'config'],
      \ ';' : ['<Plug>(coc-refactor)'                , 'refactor'],
      \ 'a' : ['<Plug>(coc-codeaction)'              , 'code action'],
      \ 'A' : ['<Plug>(coc-codeaction-selected)'     , 'selected action'],
      \ 'b' : [':CocNext'                            , 'next action'],
      \ 'B' : [':CocPrev'                            , 'prev action'],
      \ 'c' : [':CocList commands'                   , 'commands'],
      \ 'd' : ['<Plug>(coc-definition)'              , 'definition'],
      \ 'D' : ['<Plug>(coc-declaration)'             , 'declaration'],
      \ 'e' : [':CocList extensions'                 , 'extensions'],
      \ 'f' : ['<Plug>(coc-format-selected)'         , 'format selected'],
      \ 'F' : ['<Plug>(coc-format)'                  , 'format'],
      \ 'h' : ['<Plug>(coc-float-hide)'              , 'hide'],
      \ 'i' : ['<Plug>(coc-implementation)'          , 'implementation'],
      \ 'I' : [':CocList diagnostics'                , 'diagnostics'],
      \ 'j' : ['<Plug>(coc-float-jump)'              , 'float jump'],
      \ 'l' : ['<Plug>(coc-codelens-action)'         , 'code lens'],
      \ 'n' : ['<Plug>(coc-diagnostic-next)'         , 'next diagnostic'],
      \ 'N' : ['<Plug>(coc-diagnostic-next-error)'   , 'next error'],
      \ 'o' : [':Vista!!'                            , 'outline'],
      \ 'O' : [':CocList outline'                    , 'search outline'],
      \ 'p' : ['<Plug>(coc-diagnostic-prev)'         , 'prev diagnostic'],
      \ 'P' : ['<Plug>(coc-diagnostic-prev-error)'   , 'prev error'],
      \ 'q' : ['<Plug>(coc-fix-current)'             , 'quickfix'],
      \ 'r' : ['<Plug>(coc-references)'              , 'references'],
      \ 'R' : ['<Plug>(coc-rename)'                  , 'rename'],
      \ 's' : [':CocList -I symbols'                 , 'references'],
      \ 'S' : [':CocList snippets'                   , 'snippets'],
      \ 't' : ['<Plug>(coc-type-definition)'         , 'type definition'],
      \ 'u' : [':CocListResume'                      , 'resume list'],
      \ 'U' : [':CocUpdate'                          , 'update CoC'],
      \ 'z' : [':CocDisable'                         , 'disable CoC'],
      \ 'Z' : [':CocEnable'                          , 'enable CoC'],
      \ }
      " \ 'o' : ['<Plug>(coc-openlink)'                , 'open link'],

" t is for terminal
" let g:which_key_map.t = {
"       \ 'name' : '+terminal' ,
"       \ ';' : [':FloatermNew --wintype=normal --height=6'        , 'terminal'],
"       \ 'f' : [':FloatermNew fzf'                               , 'fzf'],
"       \ 'g' : [':FloatermNew lazygit'                           , 'git'],
"       \ 'd' : [':FloatermNew lazydocker'                        , 'docker'],
"       \ 'n' : [':FloatermNew node'                              , 'node'],
"       \ 'N' : [':FloatermNew nnn'                               , 'nnn'],
"       \ 'p' : [':FloatermNew python'                            , 'python'],
"       \ 'm' : [':FloatermNew lazynpm'                           , 'npm'],
"       \ 'r' : [':FloatermNew ranger'                            , 'ranger'],
"       \ 't' : [':FloatermToggle'                                , 'toggle'],
"       \ 'y' : [':FloatermNew ytop'                              , 'ytop'],
"       \ 's' : [':FloatermNew ncdu'                              , 'ncdu'],
"       \ }

" let g:which_key_map.t = {
" 			\ 'name' : '+Tabs' ,
" 			\ 'c' : [':tabclose' , 'Close Tab'],
" 			\ 'e' : [':tabedit' , 'New Tab'],
" 			\ 'E' : [':tabedit %' , 'New Tab of Current File '],
" 			\ 'o' : [':tabonly' , 'Close Other Tab'],
" 			\ 'n' : [':tabnext' , 'Next Tab'],
" 			\ 'p' : [':tabprevious' , 'Previous Tab'],
" 			\ 't' : [':CtrlSpaceTabLabel' , 'Tab Label'],
" 			\ 'r' : [':tabrewind' , 'Rewind Tab'],
" 			\ 'f' : [':tabfirst' , 'First Tab'],
" 			\ 'l' : [':tablast' , 'Last Tab'],
"     \ }

" w is for wiki
" let g:which_key_map.w = {
"       \ 'name' : '+wiki' ,
"       \ 'w' : ['<Plug>VimwikiIndex'                              , 'ncdu'],
"       \ 'n' : ['<plug>(wiki-open)'                              , 'ncdu'],
"       \ 'j' : ['<plug>(wiki-journal)'                              , 'ncdu'],
"       \ 'R' : ['<plug>(wiki-reload)'                              , 'ncdu'],
"       \ 'c' : ['<plug>(wiki-code-run)'                              , 'ncdu'],
"       \ 'b' : ['<plug>(wiki-graph-find-backlinks)'                              , 'ncdu'],
"       \ 'g' : ['<plug>(wiki-graph-in)'                              , 'ncdu'],
"       \ 'G' : ['<plug>(wiki-graph-out)'                              , 'ncdu'],
"       \ 'l' : ['<plug>(wiki-link-toggle)'                              , 'ncdu'],
"       \ 'd' : ['<plug>(wiki-page-delete)'                              , 'ncdu'],
"       \ 'r' : ['<plug>(wiki-page-rename)'                              , 'ncdu'],
"       \ 't' : ['<plug>(wiki-page-toc)'                              , 'ncdu'],
"       \ 'T' : ['<plug>(wiki-page-toc-local)'                              , 'ncdu'],
"       \ 'e' : ['<plug>(wiki-export)'                              , 'ncdu'],
"       \ 'u' : ['<plug>(wiki-list-uniq)'                              , 'ncdu'],
"       \ 'U' : ['<plug>(wiki-list-uniq-local)'                              , 'ncdu'],
"       \ }

" Global
" <Plug>VimwikiIndex
" <Plug>VimwikiTabIndex
" <Plug>VimwikiUISelect
" <Plug>VimwikiDiaryIndex
" <Plug>VimwikiMakeDiaryNote
" <Plug>VimwikiTabMakeDiaryNote
" <Plug>VimwikiMakeYesterdayDiaryNote
" <Plug>VimwikiMakeTomorrowDiaryNote
"
" " Local
" <Plug>Vimwiki2HTML
" <Plug>Vimwiki2HTMLBrowse
" <Plug>VimwikiDiaryGenerateLinks
" <Plug>VimwikiFollowLink
" <Plug>VimwikiSplitLink
" <Plug>VimwikiVSplitLink
" <Plug>VimwikiTabnewLink
" <Plug>VimwikiGoBackLink
" <Plug>VimwikiNextLink
" <Plug>VimwikiPrevLink
" <Plug>VimwikiGoto
" <Plug>VimwikiDeleteLink
" <Plug>VimwikiRenameLink
" <Plug>VimwikiAddHeaderLevel

" Register which key map
call which_key#register('<Space>', "g:which_key_map")
