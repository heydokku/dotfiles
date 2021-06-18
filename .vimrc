call plug#begin('~/.vim/plugged')

  " Editor enhancements
  Plug 'matze/vim-move' " 5<A-k> will move the selection up by 5 lines
  Plug 'tpope/vim-unimpaired' " insert space ]<Space>, ]e: exchange line
  Plug 'szw/vim-maximizer' " maximize the current buffer
  Plug 'wellle/targets.vim' " da, or da. delete inside commna object. TODO:
  Plug 'thosakwe/vim-flutter'
  Plug 'wincent/terminus'
  Plug 'ncm2/float-preview.nvim'
  Plug 'ervandew/supertab' " search in a folder, so nice
  Plug 'terryma/vim-multiple-cursors'
  Plug 'itchyny/lightline.vim'
  Plug 'maximbaz/lightline-ale'
  Plug 'liuchengxu/vim-which-key'
  Plug 'prabirshrestha/vim-lsp'
  Plug 'bfrg/vim-qf-diagnostics'
  Plug 'machakann/vim-highlightedyank'


  Plug 'morhetz/gruvbox'
  Plug 'itchyny/lightline.vim'
  Plug 'maximbaz/lightline-ale'

  " Search
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'Yggdroot/LeaderF', { 'do': './install.sh'}
  Plug 'easymotion/vim-easymotion'
  Plug 'rhysd/clever-f.vim'
  Plug 'theniceboy/vim-move'
  Plug 'haya14busa/incsearch.vim'

  " tagbar
  Plug 'preservim/tagbar'

  " TODO:
  Plug 'kassio/neoterm' "Wraps REPLs to receive current file, line or selection
  Plug 'tpope/vim-commentary'
  " Format & Linting
  Plug 'sbdchd/neoformat'
  Plug 'neomake/neomake' " Asynchronous linting and make framework for Neovim/Vim

  Plug 'vimwiki/vimwiki'
  Plug 'dense-analysis/ale'
  Plug 'heavenshell/vim-jsdoc', {
  \ 'for': ['javascript', 'javascript.jsx','typescript'],
  \ 'do': 'make install'
  \}
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-repeat'
  Plug 'alaviss/nim.nvim'
  Plug 'preservim/nerdtree'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'ryanoasis/vim-devicons'
  Plug 'jiangmiao/auto-pairs'

  " Git-related
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rhubarb'
  Plug 'airblade/vim-gitgutter'

  " Tmux
  Plug 'edkolev/tmuxline.vim'
  Plug 'christoomey/vim-tmux-navigator'

  " Testing
  Plug 'janko/vim-test'
  " Debug
" Plug 'puremourning/vimspector'

  " Csharp
  Plug 'OmniSharp/omnisharp-vim'

  " scss & css
  Plug 'cakebaker/scss-syntax.vim'
  Plug 'hail2u/vim-css3-syntax'
  Plug 'ap/vim-css-color'

  " latex
  Plug 'lervag/vimtex'

  " Snippets
  " Plug 'SirVer/ultisnips'
  " Plug 'theniceboy/vim-snippets'
  Plug 'mbbill/undotree'

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
  " Plug 'tpope/vim-endwise' " conflict with coc.nvim
  " HTML, CSS, JavaScript, Typescript, PHP, JSON, etc.
  Plug 'elzr/vim-json'
  Plug 'neoclide/jsonc.vim'
  Plug 'othree/html5.vim'
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

  " Flutter
  Plug 'dart-lang/dart-vim-plugin'
  Plug 'natebosch/vim-lsc'
  Plug 'natebosch/vim-lsc-dart'
  Plug 'natebosch/dartlang-snippets'

  " Swift
  Plug 'keith/swift.vim'
  Plug 'arzg/vim-swift'


  " Plug 'Yggdroot/indentLine'

  " Bookmarks
  Plug 'MattesGroeger/vim-bookmarks'

  " Other visual enhancement
  Plug 'luochen1990/rainbow'
  Plug 'mg979/vim-xtabline' " Tabline customization with buffer filtering

call plug#end()

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup THE_PRIMEAGEN
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END

colorscheme gruvbox
set background=dark

" colorscheme onehalfdark
" default options

" lightline
let g:lightline = {'colorscheme': 'powerline'}
let g:lightline.component_function = {'gitbranch':'FugitiveHead'}
let g:lightline.active = {
  \'right': [
    \['linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos', 'linter_ok'],
    \['lineinfo'], ['percent'],['fileencodings','filetype']],
  \'left': [['mode','paste'],['gitbranch', 'readonly', 'filename', 'modified']],
\}
let g:lightline.component_expand = {
  \  'linter_checking': 'lightline#ale#checking',
  \  'linter_infos': 'lightline#ale#infos',
  \  'linter_warnings': 'lightline#ale#warnings',
  \  'linter_errors': 'lightline#ale#errors',
  \  'linter_ok': 'lightline#ale#ok',
  \ }
let g:lightline.component_type = {
  \  'linter_checking': 'right',
  \  'linter_infos': 'right',
  \  'linter_warnings': 'warning',
  \  'linter_errors': 'error',
  \  'linter_ok': 'right',
  \ }
let g:lightline#ale#indicator_checking = "\uf110"
let g:lightline#ale#indicator_infos = "\uf129"
let g:lightline#ale#indicator_warnings = "\uf071"
let g:lightline#ale#indicator_errors = "\uf05e"
let g:lightline#ale#indicator_ok = "\uf00c"
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

" code folding
set foldmethod=syntax
set foldlevelstart=99
set foldnestmax=10
set foldlevel=1
set noshowmode
set nobackup
set nowb
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
let mapleader = " " " space as leader key
let g:netrw_banner=0 " disable banner in netrw
let g:netrw_liststyle=3 " tree view in netrw
let g:markdown_fenced_languages = ['javascript', 'js=javascript', 'json=javascript'] " syntax highlighting in markdown
nnoremap <leader>v :e $MYVIMRC<CR>

" szw/vim-maximizer
nnoremap <silent> <leader>m :MaximizerToggle!<CR>

" preservim/nerdtree
nnoremap <leader>n :NERDTreeFind<CR>
nnoremap <leader>e :NERDTreeToggle<CR>
" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif


" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

" sbdchd/neoformat
nnoremap <leader>F :Neoformat prettier<CR>

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
 " fun! GotoWindow(id)
 "   :call win_gotoid(a:id)
 " endfun
 " func! AddToWatch()
 "   let word = expand("<cexpr>")
 "   call vimspector#AddWatch(word)
 " endfunction
 " let g:vimspector_base_dir = expand('$HOME/.config/vimspector-config')
 " let g:vimspector_sidebar_width = 60
 " nnoremap <leader>da :call vimspector#Launch()<CR>
 " nnoremap <leader>dc :call GotoWindow(g:vimspector_session_windows.code)<CR>
 " nnoremap <leader>dv :call GotoWindow(g:vimspector_session_windows.variables)<CR>
 " nnoremap <leader>dw :call GotoWindow(g:vimspector_session_windows.watches)<CR>
 " nnoremap <leader>ds :call GotoWindow(g:vimspector_session_windows.stack_trace)<CR>
 " nnoremap <leader>do :call GotoWindow(g:vimspector_session_windows.output)<CR>
 " nnoremap <leader>di :call AddToWatch()<CR>
 " nnoremap <leader>dx :call vimspector#Reset()<CR>
 " nnoremap <leader>dX :call vimspector#ClearBreakpoints()<CR>
 " nnoremap <S-k> :call vimspector#StepOut()<CR>
 " nnoremap <S-l> :call vimspector#StepInto()<CR>
 " nnoremap <S-j> :call vimspector#StepOver()<CR>
 " nnoremap <leader>d_ :call vimspector#Restart()<CR>
 " nnoremap <leader>dn :call vimspector#Continue()<CR>
 " nnoremap <leader>drc :call vimspector#RunToCursor()<CR>
 " nnoremap <leader>dh :call vimspector#ToggleBreakpoint()<CR>
 " nnoremap <leader>de :call vimspector#ToggleConditionalBreakpoint()<CR>
 " let g:vimspector_sign_priority = {
 "   \    'vimspectorBP':         998,
 "   \    'vimspectorBPCond':     997,
 "   \    'vimspectorBPDisabled': 996,
 "   \    'vimspectorPC':         999,
 "   \ }

" " janko/vim-test and puremourning/vimspector
" nnoremap <leader>dd :TestNearest -strategy=jest<CR>
" function! JestStrategy(cmd)
 "  let testName = matchlist(a:cmd, '\v -t ''(.*)''')[1]
 "  call vimspector#LaunchWithSettings( #{ configuration: 'jest', TestName: testName } )
" endfunction
" let g:test#custom_strategies = {'jest': function('JestStrategy')}

" CDS
augroup MyCDSCode
    autocmd!
    autocmd BufReadPre,FileReadPre *.cds set ft=cds
augroup END

" vimwiki/vimwiki
nnoremap <Leader>tl <Plug>VimwikiToggleListItem
vnoremap <Leader>tl <Plug>VimwikiToggleListItem
nnoremap <Leader>wn <Plug>VimwikiNextLink
let g:vimwiki_global_ext = 0
let wiki = {}
let wiki.nested_syntaxes = { 'js': 'javascript' }
let g:vimwiki_list = [wiki]

" dart-vim
let dart_format_on_save = 1
let dart_style_guide = 2

"vim-lsc
let g:lsc_auto_map = {'defaults': v:true, 'FindReferences': '', 'NextReference': '', 'PreviousReference': ''}
let g:lsc_reference_highlights = v:false
let g:lsc_enable_autocomplete = v:false


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
nnoremap <leader>c :Maps<cr>

"vim-devicon
let g:WebDevIconsUnicodeDecorateFolderNodes = 1

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
nmap mz <Plug>BookmarkShowAll
let g:bookmark_sign = '>>'
let g:bookmark_save_per_working_dir = 1
let g:bookmark_highlight_lines = 1

" .vimrc source automatically

" ALE
let g:ale_hover_to_preview = 1
let g:ale_set_quickfix = 1
let g:ale_open_list = 0
" let g:ale_linters = {
" \ 'python':['pylint'],
" \ 'javascript':['eslint'],
" \ 'typescript':['eslint', 'tsserver'],
" \ 'java':[],
" \ 'go': ['gofmt', 'golint', 'go vet'],
" \ }
" let g:ale_fixers = {
" \ '*': ['remove_trailing_lines', 'trim_whitespace'],
" \ 'python': ['yapf'],
" \ 'go': ['gofmt'],
" \ 'javascript':['eslint'],
" \ 'typescript':['eslint'],
" \ 'markdown':['remark-lint'],
" \ }
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%code%] %s [%severity%]'
let g:ale_lint_on_enter = 1
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 0
nmap <silent> <space>j <Plug>(ale_next_wrap)
nmap <silent> <space>k <Plug>(ale_previous_wrap)

"vim-lsp
" TODO: can not display the float preview
let g:lsp_diagnostics_float_cursor = 1
let g:lsp_diagnostics_float_delay = 500

" lightline
if !has('gui_running')
  set t_Co=256
endif

"
" nmap ge <plug>(qf-diagnostics-popup-quickfix)
nmap ge <plug>(qf-diagnostics-popup-loclist)

" vim-easymotion
map  <Leader>s <Plug>(easymotion-bd-f)
nmap <Leader>s <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)
" incsearch
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
