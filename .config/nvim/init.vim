syntax on
set number
set mouse=a
set splitbelow

" Auto terminal without lines
:command Term sp | set nonu | resize 3 | terminal 

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=5
" when indenting with '>', use 4 spaces width
set shiftwidth=4

" Install the plugins
call plug#begin()

Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-commentary'
Plug 'sheerun/vim-polyglot'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'nvie/vim-flake8'

call plug#end()

" Nerdtree shortcut
nmap <C-t> :NERDTreeToggle<CR>
set fillchars=vert:█

" Nerdtree git plugin
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeWinSize=20
let NERDTreeMinimalUI=1
let g:NERDTreeDirArrowExpandable='>'
let g:NERDTreeDirArrowCollapsible='>'
let NERDTreeStatusline="%{matchstr(getline('.'), '\\s\\zs\\w\\(.*\\)')}"
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "Ξ",
    \ "Staged"    : "Λ",
    \ "Untracked" : "Φ",
    \ "Renamed"   : "ρ",
    \ "Unmerged"  : "Θ",
    \ "Deleted"   : "Χ",
    \ "Dirty"     : "Δ",
    \ "Clean"     : "Γ",
    \ 'Ignored'   : "Ι",
    \ "Unknown"   : "?"
    \ }

let NERDTreeStatusline=""
" Git gutter custom signs
let g:gitgutter_sign_added = '█'
let g:gitgutter_sign_modified = '█'
let g:gitgutter_sign_removed = '█'

" Airline
let g:airline_powerline_fonts = 1

" Colorscheme
let &t_ZH="\e[4m"
let &t_ZR="\e[33m"
colorscheme nord
let g:nord_bold = 1
let g:nord_italic = 1
let g:nord_italic_comments = 1
highlight Comment cterm=italic
augroup python_syntax_extra
  autocmd!
  autocmd! Syntax python :syn keyword Keyword self
augroup END
highlight Keyword cterm=italic ctermfg=5

" Set cursor variable
set guicursor+=v-i:ver30-blinkon200-blinkoff150
set guicursor+=n:block-blinkon200-blinkoff150

" Set deoplete
let g:deoplete#enable_at_startup = 1

" Flake8
autocmd FileType python map <buffer> <C-f> :call flake8#Flake8()<CR>
