set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" The best theme!
Plugin 'morhetz/gruvbox'

"Airline
Plugin 'vim-airline/vim-airline'

"NerdTree
Plugin 'scrooloose/nerdTree'

"Easymotion move inside the file easily
Plugin 'easymotion/vim-easymotion'

"HTML 5
Plugin 'othree/html5.vim'
Plugin 'othree/html5-syntax.vim'

"Javascript plugin
Plugin 'pangloss/vim-javascript'
Plugin 'othree/javascript-libraries-syntax.vim'

"Node plugin
Plugin 'moll/vim-node'

"Real time syntax check
Plugin 'scrooloose/syntastic'

" Git line changes
Plugin 'airblade/vim-gitgutter'

" Nerd Tree commenter
Plugin 'scrooloose/nerdcommenter'

" Autocomplete - Remember to
" cd ~/.vim/bundle/YouCompleteMe
" ./install.py --tern-completer
" every time you update the plugin
Plugin 'Valloric/YouCompleteMe'

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

"Powerline
"set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
" Always show statusline
set laststatus=2
" Use 256 colours (Use this setting only if your terminal supports 256 colours)
"set t_Co=256

" Gruvbox options
colorscheme gruvbox
set background=dark    " Setting dark mode
"let g:airline#extensions#tabline#enabled = 1

"Airline fonts from Powerline
let g:airline_powerline_fonts = 1

" Easymove
map <Leader> <Plug>(easymotion-prefix)

set runtimepath^=~/.vim/bundle/ctrlp.vim
set relativenumber 
set number          

"Tab size
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

"Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_loc_list_height=5

" show any linting errors immediately
let g:syntastic_check_on_open = 1

" Autocomplete CSS
:set omnifunc=csscomplete#CompleteCSS

" YouCompleteMe options
" Do not show preview window
let g:ycm_add_preview_to_completeopt = 0
set completeopt-=preview

" Change key delay
set timeoutlen=1000 ttimeoutlen=0

" NerdTree config
" open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" open NERDTree with Ctrl+n
map <C-n> :NERDTreeToggle<CR>
"close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

