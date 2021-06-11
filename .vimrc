call plug#begin('~/.vim/plugged')
  " Editor enhancements
  Plug 'matze/vim-move' " 5<A-k> will move the selection up by 5 lines
  Plug 'tpope/vim-unimpaired' " insert space ]<Space>, ]e: exchange line
  Plug 'szw/vim-maximizer'

  " colorscheme
  Plug 'morhetz/gruvbox'
  Plug 'sonph/onehalf', {'rtp': 'vim/'}
  " fuzzy finder
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  " tagbar
  Plug 'preservim/tagbar'

  " TODO:
  Plug 'kassio/neoterm' "Wraps REPLs to receive current file, line or selection
  Plug 'tpope/vim-commentary'
  Plug 'sbdchd/neoformat'

  Plug 'vimwiki/vimwiki'
  Plug 'heavenshell/vim-jsdoc', {
  \ 'for': ['javascript', 'javascript.jsx','typescript'],
  \ 'do': 'make install'
  \}
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'mhinz/neovim-remote'
  Plug 'dense-analysis/ale'
  Plug 'neomake/neomake' " Asynchronous linting and make framework for Neovim/Vim
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-repeat'

  Plug 'alaviss/nim.nvim'
  Plug 'preservim/nerdtree'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'ryanoasis/vim-devicons'
  Plug 'jiangmiao/auto-pairs'

  " Git-related
  Plug 'lewis6991/gitsigns.nvim'
  Plug 'tpope/vim-fugitive'
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
  Plug 'idbrii/vim-unityengine'

  " scss & css
  Plug 'cakebaker/scss-syntax.vim'
  Plug 'hail2u/vim-css3-syntax'
  Plug 'ap/vim-css-color'


  " latex
  Plug 'lervag/vimtex'

  " Snippets
  " Plug 'SirVer/ultisnips'
  Plug 'theniceboy/vim-snippets'
  Plug 'mbbill/undotree'

  " ruby
  Plug 'tpope/vim-endwise'
  " HTML, CSS, JavaScript, Typescript, PHP, JSON, etc.
  Plug 'elzr/vim-json'
  Plug 'neoclide/jsonc.vim'
  Plug 'othree/html5.vim'
  Plug 'alvan/vim-closetag'
  " Plug 'hail2u/vim-css3-syntax' " , { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
  " Plug 'spf13/PIV', { 'for' :['php', 'vim-plug'] }
  " Plug 'pangloss/vim-javascript', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
  Plug 'yuezk/vim-js', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
  " Plug 'MaxMEllon/vim-jsx-pretty', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
  " Plug 'jelera/vim-javascript-syntax', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
  "Plug 'jaxbot/browserlink.vim'
  Plug 'HerringtonDarkholme/yats.vim'
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

  Plug 'natebosch/vim-lsc'

  " Flutter
  Plug 'dart-lang/dart-vim-plugin'
  Plug 'natebosch/vim-lsc-dart'
  Plug 'natebosch/dartlang-snippets'

  " Swift
  Plug 'keith/swift.vim'
  Plug 'arzg/vim-swift'

  Plug 'easymotion/vim-easymotion'
  Plug 'svermeulen/vim-subversive'
  Plug 'theniceboy/argtextobj.vim'
  Plug 'rhysd/clever-f.vim'
  Plug 'AndrewRadev/splitjoin.vim'
  Plug 'theniceboy/pair-maker.vim'
  Plug 'theniceboy/vim-move'

  " Plug 'Yggdroot/indentLine'

  " Bookmarks
  Plug 'MattesGroeger/vim-bookmarks'

  " Other visual enhancement
  Plug 'luochen1990/rainbow'
  Plug 'mg979/vim-xtabline'
  Plug 'wincent/terminus'

" Other useful utilities
Plug 'lambdalisue/suda.vim' " do stuff like :sudowrite

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
noremap ; :

" Save & quit
noremap Q :q<CR>
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
set relativenumber

set nobackup
set nowb
set noswapfile
set hidden
set completeopt=menu,menuone,noselect " betterautocomplete options
set mouse=a " if I accidentally use the mouse
set splitright " splits to the right
set splitbelow " splits below
set expandtab " space characters instead of tab
set tabstop=2 " tab equals 2 spaces
set shiftwidth=2 " indentation
set number " show absolute line numbers
set ignorecase " search case insensitive
set smartcase " search via smartcase
set incsearch " search incremental
set hidden " allow hidden buffers
set nobackup " don't create backup files
set nowritebackup " don't create backup files
set cmdheight=1 " only one line for commands
set shortmess+=c " don't need to press enter so often
set signcolumn=yes " add a column for sings (e.g. LSP, ...)
set updatetime=520 " time until update
set undofile " persists undo tree
filetype plugin indent on " enable detection, plugins and indents
let mapleader = " " " space as leader key
let g:netrw_banner=0 " disable banner in netrw
let g:netrw_liststyle=3 " tree view in netrw
let g:markdown_fenced_languages = ['javascript', 'js=javascript', 'json=javascript'] " syntax highlighting in markdown
nnoremap <leader>v :e $MYVIMRC<CR>

" neoclide/coc.nvim
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
let g:coc_global_extensions=[
	\ 'coc-css',
	\ 'coc-diagnostic',
	\ 'coc-eslint',
	\ 'coc-explorer',
	\ 'coc-flutter-tools',
	\ 'coc-gitignore',
	\ 'coc-html',
	\ 'coc-import-cost',
	\ 'coc-jest',
	\ 'coc-json',
	\ 'coc-lists',
	\ 'coc-prettier',
	\ 'coc-prisma',
	\ 'coc-pyright',
	\ 'coc-python',
	\ 'coc-snippets',
	\ 'coc-sourcekit',
	\ 'coc-stylelint',
	\ 'coc-syntax',
	\ 'coc-sh',
  \ 'coc-omnisharp',
	\ 'coc-tailwindcss',
	\ 'coc-tasks',
	\ 'coc-translator',
	\ 'coc-tslint-plugin',
	\ 'coc-tsserver',
	\ 'coc-vetur',
	\ 'coc-vimlsp',
	\ 'coc-yaml',
	\ 'coc-yank',
	\ 'https://github.com/rodrigore/coc-tailwind-intellisense',
  \ 'coc-java' ,
  \ 'coc-go' ,
  \ 'coc-omnisharp' ,
  \ 'coc-markdownlint',
  \ 'coc-solargraph',
  \]
" Coc - Flutter
nnoremap <leader>rr :CocCommand flutter.run<cr>
nnoremap <leader>re :CocCommand flutter.emulators<cr>
nnoremap <leader>rh :CocCommand flutter.dev.hotreload<cr>
nnoremap <leader>rs :CocCommand flutter.dev.hotRestart<cr>
" TODO:
" nnoremap <leader>fs :CocCommand flutter.dev.screenshot<cr>

" Coc-flutter Actions (e.g., Wrap Widget)
nmap <silent><leader>ca <Plug>(coc-codelens-action)
vmap <silent><leader>a  <Plug>(coc-codeaction-selected)
nmap <silent><leader>a  <Plug>(coc-codeaction)

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <F2> <Plug>(coc-rename)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> ;<space>l  :<C-u>CocList diagnostics<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>p  :<C-u>CocList -I symbols<cr>

" szw/vim-maximizer
nnoremap <silent> <C-w>m :MaximizerToggle!<CR>

" kassio/neoterm
let g:neoterm_default_mod = 'vertical'
" let g:neoterm_size = 100
let g:neoterm_autoinsert = 1
let g:neoterm_autoscroll = 1
let g:neoterm_term_per_tab = 1
nnoremap <c-y> :Ttoggle<CR>
inoremap <c-y> <Esc>:Ttoggle<CR>
tnoremap <c-y> <c-\><c-n>:Ttoggle<CR>
nnoremap <leader>x :TREPLSendLine<CR>
vnoremap <leader>x :TREPLSendSelection<CR>
if has('nvim')
  au! TermOpen * tnoremap <buffer> <Esc> <c-\><c-n>
endif

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

" nnoremap <leader>dh :lua require'dap'.toggle_breakpoint()<CR>
" nnoremap <S-k> :lua require'dap'.step_out()<CR>
" nnoremap <S-l> :lua require'dap'.step_into()<CR>
" nnoremap <S-j> :lua require'dap'.step_over()<CR>
" nnoremap <leader>dn :lua require'dap'.continue()<CR>
" nnoremap <leader>dk :lua require'dap'.up()<CR>
" nnoremap <leader>dj :lua require'dap'.down()<CR>
" nnoremap <leader>d_ :lua require'dap'.run_last()<CR>
" nnoremap <leader>dr :lua require'dap'.repl.open({}, 'vsplit')<CR><C-w>l
" nnoremap <leader>di :lua require'dap.ui.variables'.hover(function () return vim.fn.expand("<cexpr>") end)<CR>
" vnoremap <leader>di :lua require'dap.ui.variables'.visual_hover()<CR>
" nnoremap <leader>d? :lua require'dap.ui.variables'.scopes()<CR>
" nnoremap <leader>de :lua require'dap'.set_exception_breakpoints({"all"})<CR>
" nnoremap <leader>da :lua require'debugHelper'.attach()<CR>

" dart-vim
let dart_format_on_save = 1
let dart_style_guide = 2

"vim-lsc
let g:lsc_auto_map = {'defaults': v:true, 'FindReferences': '', 'NextReference': '', 'PreviousReference': ''}
let g:lsc_reference_highlights = v:false
let g:lsc_enable_autocomplete = v:false " vim-lsc autocomplete (completeopt) conflicts with coc-vim autocomplete (completeopt)

"fzf.vim
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'border': 'sharp' } }
let g:fzf_tags_command = 'ctags -R'

let $FZF_DEFAULT_OPTS = '--inline-info'
let $FZF_DEFAULT_COMMAND = "rg --files --hidden --glob '!.git/**' --glob '!build/**' --glob '!.dart_tool/**' --glob '!.idea'"
nnoremap <leader>f :GFiles<cr>
nnoremap <leader>g :Rg<cr>

"vim-devicon
let g:WebDevIconsUnicodeDecorateFolderNodes = 1

"vim-move
let g:move_map_keys = 0
nmap <C-k> <Plug>MoveLineUp
nmap <C-j> <Plug>MoveLineDown
vmap <C-k> <Plug>MoveBlockUp
vmap <C-j> <Plug>MoveBlockDown
