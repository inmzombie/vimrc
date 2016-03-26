set nocompatible              " be iMproved, required
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
Plugin 'L9'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}
" Nerdthree
Plugin 'https://github.com/scrooloose/nerdtree.git'
" Snippe Mate
Plugin 'https://github.com/msanders/snipmate.vim.git'
" Scrooloose/syntastic
Plugin 'https://github.com/scrooloose/syntastic.git'
" Mustache handelrbars file
Bundle 'mustache/vim-mustache-handlebars'
" Buffer Explorer
Bundle 'https://github.com/widox/vim-buffer-explorer-plugin.git'
" NERD Commenter
Bundle 'https://github.com/scrooloose/nerdcommenter.git'
" Tag List
"Bundle 'https://github.com/vim-scripts/taglist.vim.git'
" Tag Bar
Bundle 'https://github.com/majutsushi/tagbar.git'
"Surround
Bundle 'https://github.com/tpope/vim-surround.git'
"Match Hit
Bundle 'https://github.com/tmhedberg/matchit.git'
"Always highlight enclosing tags
Bundle 'https://github.com/Valloric/MatchTagAlways.git'
"vim togglemouse
Bundle 'https://github.com/nvie/vim-togglemouse.git'
" Sparkup
Bundle 'https://github.com/rstacruz/sparkup.git'
" NERDTree Tabs
Bundle 'https://github.com/jistr/vim-nerdtree-tabs.git'
"Solarized
Bundle 'https://github.com/altercation/vim-colors-solarized.git'
"Backbone
Bundle 'https://github.com/mklabs/vim-backbone.git'
"Multi select edit
Bundle 'https://github.com/hlissner/vim-multiedit'
"Emmet
Bundle 'https://github.com/mattn/emmet-vim.git'
"Vim Less
Bundle 'groenewege/vim-less'
" Vim TypeScript
Bundle 'https://github.com/leafgarland/typescript-vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" NERDTree auto load
autocmd vimenter * NERDTree
let g:nerdtree_tabs_open_on_console_startup=1
let g:nerdtree_tabs_smart_startup_focus=1
" Ctrl+n
map <tab> :NERDTreeMirrorToggle<CR>
let NERDTreeShowHidden=1
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
" Enable mustache handelbars parcer
let g:mustache_abbreviations = 1
" Enable mouse
set mouse=a
" tab navigation like firefox
nnoremap <C-p> :tabprevious<CR>
nnoremap <C-o>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-p> <Esc>:tabprevious<CR>i
inoremap <C-o>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>
set pastetoggle=<F9>
" highlighting the white space
set listchars=tab:»·,trail:·
set list
hi SpecialKey ctermbg=red ctermfg=red guibg=red guifg=red
set number
" Solarized
let g:solarized_termtrans = 1
syntax enable
set background=dark
colorscheme solarized
"----------------------Multi-Select-Edit---------------------
" Insert a disposable marker after the cursor
nmap <leader>ma :MultieditAddMark a<CR>

" Insert a disposable marker before the cursor
nmap <leader>mi :MultieditAddMark i<CR>

" Make a new line and insert a marker
nmap <leader>mo o<Esc>:MultieditAddMark i<CR>
nmap <leader>mO O<Esc>:MultieditAddMark i<CR>

" Insert a marker at the end/start of a line
nmap <leader>mA $:MultieditAddMark a<CR>
nmap <leader>mI ^:MultieditAddMark i<CR>

" Make the current selection/word an edit region
vmap <leader>m :MultieditAddRegion<CR>  
nmap <leader>mm viw:MultieditAddRegion<CR>

" Restore the regions from a previous edit session
nmap <leader>mu :MultieditRestore<CR>

" Move cursor between regions n times
map ]m :MultieditHop 1<CR>
map [m :MultieditHop -1<CR>

" Start editing!
nmap <leader>M :Multiedit<CR>

" Clear the word and start editing
nmap <leader>C :Multiedit!<CR>

" Unset the region under the cursor
nmap <silent> <leader>md :MultieditClear<CR>

" Unset all regions
nmap <silent> <leader>mr :MultieditReset<CR>
"-------------------------------------------------------------
