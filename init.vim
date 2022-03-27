:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

call plug#begin()

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'nvim-lua/plenary.nvim'
Plug 'projekt0n/github-nvim-theme'
Plug 'morhetz/gruvbox'
Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)
Plug 'akinsho/bufferline.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'L3MON4D3/LuaSnip'
Plug 'windwp/nvim-autopairs'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope-media-files.nvim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'https://github.com/tpope/vim-fugitive'

call plug#end()

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

nnoremap <S-f> :Telescope find_files<CR>
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <silent> <Leader>v :NERDTreeFind<CR>

colorscheme gruvbox

set termguicolors

lua << END
require('bufferline').setup{}
require('lualine').setup{}
END

lua << EOF
require('telescope').setup{
	defaults = {
		extensions = {
			media_files = {
				filetypes = {"png", "webp", "jpg", "jpeg"},
				find_cmb = "rg"
			}
		},
	}
}
EOF
