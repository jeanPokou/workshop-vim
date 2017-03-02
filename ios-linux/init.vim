" Load plugins file
source ~/.config/nvim/plugins.vim

"========================== Section General=============================================

" Abbreviations  Error
abbr funciton function
abbr teh the
abbr tempalte template
abbr fitler filter
abbr fucntion function

set nocompatible            " not compatible with vi
set autoread                " detect when a file is changed

set history=1000            " change history to 1000
set textwidth=120


set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp


" Section User Interface
syntax on                    " switch syntax highlighting on

set t_Co=256                " Explicitly tell vim that the terminal supports 256 colors"
colorscheme dracula         " Set the colorscheme


" make the highlighting of tabs and other non-text less annoying
 highlight SpecialKey ctermbg=none ctermfg=8
 highlight NonText ctermbg=none ctermfg=8

" make comments and HTML attributes italic
highlight Comment cterm=italic
highlight htmlArg cterm=italic

set number                  " show line numbers
set relativenumber          " show relative line numbers

set wrap                    " turn on line wrapping
set wrapmargin=8            " wrap lines when coming within n characters from side
set linebreak               " set soft wrapping
set showbreak=…             " show ellipsis at breaking

set autoindent              " automatically set indent of new line
set smartindent

" toggle invisible characters
set list
" symbols for list chars
set listchars=tab:→\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set showbreak=↪

" highlight conflicts
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" make backspace behave in a sane manner
set backspace=indent,eol,start

" Tab control
set noexpandtab             " insert tabs rather than spaces for <Tab>
set smarttab                " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=4               " the visible width of tabs
set softtabstop=4           " edit as if the tabs are 4 characters wide
set shiftwidth=4            " number of spaces to use for indent and unindent
set shiftround              " round indent to a multiple of 'shiftwidth'
set completeopt+=longest

" code folding settings
set foldmethod=syntax       " fold based on indent
set foldnestmax=10          " deepest fold is 10 levels
set nofoldenable            " don't fold by default
set foldlevel=1

set clipboard=unnamed       "accessing the system clipboard in vim

set ttyfast                 " faster redrawing
set diffopt+=vertical
set laststatus=2            " show the satus line all the time
set so=7                    " set 7 lines to the cursors - when moving vertical
set wildmenu                " enhanced command line completion
set hidden                  " current buffer can be put into background
set showcmd                 " show incomplete commands
set noshowmode              " don't show which mode disabled for PowerLine
set wildmode=list:longest   " complete files like a shell
set scrolloff=3             " lines of text around cursor
set shell=$SHELL
set cmdheight=1             " command bar height
set title                   " set terminal title

" Searching
set ignorecase              " case insensitive searching
set smartcase               " case-sensitive if expresson contains a capital letter
set hlsearch                " highlight search results
set incsearch               " set incremental search, like modern browsers
set nolazyredraw            " don't redraw while executing macros

set magic                   " Set magic on, for regex

set showmatch               " show matching braces
set mat=2                   " how many tenths of a second to blink

" error bells
set noerrorbells
set visualbell
set t_vb=
set tm=500

if has('mouse')
	set mouse=a
	" set ttymouse=xterm2
endif

" load indent settings for specific files
filetype plugin indent on
set cursorline

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>

" Remap left,right,up down
nnoremap <Left> <nop>
nnoremap <Right> <nop>
nnoremap <Up> <nop>
nnoremap <Down> <nop>


"====================================   UtilsSnip  =============================
"let g:UltiSnipsSnippetsDir = "~/.config/nvim/snippets"
"let g:UltiSnipsSnippetDirectories=["UltiSnips", "snips"]
"let g:UltiSnipsEditSplit= "context"
let g:SuperTabDefaultCompletionType    = '<C-n>'
let g:SuperTabCrMapping                = 0
let g:UltiSnipsExpandTrigger           = '<tab>'
let g:UltiSnipsJumpForwardTrigger      = '<tab>'
let g:UltiSnipsJumpBackwardTrigger     = '<s-tab>'
let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']
"===============================================================================


"============================= GitGutter configs ==============================
let g:gitgutter_max_signs = 1000
"================================================================================
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

" Remap Key for Emmet html
let g:user_emmet_leader_key='<C-Z>'
"========================== vim-airline========================================
let g:airline#extensions#tabline#enable = 1
set hidden
let g:airline#extension#tabline#fnamedmode = ':t'
let g:airline#extensions#tabline#enabled = 1

let g:airline_powerline_fonts=1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_symbols.readonly ='R'

set guifont=Operator\ Mono\ Light\ Italic\ Nerd\ Font

let g:airline_right_alt_sep = ''
let g:airline_symbols.readonly =emoji#for('eyeglasses')
set hidden
nmap <leader>t :term<cr>
nmap <leader>n :bnext<CR>
nmap <leader>. :bprevious<CR>
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
let g:airline_theme="term"

"========================== Indent Guides ==================================
 let g:indent_guides_auto_colors = 0


"========================== Js Beautify ==============================={{
autocmd FileType javascript noremap <buffer>  <c-b> :call JsBeautify()<cr>
" for json
autocmd FileType json noremap <buffer> <c-b> :call JsonBeautify()<cr>
" for jsx
autocmd FileType jsx noremap <buffer> <c-b> :call JsxBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-b> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-b> :call CSSBeautify()<cr>
"======================================================================"}}
"
"
"
"========================== Section Mapping ===============================


" set a map leader for more key combos
let mapleader = ','

" remap esc
inoremap jk <esc>

" wipout buffer
nmap <silent> <leader>b :bw<cr>

" shortcut to save
nmap <leader>, :w<cr>

" set paste toggle
set pastetoggle=<leader>v

" edit ~/.config/nvim/init.vim
map <leader>ev :e! ~/.config/nvim/init.vim<cr>
" edit ~/.config/nvim/plugins.vim
map <leader>ep :e! ~/.config/nvim/plugins.vim<cr>
" edit gitconfig
map <leader>eg :e! ~/.gitconfig<cr>

" clear highlighted search
noremap <space> :set hlsearch! hlsearch?<cr>

" activate spell-checking alternatives
nmap ;s :set invspell spelllang=en<cr>

" markdown to html
nmap <leader>md :%!markdown --html4tags <cr>

" remove extra whitespace
nmap <leader><space> :%s/\s\+$<cr>

nmap <leader>l :set list!<cr>

" enable . command in visual mode
vnoremap . :normal .<cr>

map <silent> <C-h> :call functions#WinMove('h')<cr>
map <silent> <C-j> :call functions#WinMove('j')<cr>
map <silent> <C-k> :call functions#WinMove('k')<cr>
map <silent> <C-l> :call functions#WinMove('l')<cr>

map <leader>wc :wincmd q<cr>

" toggle cursor line
nnoremap <leader>i :set cursorline!<cr>

" scroll the viewport faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" moving up and down work as you would expect
nnoremap <silent> j gj
nnoremap <silent> k gk
nnoremap <silent> ^ g^
nnoremap <silent> $ g$

" search for word under the cursor
nnoremap <leader>/ "fyiw :/<c-r>f<cr>

" inoremap <tab> <c-r>=Smart_TabComplete()<CR>

map <leader>r :call RunCustomCommand()<cr>
" map <leader>s :call SetCustomCommand()<cr>
let g:silent_custom_command = 0

" helpers for dealing with other people's code
nmap \t :set ts=4 sts=4 sw=4 noet<cr>
nmap \s :set ts=4 sts=4 sw=4 et<cr>

nmap <leader>w :setf textile<cr> :Goyo<cr>

nnoremap <silent> <leader>u :call functions#HtmlUnEscape()<cr>


" Section AutoGroups {{{
" file type specific settings
augroup configgroup
    autocmd!

    " automatically resize panes on resize
    autocmd VimResized * exe 'normal! \<c-w>='
    autocmd BufWritePost .vimrc,.vimrc.local,init.vim source %
    autocmd BufWritePost .vimrc.local source %
    " save all files on focus lost, ignoring warnings about untitled buffers
    autocmd FocusLost * silent! wa

    " make quickfix windows take all the lower section of the screen
    " when there are multiple windows open
    autocmd FileType qf wincmd J

    autocmd BufNewFile,BufReadPost *.md set filetype=markdown
    let g:markdown_fenced_languages = ['css', 'javascript', 'js=javascript', 'json=javascript', 'stylus', 'html']

    " autocmd! BufEnter * call functions#ApplyLocalSettings(expand('<afile>:p:h'))

    autocmd BufNewFile,BufRead,BufWrite *.md syntax match Comment /\%^---\_.\{-}---$/

    autocmd! BufWritePost * Neomake
augroup END

" }}}

" Section Plugins {{{

" FZF
"""""""""""""""""""""""""""""""""""""

let g:fzf_layout = { 'down': '~25%' }

if isdirectory(".git")
    " if in a git project, use :GFiles
    " nmap <silent> <leader>t :GFiles<cr>
	nmap <silent> <C-p> :GFiles<cr>
else
    " otherwise, use :FZF
    " nmap <silent> <leader>t :FZF<cr>
    nmap <silent> <C-p> :FZF<cr>
endif

nmap <silent> <leader>r :Buffers<cr>
nmap <silent> <leader>e :FZF<cr>
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)



nnoremap <silent> <Leader>C :call fzf#run({
\   'source':
\     map(split(globpath(&rtp, "colors/*.vim"), "\n"),
\         "substitute(fnamemodify(v:val, ':t'), '\\..\\{-}$', '', '')"),
\   'sink':    'colo',
\   'options': '+m',
\   'left':    30
\ })<CR>

command! FZFMru call fzf#run({
\  'source':  v:oldfiles,
\  'sink':    'e',
\  'options': '-m -x +s',
\  'down':    '40%'})



"Adding deoplete on startup
"let g:deoplete#enable_at_startup = 1

" Fugitive Shortcuts
"""""""""""""""""""""""""""""""""""""
nmap <silent> <leader>gs :Gstatus<cr>
nmap <leader>ge :Gedit<cr>
nmap <silent><leader>gr :Gread<cr>
nmap <silent><leader>gb :Gblame<cr>

nmap <leader>m :MarkedOpen!<cr>
nmap <leader>mq :MarkedQuit<cr>
nmap <leader>* *<c-o>:%s///gn<cr>

"Toggle relative numbering, and set to absolute on loss of focus or insert mode
set rnu
function! ToggleNumbersOn()
    set nu!
    set rnu
endfunction
function! ToggleRelativeOn()
    set rnu!
    set nu
endfunction
autocmd FocusLost * call ToggleRelativeOn()
autocmd FocusGained * call ToggleRelativeOn()
autocmd InsertEnter * call ToggleRelativeOn()
autocmd InsertLeave * call ToggleRelativeOn()


"=======================Configuration for NERDTree============{{
"
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction
"
call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#141e23')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#141e23')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#141e23')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#141e23')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#141e23')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#141e23')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#141e23')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#141e23')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#141e23')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#141e23')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#141e23')
call NERDTreeHighlightFile('js', 'yellow', 'none', '#f0da50', '#141e23')
call NERDTreeHighlightFile('ts', 'Blue', 'none', '#6699cc', '#141e23')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#141e23')
call NERDTreeHighlightFile('ds_store', 'Gray', 'none', '#686868', '#141e23')
call NERDTreeHighlightFile('gitconfig', 'Gray', 'none', '#686868', '#141e23')
call NERDTreeHighlightFile('gitignore', 'Gray', 'none', '#686868', '#141e23')
call NERDTreeHighlightFile('bashrc', 'Gray', 'none', '#686868', '#141e23')
call NERDTreeHighlightFile('bashprofile', 'Gray', 'none', '#686868', '#141e23')
"Toogle NERDTree
nmap <silent> <leader>j :NERDTreeToggle<cr>
"Expand to the path of the file in the current buffer
nmap <silent> <leader>k :NERDTreeFind<cr>
"Start NERDTree om startup of nvim or vim
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"============================================================}}
"==================== Remember cursor position between vim sessions ====================
  autocmd BufReadPost *
              \ if line("'\"") > 0 && line ("'\"") <= line("$") |
              \   exe "normal! g'\"" |
              \ endif
              " center buffer around cursor when opening files
"====================================Neomake =========================={{
let g:neomake_error_sign = {'text': emoji#for('dizzy'), 'texthl':'' }
	let g:neomake_warning_sign = {'text': emoji#for('boom'),'texthl': ''}
	let g:neomake_javascript_jshint_maker = {
		\ 'args': ['--verbose'],
		\ 'errorformat': '%A%f: line %l\, col %v\, %m \(%t%*\d\)',
	\ }
	let g:neomake_typescript_tsc_maker = {
		\ 'args': ['-m', 'commonjs', '--noEmit' ],
		\ 'append_file': 0,
		\ 'errorformat':
			\ '%E%f %#(%l\,%c): error %m,' .
			\ '%E%f %#(%l\,%c): %m,' .
			\ '%Eerror %m,' .
			\ '%C%\s%\+%m'
	\ }
	autocmd! BufWritePost * Neomake
	autocmd BufEnter * Neomake
	autocmd InsertChange,TextChanged * update | Neomake
	set undodir=~/.config/nvim/undodir
	set undofile

	let g:neomake_cpp_enable_makers=['clang']
	let g:neomake_cpp_clang_args = ["-std=c++14", "-Wextra", "-Wall", "-fsanitize=undefined","-g"]
	nmap <Leader><Space>o :lopen<CR>      " open location window
	nmap <Leader><Space>c :lclose<CR>     " close location window
	nmap <Leader><Space>, :ll<CR>         " go to current error/warning
	nmap <Leader><Space>n :lnext<CR>      " next error/warning
	nmap <Leader><Space>p :lprev<CR>      " previous error/warning

	"==================================================================}}
	" " map v to expand region plugin
	vmap v <Plug>(expand_region_expand)<CR>

	" " map <S-v> to shrink region plugin
	vmap <S-v> <Plug>(expand_region_shrink)<CR>

	" " return to select mode on last <S-v>
	let g:expand_region_use_select_mode = 1

	" don't hide quotes in json files
	let g:vim_json_syntax_conceal = 0


	let g:SuperTabCrMapping = 0


" ===============================tagbar for goctags ===============
let g:tagbar_type_go = {
			\ 'ctagstype' : 'go',
			\ 'kinds'     : [
			\ 'p:package',
			\ 'i:imports:1',
			\ 'c:constants',
			\ 'v:variables',
			\ 't:types',
			\ 'n:interfaces',
			\ 'w:fields',
			\ 'e:embedded',
			\ 'm:methods',
			\ 'r:constructor',
			\ 'f:functions'
		\ ],
		\ 'sro' : '.',
		\ 'kind2scope' : {
			\ 't' : 'ctype',
			\ 'n' : 'ntype'
		\ },
		\ 'scope2kind' : {
			\ 'ctype' : 't',
			\ 'ntype' : 'n'
		\ },
		\ 'ctagsbin'  : 'gotags',
		\ 'ctagsargs' : '-sort -silent'
	\ }

  nmap <silent> <leader>t :Tagbar<CR>

"================================== vim-go ==============================

au FileType go nmap <leader>r <Plug>(go-run)
" au FileType go nmap <leader>b <Plug>(go-build)
" au FileType go nmap <leader>gt <Plug>(go-test)
au FileType go nmap <leader>gc <Plug>(go-coverage)

" open godoc , gv for vertical
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)

let g:yankring_clipboard_monitor=0


" clear last search
map <silent> <leader>cs <Esc>:noh<CR>
" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

command! License call InsertLicense('licenseFile')


" Ctrl-l,h,n to navigate between tabs
map  gt :tabNext<CR>
map  gT :tabprevious<CR>
map  <C-n> :tabnew<CR>



map <Leader> <Plug>(easymotion-prefix)

" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <space><space> <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

let g:python2_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

"Youcompleteme fix
 let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

" let g:ycm_confirm_extra_conf    = 0
" let g:ycm_complete_in_comments  = 1
" let g:ycm_extra_conf_vim_data   = ['&filetype']
" let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_show_diagnostics_ui = 0


command! -nargs=+ Cppman silent! call system("tmux split-window -h cppman " . expand(<q-args>))
" command! -nargs=+ Cppman silent! call system("cppman " . expand(<q-args>))
autocmd FileType cpp nnoremap <silent><buffer> K <Esc>: Cppman <cword><CR>

vmap  <expr>  <leader>h   DVB_Drag('left')
vmap  <expr>  <leader>l    DVB_Drag('right')
vmap  <expr>  <leader>j     DVB_Drag('down')
vmap  <expr>  <leader>k      DVB_Drag('up')
vmap  <expr>  D        DVB_Duplicate()

map <C-h> :call functions#WinMove('h')<cr>
map <C-j> :call functions#WinMove('j')<cr>
map <C-k> :call functions#WinMove('k')<cr>
map <C-l> :call functions#WinMove('l')<cr>


let g:DVB_TrimWS = 1


function! WinMove(key)
  let t:curwin = winnr()
  exec "wincmd ".a:key
  if (t:curwin == winnr()) "we havent moved
    if (match(a:key,'[jk]')) "were we going up/down
      wincmd v
    else
      wincmd s
    endif
    exec "wincmd ".a:key
  endif
endfunction

" function! JumpToCSS()
"   let id_pos = searchpos("id", "nb", line('.'))[1]
"   let class_pos = searchpos("class", "nb", line('.'))[1]

"   if class_pos > 0 || id_pos > 0
"     if class_pos < id_pos
"       execute ":vim '#".expand('<cword>')."' **/*.css"
"     elseif class_pos > id_pos
"       execute ":vim '.".expand('<cword>')."' **/*.css"
"     endif
"   endif
" endfunction

" nnoremap <leader>s :call JumpToCSS()<CR>
" jump to css 
nnoremap <leader>s :tag /<c-r>=expand('<cword>')<cr><cr>

" let vim_markdown_preview_toggle=3
" let vim_markdown_preview_hotkey='<C-m>'
" let vim_markdown_preview_browser='Google Chrome'


