call plug#begin('~/.vim/plugged')

" Search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'pechorin/any-jump.vim' " best find refererences plugin <leader>j <leader>ab to go back
Plug 'tpope/vim-abolish' " TODO
Plug 'easymotion/vim-easymotion' " <leader>s: search one character
Plug 'rhysd/clever-f.vim'
Plug 'haya14busa/incsearch.vim'
Plug 'alaviss/nim.nvim'

" Git-related
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb' " GBrowser: to open file on Github
Plug 'airblade/vim-gitgutter'
Plug 'jaxbot/github-issues.vim' "TODO: search github issues NICE

" Editor enhancements
Plug 'Konfekt/FastFold' "updating folds only when called-for.
Plug 'AndrewRadev/switch.vim' "TODO switch to true to false and reverse
Plug 'jceb/vim-orgmode' "TODO
Plug 'kkoomen/vim-doge', { 'do': { -> doge#install() } } " TODO search docs
Plug 'MattesGroeger/vim-bookmarks'
Plug 'matze/vim-move' " 5<C-k> will move the selection up by 5 lines
Plug 'tpope/vim-unimpaired' " insert space ]<Space>, ]e: exchange line
Plug 'szw/vim-maximizer' " maximize the current buffer. <F3>
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim' " used with Goyo
Plug 'wellle/targets.vim' " da, or da. delete inside commna object. TODO:
Plug 'wincent/terminus' " enhance the terminal with pastemode, change cursor shape from when switch from normal mode to insert mode
Plug 'ervandew/supertab' " autocompletion with tab
Plug 'itchyny/lightline.vim' " light weight status bar
Plug 'bfrg/vim-qf-diagnostics' " <leader>e to show the error in preview window
Plug 'machakann/vim-highlightedyank'
Plug 'christoomey/vim-system-copy' " use cp to copy to system, cv to paste
Plug 'tomtom/tcomment_vim' " <leader>cc to toggle comment
Plug 'machakann/vim-sandwich' " saw* better than vim-surround
Plug 'tpope/vim-repeat'
Plug 'preservim/tagbar'
Plug 'tpope/vim-sleuth' " automatically expandtab, indent
Plug 'vimwiki/vimwiki'
Plug 'jiangmiao/auto-pairs'
Plug 'Raimondi/delimitMate' " provides insert mode auto-completion for quotes, parens, brackets, etc
Plug 'andymass/vim-matchup'
Plug 'mbbill/undotree'
Plug 'luochen1990/rainbow'
Plug 'mhinz/vim-startify'
Plug 'mg979/vim-xtabline' " Tabline customization with buffer filtering
Plug 'AndrewRadev/splitjoin.vim' " No support for Dart, Swift
Plug 'mhinz/vim-signify' " initial screen for vim
Plug 'terryma/vim-expand-region' " use = to expand the region
Plug 'wesQ3/vim-windowswap' " Swap your windows without ruining your layout
Plug 'chrisbra/NrrwRgn' " focus on a selected region while making the rest inaccessible <leader>nr
Plug 'thinca/vim-quickrun' " run a blocl of command
Plug 'dyng/ctrlsf.vim' " search asynchronously, display the result windows vertically
Plug 'jez/vim-superman' " open man page with vi
Plug 'AndrewRadev/sideways.vim' " move function arguments lef

" Directroy viewer
Plug 'preservim/nerdtree'
Plug 'Shougo/defx.nvim'" Powerful file explorer implemented
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Tmux
Plug 'christoomey/vim-tmux-navigator'

" Go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" elixir
Plug 'elixir-editors/vim-elixir'
Plug 'mhinz/vim-mix-format'

"Java
Plug 'ervandew/eclim' "bring Eclipse functionality to the Vim editor

" Flutter
Plug 'thosakwe/vim-flutter'
Plug 'tfnico/vim-gradle'

" Swift
Plug 'keith/swift.vim'
Plug 'arzg/vim-swift'

" vim
Plug 'tpope/vim-scriptease'
Plug 'junegunn/vader.vim' " test framework for vim
Plug 'thinca/vim-themis' " test vim

" UI, theme
Plug 'morhetz/gruvbox'
Plug 'andreasvc/vim-256noir'
Plug 'owickstrom/vim-colors-paramount'
Plug 'whatyouhide/vim-gotham'

" Testing
Plug 'janko/vim-test'

" Debug
" Plug 'puremourning/vimspector'

" Terminal-related
Plug 'kassio/neoterm' " open REPL in the same file.
" can use with vim-fugitive
Plug 'skywind3000/asyncrun.vim' " run asynchronously, do something while do something for c, python
Plug 'tpope/vim-dispatch' " 2.4k stars run tests asynchronously for *ruby*, python, c

" Csharp
Plug 'OmniSharp/omnisharp-vim'

" lsp
" Plug 'SirVer/ultisnips' " 6.3k stars
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings' " https://github.com/mattn/vim-lsp-settings#supported-languages :LspInstallServer server_name
Plug 'rhysd/vim-lsp-ale'

" Linting and Format
Plug 'dense-analysis/ale'

" scss & css
Plug 'cakebaker/scss-syntax.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'ap/vim-css-color'

" Markdown
Plug 'plasticboy/vim-markdown'
Plug 'vim-pandoc/vim-pandoc' "integrate Vim with the pandoc document converter
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'Scuilion/markdown-drawer' "TODO: navigation in large markdown file
Plug 'godlygeek/tabular'
Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'} " InstantMarkDown

" latex, pdf
Plug 'lervag/vimtex'

" python
Plug 'python-mode/python-mode' " 5.4k stars"

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
Plug 'HerringtonDarkholme/yats.vim' "most advanced TypeScript Syntax Highlighting in Vim
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
" colorscheme gruvbox
colorscheme gotham256

" TODO: hoac dung o ngoai bash chen vao trong .vimrc nay cung duoc
set background=dark
" set background=light

" Save & quit
noremap Q :q<CR>
" default options
noremap ; :
" close all windows
nnoremap <leader>Q :qa!<cr>
noremap <C-q> :qa<CR>
noremap S :w<CR>
" make Y to copy till the end of the line
nnoremap Y y$

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
" fold by languages syntax such as python, go.. recommend
set foldmethod=syntax
" fold by indent
" set foldmethod=indent
" fold by manual(default), type za, zf
" set foldmethod=manual
set nofoldenable " files will not be foled when open
set foldlevelstart=99
set foldnestmax=10
set foldlevel=2
" toggle folding
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf

set noshowmode
set nowb
set nobackup " don't create backup files
set nocompatible
set noswapfile
set noundofile
set number " show line number
set hidden
set mouse=a " if I accidentally use the mouse
set expandtab " space characters instead of tab
set tabstop=2 " tab equals 2 spaces
set shiftwidth=2 " indentation

set ignorecase " search case insensitive
set smartcase " search via smartcase
set hidden " allow hidden buffers
set signcolumn=yes " add a column for sings (e.g. LSP, ...)
set updatetime=520 " time until update
set undofile " persists undo tree
set laststatus=2
filetype off
filetype plugin on " enable detection, plugins and indents
syntax on
let mapleader = " " " space as leader key
let g:netrw_banner=0 " disable banner in netrw
let g:netrw_liststyle=3 " tree view in netrw
let g:markdown_fenced_languages = ['javascript', 'js=javascript', 'json=javascript'] " syntax highlighting in markdown

nnoremap <leader>v :e $MYVIMRC<CR> "view quickly command
nmap <Leader>rl :source $MYVIMRC

" preservim/nerdtree
" Most used keyboard
" C........Change the tree root to the selected directory.............|NERDTree-C|
" U........Same as 'u' except the old root node is left open..........|NERDTree-U|
" I........Toggle whether hidden files displayed......................|NERDTree-I|
nnoremap <leader>n :NERDTreeFind<CR>
nnoremap <leader>b :NERDTreeToggle<CR>
" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
      \ quit | endif

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
      \ quit | endif

" janko/vim-test
nnoremap <silent> tt :TestNearest<CR>
nnoremap <silent> tf :TestFile<CR>
nnoremap <silent> ts :TestSuite<CR>
nnoremap <silent> t_ :TestLast<CR>

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
nnoremap <leader>cc :TComment<cr>
nnoremap <leader>T :TagbarToggle<CR>

"vim-move
let g:move_map_keys = 0
vmap <C-k> <Plug>MoveBlockUp
vmap <C-j> <Plug>MoveBlockDown
vmap <C-h> <Plug>MoveBlockLeft
vmap <C-l> <Plug>MoveBlockLeft

" airblade/vim-gitgutter
nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)
nmap <leader>gs <Plug>(GitGutterStageHunk)
nmap <leader>gu <Plug>(GitGutterUndoHunk)
nmap <leader>gp <Plug>(GitGutterPreviewHunk)
let g:gitgutter_show_msg_on_hunk_jumping = 0

"thosakwe/vim-flutter
nnoremap <leader>rl :FlutterHotReload<cr>
nnoremap <leader>rs :FlutterHotRestart<cr>
nnoremap <leader>re :FlutterEmulators<cr>
nnoremap <leader>rr :FlutterRun<cr>
nnoremap <leader>rq :FlutterQuit<cr>

" vim-bookmark
let g:bookmark_save_per_working_dir = 1
let g:bookmark_highlight_lines = 1
let g:bookmark_no_default_key_mappings = 1
let g:bookmark_center = 1

nmap <Leader>ai <Plug>BookmarkAnnotate
nmap <Leader>aa <Plug>BookmarkToggle
nmap <leader>as <Plug>BookmarkShowAll
nmap <Leader>aj <Plug>BookmarkNext
nmap <Leader>ak <Plug>BookmarkPrev
nmap <Leader>ac <Plug>BookmarkClear
nmap <Leader>ax <Plug>BookmarkClearAll
nmap <Leader>ag <Plug>BookmarkMoveToLine

nmap <leader>re <plug>(qf-diagnostics-popup-quickfix)
nmap ge <plug>(qf-diagnostics-popup-loclist)


" vim-easymotion
map  <Leader>s <Plug>(easymotion-bd-f)
nmap <Leader>s <Plug>(easymotion-overwin-f)

" incsearch
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
" search with cursor still at the current position
map g/ <Plug>(incsearch-stay)

" .vimrc source automatically
" snippet, autocompletion is away from me,
" coc.nvim, neomake, neoformat, or something like that
"

" InstantMarkDown
let g:instant_markdown_autostart = 0

" Goyo - distraction free
nnoremap <leader>z :Goyo<cr>
let g:goyo_width = 100
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!



" expand region
map = <Plug>(expand_region_expand)

" AnyJump
" <leader>j

" vim-lsp
" TODO: disable find definition. no supporting definition preview with dart.
nnoremap gd :LspPeekDefinition<cr>
nnoremap gD :LspDefinition<cr>
nnoremap <leader>q :LspPreviousError<cr>
nnoremap <leader>e :LspNextError<cr>
nnoremap gr :LspRename<cr>
nnoremap <leader>rf :LspDocumentFormat<cr>
nnoremap K :LspHover<cr>
nnoremap go :LspDocumentSymbol<cr>
nnoremap ga :LspCodeAction<cr>

" ALE
let g:ale_disable_lsp = 1
" let g:ale_hover_to_preview = 1
let g:ale_fix_on_save = 1
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\}

" lightline
if !has('gui_running')
  set t_Co=256
endif

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

" neoterm
" filetype plugin on " is set above
" set nocompatible
" filetype off
nnoremap <F5> :Ttoggle<cr>
" TODO: map with <t> or <leader>t
" switch between vim and terminal is ctrl + ww
let g:neoterm_default_mod = 'botright'

let &runtimepath.=',~/.vim/bundle/neoterm'
