" Insert mode by default
start

" Set tmux window to filename
autocmd BufReadPost,FileReadPost,BufNewFile * call system("tmux rename-window " . expand("%:t"))
autocmd VimLeave * call system("tmux rename-window bash")

" Disable automatic comment insertion (wtf vim)
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
set nosi noai

" No delay when pressing Esc to go to normal mode
set timeoutlen=0
set ttimeoutlen=0

" Fast scrolling
set ttyfast
map <Space> <PageDown>

" Load current file in firefox via ff
abbrev ff :! open -a firefox.app %:p<cr>

" Bubble lines
" http://vimcasts.org/episodes/bubbling-text/
" tmux will send xterm-style keys when its xterm-keys option is on
if &term =~ '^screen'
execute "set <xUp>=\e[1;*A"
execute "set <xDown>=\e[1;*B"
execute "set <xRight>=\e[1;*C"
execute "set <xLeft>=\e[1;*D"
endif
nmap <C-Up> ddkP
nmap <C-Down> ddp
vmap <C-Up> xkP`[V`]
vmap <C-Down> xp`[V`] 

" Search
set hlsearch
set ignorecase
set smartcase

" Enable mouse use in all modes
set mouse=a

" Enable line numbers and color them
set number
highlight LineNr ctermfg=black

" Set bracket highlighting colors
hi MatchParen cterm=none ctermbg=black ctermfg=green

" Set this to the name of your terminal that supports mouse codes.
" Must be one of: xterm, xterm2, netterm, dec, jsbterm, pterm
set ttymouse=xterm2

" Disable word wrap
set nowrap

" Filetypes
syntax on
filetype on
filetype plugin on
filetype indent on

" Ctrl-n to open file pane
map <C-n> :NERDTreeToggle<CR>

" Back arrow at beginning of line moves to end of previous
" How is this not the default again?
set whichwrap+=<,>,[,]

" Backspace over anything
set backspace=indent,eol,start

" Cursor based on mode
if $TERM_PROGRAM =~ "iTerm.app"
let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
endif




"
" VUNDLE RC
"
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
: Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'hdima/python-syntax'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'pangloss/vim-javascript'
Plugin 'trusktr/seti.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'fholgado/minibufexpl.vim'

" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
