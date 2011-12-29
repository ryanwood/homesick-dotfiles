set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" Github Repo
Bundle 'tpope/vim-rails.git'
Bundle 'tpope/vim-fugitive'

Bundle 'mileszs/ack.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-haml'
Bundle 'michaeljsmith/vim-indent-object'
Bundle 'pangloss/vim-javascript'
" Bundle 'hallettj/jslint.vim'
" Bundle 'robgleeson/hammer.vim'
" Bundle 'wycats/nerdtree'
Bundle 'scrooloose/nerdtree'
" Bundle 'ddollar/nerdcommenter'
Bundle 'tpope/vim-surround'
" Bundle 'vim-scripts/taglist.vim'
Bundle 'ervandew/supertab'
" Bundle 'tpope/vim-cucumber'
" Bundle 'timcharper/textile.vim'
Bundle 'tpope/vim-rails'
Bundle 'taq/vim-rspec'
" Bundle 'vim-scripts/ZoomWin'

Bundle 'msanders/snipmate.vim'
Bundle 'ryanwood/snipmate-snippets'

" These two are dependencies for vim-snipmate
" Bundle 'MarcWeber/vim-addon-mw-utils'
" Bundle 'tomtom/tlib_vim'
" Bundle 'garbas/vim-snipmate'
" Bundle 'ryanwood/snipmate-snippets'

" Bundle 'tpope/vim-markdown'
" Bundle 'tsaleh/vim-align'
Bundle 'tpope/vim-unimpaired'
" Bundle 'vim-scripts/searchfold.vim'
Bundle 'tpope/vim-endwise'
Bundle 'kchmck/vim-coffee-script'
Bundle 'scrooloose/syntastic'
" Bundle 'ajf/puppet-vim'
" Bundle 'bdd/vim-scala'
" Bundle 'mattn/gist-vim'
Bundle 'wincent/Command-T'
Bundle 'sjl/gundo.vim'

Bundle 'tomtom/tcomment_vim'
" Bundle 'tpope/vim-commentary'
Bundle 'wojtekmach/vim-rename'
Bundle 'tpope/vim-ragtag'
Bundle 'vim-scripts/bufexplorer.zip'
Bundle 'bbommarito/vim-slim'
Bundle 'duskhacker/sweet-rspec-vim'
" Bundle 'Raimondi/delimitMate'


" Colors/Themes
Bundle 'vim-scripts/Color-Sampler-Pack'
Bundle 'wgibbs/vim-irblack'
Bundle 'tpope/vim-vividchalk'
Bundle 'altercation/vim-colors-solarized'


" Bundle 'Lokaltog/vim-easymotion'
" Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" vim-scripts repos
" Bundle 'L9'
" Bundle 'FuzzyFinder'

" non github repos
" Bundle 'git://git.wincent.com/command-t.git'
" ...

filetype plugin indent on     " required! 
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..


" START GENERAL CONFIG

let mapleader=","


" JANUS .vimrc

set number
set ruler
syntax on

" Set encoding
set encoding=utf-8

" Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set list listchars=tab:\ \ ,trail:·

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

" Status bar
set laststatus=2

" Without setting this, ZoomWin restores windows in a way that causes
" equalalways behavior to be triggered the next time CommandT is used.
" This is likely a bludgeon to solve some other issue, but it works
set noequalalways

" NERDTree configuration
" let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$']
" map <Leader>n :NERDTreeToggle<CR>

" Command-T configuration
let g:CommandTMaxHeight=20

" ZoomWin configuration
" map <Leader><Leader> :ZoomWin<CR>

" CTags
map <Leader>rt :!ctags --extra=+f -R *<CR><CR>
map <C-\> :tnext<CR>

" Gundo configuration
nmap <F5> :GundoToggle<CR>
imap <F5> <ESC>:GundoToggle<CR>

" Remember last location in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

" function s:setupWrapping()
"   set wrap
"   set wrapmargin=2
"   set textwidth=72
" endfunction

" function s:setupMarkup()
"   call s:setupWrapping()
"   map <buffer> <Leader>p :Hammer<CR>
" endfunction

" Thorfile, Rakefile, Vagrantfile and Gemfile are Ruby
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru}    set ft=ruby

" md, markdown, and mk are markdown and define buffer-local preview
" au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn} call s:setupMarkup()

" add json syntax highlighting
au BufNewFile,BufRead *.json set ft=javascript

" au BufRead,BufNewFile *.txt call s:setupWrapping()

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" load the plugin and indent settings for the detected filetype
filetype plugin indent on

" Map ,e and ,v to open files in the same directory as the current file
cnoremap %% <C-R>=expand('%:h').'/'<cr>

" Opens an edit command with the path of the currently edited file filled in
" Normal mode: <Leader>e
map <Leader>e :e %%

" Opens a tab edit command with the path of the currently edited file filled in
" Normal mode: <Leader>te
map <Leader>te :tabe %%
map <Leader>vs :vsp %%
map <Leader>sp :sp %%

" Opens a file as read-only with the path of the currently edited file filled in
" Normal mode: <Leader>v
map <Leader>v :view %%


" Inserts the path of the currently edited file into a command
" Command mode: Ctrl+P
cmap <C-P> <C-R>=expand("%:p:h") . "/" <CR>

" Unimpaired configuration
" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e
nmap <C-k> [e
nmap <C-j> ]e
" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv
vmap <C-k> [egv
vmap <C-j> ]egv

" Enable syntastic syntax checking
let g:syntastic_enable_signs=1
let g:syntastic_quiet_warnings=1

" gist-vim defaults
" if has("mac")
"   let g:gist_clip_command = 'pbcopy'
" elseif has("unix")
"   let g:gist_clip_command = 'xclip -selection clipboard'
" endif
" let g:gist_detect_filetype = 1
" let g:gist_open_browser_after_post = 1

" Use modeline overrides
set modeline
set modelines=10

" Default color scheme
colorscheme ir_black
if has("gui_running")
  set guifont=Inconsolata-dz:h12
end

" Directories for swp files
set backupdir=~/.vim/backup
set directory=~/.vim/backup

" Turn off jslint errors by default
" let g:JSLintHighlightErrorLine = 0

" MacVIM shift+arrow-keys behavior (required in .vimrc)
let macvim_hig_shift_movement = 1

" % to bounce from do to end etc.
runtime! macros/matchit.vim

" Show (partial) command in the status line
set showcmd

if has("gui_running")
  " Automatically resize splits when resizing MacVim window
  " autocmd VimResized * wincmd =
endif

" END OF JANUS CONFIG

let g:bufExplorerShowRelativePath=1

" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

" nmap <leader>v :tabedit .vimrc.local<CR>


" MAPPINGS

imap <c-l> <space>=><space>

" GRB: clear the search buffer when hitting return
:nnoremap <CR> :nohlsearch<cr>

" Adjust viewports to the same size
map <Leader>= <C-w>=
imap <Leader>= <Esc> <C-w>=

nnoremap <silent> + :exe "resize " . (winheight(0) * 3/2)<CR> 
nnoremap <silent> - :exe "resize " . (winheight(0) * 2/3)<CR>

" easy window switching
map <c-h> <c-w>h
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-x> <c-w>x

imap ;; <esc>
map <Leader>; :ZoomWin<CR>

" diable arrow keys. ouch!
" inoremap  <up>     <nop>
" inoremap  <down>   <nop>
" inoremap  <left>   <nop>
" inoremap  <right>  <nop>
" noremap   <up>     <nop>
" noremap   <down>   <nop>
" noremap   <left>   <nop>
" noremap   <right>  <nop>

" tabs mappings
map <leader>tt :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove

" Gary Bernhardt's vimrc file
" https://github.com/garybernhardt/dotfiles/blob/master/.vimrc

map <leader>r :Rename %%

nnoremap <leader><leader> <c-^>

map <leader>gg :topleft 10 :split Gemfile<cr>
map <leader>gr :topleft 10 :split config/routes.rb<cr>

map <leader>gv :CommandTFlush<cr>\|:CommandT app/views<cr>
map <leader>gc :CommandTFlush<cr>\|:CommandT app/controllers<cr>
map <leader>gm :CommandTFlush<cr>\|:CommandT app/models<cr>
map <leader>gj :CommandTFlush<cr>\|:CommandT app/assets/javascripts<cr>
map <leader>gs :CommandTFlush<cr>\|:CommandT app/assets/stylesheets<cr>
map <leader>gh :CommandTFlush<cr>\|:CommandT app/helpers<cr>
map <leader>gl :CommandTFlush<cr>\|:CommandT lib<cr>
map <leader>f :CommandTFlush<cr>\|:CommandT<cr>
map <leader>F :CommandTFlush<cr>\|:CommandT %%<cr>

" Inspired by Ryan Bates vimrc file

map <Leader>rm :Rmodel 
map <Leader>rtm :RTmodel 
map <Leader>rsm :RSmodel 
map <Leader>rvm :RVmodel 
map <Leader>rc :Rcontroller 
map <Leader>rtc :RTcontroller 
map <Leader>rsc :RScontroller
map <Leader>rvc :RVcontroller 
map <Leader>rv :Rview 
map <Leader>rtv :RTview 
map <Leader>rsv :RSview 
map <Leader>rvv :RVview 

set winwidth=79
