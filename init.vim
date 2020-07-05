""" Gary's Neovim init.ivm

""" Vim-Plug
call plug#begin("~/.config/nvim/plugged")

Plug 'flazz/vim-colorschemes'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/rainbow_parenthesis.vim'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

""" Python VirtualEnv
let g:python3_host_prog = expand('~/.config/nvim/env/bin/python')

""" Coloring
syntax on
let g:gruvbox_italic=1
colorscheme gruvbox

set number
set title

""" Plug Configurations
" NERDTree
let NERDTreeShowHidden = 1
let g:NerdTreeDirArrowExpandable = '↠'
let g:NerdTreeDirArrowCollapsible = '↡'

" Airline
let g:airline_powerline_fonts = 1
let g:airline_section_z = '%{strftime("%-I:%M %p")}'
let g:airline_section_warning = ''

""" Custom Mappings
let maplead=" "
nmap <leader>q :NERDTreeToggle<CR>
