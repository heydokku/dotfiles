call plug#begin('~/.vim/plugged')
" very fast now
" Search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'easymotion/vim-easymotion' " only <leader>s to search one character
Plug 'rhysd/clever-f.vim'
Plug 'haya14busa/incsearch.vim'
Plug 'voldikss/vim-browser-search' " search with duckduckgo

Plug 'alaviss/nim.nvim'

" Git-related
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'airblade/vim-gitgutter'

" Editor enhancements
Plug 'MattesGroeger/vim-bookmarks'
Plug 'matze/vim-move' " 5<A-k> will move the selection up by 5 lines
Plug 'tpope/vim-unimpaired' " insert space ]<Space>, ]e: exchange line
Plug 'szw/vim-maximizer' " maximize the current buffer. <F3>
Plug 'wellle/targets.vim' " da, or da. delete inside commna object. TODO:
Plug 'wincent/terminus' " enhance the terminal with pastemode, change cursor shape from when switch from normal mode to insert mode
Plug 'ervandew/supertab' " search in a folder, so nice
Plug 'itchyny/lightline.vim'
Plug 'bfrg/vim-qf-diagnostics'
Plug 'machakann/vim-highlightedyank'
Plug 'christoomey/vim-system-copy' " use cp to copy to system, cv to paste
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround' " cs, ds, ys
Plug 'tpope/vim-repeat'
Plug 'francoiscabrol/ranger.vim'
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'preservim/tagbar'
Plug 'vimwiki/vimwiki'
Plug 'jiangmiao/auto-pairs'
Plug 'andymass/vim-matchup'
Plug 'christoomey/vim-tmux-navigator'
Plug 'mbbill/undotree'
Plug 'luochen1990/rainbow'
Plug 'mg979/vim-xtabline' " Tabline customization with buffer filtering
Plug 'AndrewRadev/splitjoin.vim' " No support for Dart, Swift

" Go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Flutter
" Plug 'dart-lang/dart-vim-plugin'
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'
Plug 'thosakwe/vim-flutter'
Plug 'tfnico/vim-gradle'

" Swift
Plug 'keith/swift.vim'
Plug 'arzg/vim-swift'

" UI, theme
Plug 'andreasvc/vim-256noir'
Plug 'owickstrom/vim-colors-paramount'
Plug 'whatyouhide/vim-gotham'

" Testing
Plug 'janko/vim-test'

" Debug
Plug 'puremourning/vimspector'
" no support for go, dart, swift
Plug 'kassio/neoterm' " open REPL in the same file.

" Csharp
Plug 'OmniSharp/omnisharp-vim'

" Linting and Format
" Plug 'sbdchd/neoformat'
Plug 'Chiel92/vim-autoformat'

" Plug 'dense-analysis/ale'
" scss & css
Plug 'cakebaker/scss-syntax.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'ap/vim-css-color'
" Markdown
Plug 'plasticboy/vim-markdown'
Plug 'vim-pandoc/vim-pandoc' "integrate Vim with the pandoc document converter
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'godlygeek/tabular'
Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'} " InstantMarkDown

" latex
Plug 'lervag/vimtex'

" python
Plug 'deoplete-plugins/deoplete-jedi' " py for deoplete
Plug 'davidhalter/jedi-vim'
Plug 'jeetsukumaran/vim-pythonsense'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'Shougo/echodoc.vim'
Plug 'Shougo/neoinclude.vim'
Plug 'deoplete-plugins/deoplete-tag'
Plug 'Shougo/deoplete-clangx'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" ruby
Plug 'tpope/vim-endwise'

" HTML, CSS, JavaScript, Typescript, JSON, etc.
Plug 'elzr/vim-json'
Plug 'neoclide/jsonc.vim'
Plug 'othree/html5.vim'
Plug 'heavenshell/vim-jsdoc', {
      \ 'for': ['javascript', 'javascript.jsx','typescript'],
      \ 'do': 'make install'
      \}
" Plug 'hail2u/vim-css3-syntax' " , { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
" Plug 'spf13/PIV', { 'for' :['php', 'vim-plug'] }
" Plug 'pangloss/vim-javascript', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'yuezk/vim-js', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
" Plug 'MaxMEllon/vim-jsx-pretty', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
" Plug 'jelera/vim-javascript-syntax', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
"Plug 'jaxbot/browserlink.vim'
Plug 'HerringtonDarkholme/yats.vim' "TypeScript Syntax Highlighting in Vim
" Plug 'posva/vim-vue'
" Plug 'evanleck/vim-svelte', {'branch': 'main'}
" Plug 'leafOfTree/vim-svelte-plugin'
" Plug 'leafgarland/typescript-vim'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'pantharshit00/vim-prisma'


" Other visual enhancement

call plug#end()

fun! TrimWhitespace()
  let l:save = winsaveview()
  keeppatterns %s/\s\+$//e
  call winrestview(l:save)
endfun

augroup DeleteWhiteSpace
  autocmd!
  autocmd BufWritePre * :call TrimWhitespace()
augroup END

" colorscheme paramount
colorscheme gotham256
" TODO: hoac dung o ngoai bash chen vao trong .vimrc nay cung duoc
" if (terminal.time >= 6pm){
" background=dark
" } else {
" background=light
" }
" colorscheme 256_noir
set background=dark

" set background=light

" colorscheme onehalfdark
" default options
noremap ; :

" Save & quit
noremap Q :q<CR>

" close all windows
nnoremap <leader>Q :qa!<cr>

noremap <C-q> :qa<CR>
noremap S :w<CR>

" make Y to copy till the end of the line
nnoremap Y y$

" Copy to system clipboard
vnoremap Y "+y

" Faster navigation
noremap <silent> U 5k
noremap <silent> E 5j
" Faster in-line navigation
noremap W 5w
noremap B 5b
" Go to tab
" gt and gT

" code folding
set completeopt-=preview " disable for vim-lsc auto completion
set foldmethod=syntax
set foldlevelstart=99
set foldnestmax=10
set foldlevel=1
set noshowmode
set nobackup
set nowb
set nocompatible
set noswapfile
set nonumber
set hidden
set mouse=a " if I accidentally use the mouse
set splitright " splits to the right
set splitbelow " splits below
set expandtab " space characters instead of tab
set tabstop=2 " tab equals 2 spaces
set shiftwidth=2 " indentation
set ignorecase " search case insensitive
set smartcase " search via smartcase
set hidden " allow hidden buffers
set nobackup " don't create backup files
set nowritebackup " don't create backup files
set signcolumn=yes " add a column for sings (e.g. LSP, ...)
set updatetime=520 " time until update
set undofile " persists undo tree
set laststatus=2
filetype plugin indent on " enable detection, plugins and indents
syntax on
let mapleader = " " " space as leader key
let g:netrw_banner=0 " disable banner in netrw
let g:netrw_liststyle=3 " tree view in netrw
let g:markdown_fenced_languages = ['javascript', 'js=javascript', 'json=javascript'] " syntax highlighting in markdown

nnoremap <leader>v :e $MYVIMRC<CR> "view quickly command
nmap <Leader>rl :source $MYVIMRC

" preservim/nerdtree
nnoremap <leader>n :NERDTreeFind<CR>
nnoremap <leader>b :NERDTreeToggle<CR>
" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
      \ quit | endif

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
      \ quit | endif

" tpope/vim-fugitive
nnoremap <leader>gg :G<cr>
nnoremap <leader>gd :Gdiff master<cr>
nnoremap <leader>gl :G log -100<cr>
nnoremap <leader>gp :G push<cr>

" janko/vim-test
nnoremap <silent> tt :TestNearest<CR>
nnoremap <silent> tf :TestFile<CR>
nnoremap <silent> ts :TestSuite<CR>
nnoremap <silent> t_ :TestLast<CR>
let test#strategy = "neovim"
let test#neovim#term_position = "vertical"

" puremourning/vimspector
fun! GotoWindow(id)
  :call win_gotoid(a:id)
endfun
func! AddToWatch()
  let word = expand("<cexpr>")
  call vimspector#AddWatch(word)
endfunction
let g:vimspector_base_dir = expand('$HOME/.config/vimspector-config')
let g:vimspector_sidebar_width = 60
nnoremap <leader>da :call vimspector#Launch()<CR>
nnoremap <leader>dc :call GotoWindow(g:vimspector_session_windows.code)<CR>
nnoremap <leader>dv :call GotoWindow(g:vimspector_session_windows.variables)<CR>
nnoremap <leader>dw :call GotoWindow(g:vimspector_session_windows.watches)<CR>
nnoremap <leader>ds :call GotoWindow(g:vimspector_session_windows.stack_trace)<CR>
nnoremap <leader>do :call GotoWindow(g:vimspector_session_windows.output)<CR>
nnoremap <leader>di :call AddToWatch()<CR>
nnoremap <leader>dx :call vimspector#Reset()<CR>
nnoremap <leader>dX :call vimspector#ClearBreakpoints()<CR>
" nnoremap <S-n> :call vimspector#StepOut()<CR>
" nnoremap <S-m> :call vimspector#StepInto()<CR>
" nnoremap <S-j> :call vimspector#StepOver()<CR>
nnoremap <leader>d_ :call vimspector#Restart()<CR>
nnoremap <leader>dn :call vimspector#Continue()<CR>
nnoremap <leader>drc :call vimspector#RunToCursor()<CR>
nnoremap <leader>dh :call vimspector#ToggleBreakpoint()<CR>
nnoremap <leader>de :call vimspector#ToggleConditionalBreakpoint()<CR>
let g:vimspector_sign_priority = {
      \    'vimspectorBP':         998,
      \    'vimspectorBPCond':     997,
      \    'vimspectorBPDisabled': 996,
      \    'vimspectorPC':         999,
      \ }

" " janko/vim-test and puremourning/vimspector
nnoremap <leader>dd :TestNearest -strategy=jest<CR>
function! JestStrategy(cmd)
  let testName = matchlist(a:cmd, '\v -t ''(.*)''')[1]
  call vimspector#LaunchWithSettings( #{ configuration: 'jest', TestName: testName } )
endfunction
let g:test#custom_strategies = {'jest': function('JestStrategy')}

" CDS
augroup MyCDSCode
  autocmd!
  autocmd BufReadPre,FileReadPre *.cds set ft=cds
augroup END

" vimwiki/vimwiki
let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_ext2syntax = {'.md': 'markdown',
                  \ '.mkd': 'markdown',
                  \ '.mdown': 'markdown'}
let g:taskwiki_markup_syntax = 'markdown'


" dart-vim
let dart_format_on_save = 1
let dart_style_guide = 2

"fzf.vim
let g:fzf_action = {
      \ 'ctrl-t': 'tab split',
      \ 'ctrl-x': 'split',
      \ 'ctrl-v': 'vsplit' }

let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'border': 'sharp' } }
let g:fzf_tags_command = 'ctags -R'

let $FZF_DEFAULT_OPTS = '--inline-info'
let $FZF_DEFAULT_COMMAND = "rg --files --hidden --glob '!.git/**' --glob '!build/**' --glob '!.dart_tool/**' --glob '!.idea'"
nnoremap <leader>f :Files<cr>
nnoremap <leader>g :Rg<cr>
nnoremap <leader>h :History:<cr>

"vim-move
let g:move_map_keys = 0
nmap <C-k> <Plug>MoveLineUp
nmap <C-j> <Plug>MoveLineDown
vmap <C-k> <Plug>MoveBlockUp
vmap <C-j> <Plug>MoveBlockDown

" airblade/vim-gitgutter
nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)
nmap ghs <Plug>(GitGutterStageHunk)
nmap ghu <Plug>(GitGutterUndoHunk)
nmap ghp <Plug>(GitGutterPreviewHunk)
let g:gitgutter_show_msg_on_hunk_jumping = 0

"thosakwe/vim-flutter
nnoremap <leader>rl :FlutterHotReload<cr>
nnoremap <leader>rs :FlutterHotRestart<cr>
nnoremap <leader>re :FlutterEmulators<cr>
nnoremap <leader>rr :FlutterRun<cr>
nnoremap <leader>rq :FlutterQuit<cr>
nnoremap <leader>fD :FlutterVisualDebug<cr>

" vim-bookmark
nmap ms <Plug>BookmarkShowAll
let g:bookmark_sign = '>'
let g:bookmark_save_per_working_dir = 1
let g:bookmark_highlight_lines = 1
" Add/remove bookmark at current line   mm  :BookmarkToggle
" Add/edit/remove annotation at current line  mi  :BookmarkAnnotate <TEXT>
" Jump to next bookmark in buffer   mn  :BookmarkNext
" Jump to previous bookmark in buffer   mp  :BookmarkPrev
" Clear bookmarks in current buffer only  mc  :BookmarkClear
" Clear bookmarks in all buffers  mx  :BookmarkClearAll
" Move up bookmark at current line  [count]mkk  :BookmarkMoveUp [<COUNT>]
" Move down bookmark at current line  [count]mjj  :BookmarkMoveDown [<COUNT>]
" Move bookmark at current line to another line   [count]mg   :BookmarkMoveToLine <LINE>


nmap ge <plug>(qf-diagnostics-popup-quickfix)
nmap <leader>e <plug>(qf-diagnostics-popup-loclist)
" lightline
if !has('gui_running')
  set t_Co=256
endif
let g:lightline = { 'colorscheme': 'gotham256' }

" vim-easymotion
map  <Leader>s <Plug>(easymotion-bd-f)
nmap <Leader>s <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
" nmap s <Plug>(easymotion-overwin-f2)

" incsearch
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" vim-browser-search
" TODO: unstable
nmap <silent> <Leader>p <Plug>SearchNormal
vmap <silent> <Leader>p <Plug>SearchVisual
let g:browser_search_default_engine = 'duckduckgo'

" .vimrc source automatically
" snippet, autocompletion is away from me,
" coc.nvim, neomake, neoformat, or something like that
"
" vim-lsc
let g:lsc_server_commands = {'dart': 'dart_language_server'}
let g:lsc_enable_autocomplete = v:false
let g:lsc_auto_map = {
      \ 'GoToDefinition': 'gd',
      \ 'GoToDefinitionSplit': ['<C-W>]', '<C-W><C-]>'],
      \ 'FindReferences': 'gr',
      \ 'NextReference': '<C-n>',
      \ 'PreviousReference': '<C-p>',
      \ 'FindImplementations': 'gI',
      \ 'FindCodeActions': 'ga',
      \ 'Rename': 'gR',
      \ 'ShowHover': v:true,
      \ 'DocumentSymbol': 'go',
      \ 'WorkspaceSymbol': 'gS',
      \ 'SignatureHelp': 'gm',
      \}
" verbose-mode
let g:autoformat_verbosemode=1
noremap <leader>m :Autoformat<CR>



" InstantMarkDown
let g:instant_markdown_autostart = 0

"markdown - image
autocmd FileType markdown nmap <buffer><silent> <leader>p :call mdip#MarkdownClipboardImage()<CR>
" there are some defaults for image directory and image name, you can change them
" let g:mdip_imgdir = 'img'
" let g:mdip_imgname = 'image'

" vim- ranger
let g:ranger_map_keys = 0
map <leader>rn :Ranger<CR>

