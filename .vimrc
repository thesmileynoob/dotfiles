set nocompatible              " be iMproved, required
filetype off                  " required
packadd! matchit

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

let g:ycm_confirm_extra_conf = 0
Plugin 'Valloric/YouCompleteMe'

Plugin 'scrooloose/nerdtree.git'
Plugin 'scrooloose/syntastic'
Plugin 'Buffergator'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'majutsushi/tagbar'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-surround'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'SirVer/ultisnips'
Plugin 'mattn/emmet-vim'









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
"
" Syntastic recommendations
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0



"
" " Settings and variables
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = '|'
let g:airline#extensions#tabline#left_alt_sep = '>'
let g:buffergator_suppress_keymaps = 1
let g:UltiSnipsSnippetsDir="~/.vim/UltiSnips"
let g:UltiSnipsExpandTrigger="<leader>k"
let g:UltiSnipsListSnippets="<leader>j"
let g:UltiSnipsJumpForwardTrigger="<leader>l"
let g:UltiSnipsJumpBackwardTrigger="<leader>h"

" Quickly update airline when exiting insert mode
set laststatus=2
set ttimeoutlen=20
set number
set relativenumber

" Indentation etc
"   default indentation
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
" HTML/CSS
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype css setlocal ts=2 sw=2 expandtab
autocmd Filetype python setlocal ts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=2 sw=2 expandtab
"
"
" " Remaps and shortcuts
" Toggle Tagbar
nmap <leader>a :TagbarToggle<CR>
" Toggle NERDTree
map <leader>n :NERDTreeToggle<CR>
" Toggle Buffergator
map <leader>b :BuffergatorToggle<CR>


" Move b/w splts
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" auto close ycm_preview
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>


colorscheme moriarty

