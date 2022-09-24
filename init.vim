
" Options
set termguicolors
set clipboard=unnamedplus " Enables the clipboard between Vim/Neovim and other applications.
set completeopt=noinsert,menuone,noselect " Modifies the auto-complete menu to behave more like an IDE.
set tabstop=4 softtabstop=4
set shiftwidth=4
set hidden " Hide unused buffers
set smartindent " do clever autoindenting
set inccommand=split " Show replacements in a split screen
set mouse=a " Allow to use the mouse in the editor
set relativenumber " Shows the line numbers
set splitbelow splitright " Change the split screen behavior
set title " Show file title
set wildmenu " Show a more advance menu
set nu
set nohlsearch
set nowrap
set noswapfile
set incsearch
set scrolloff=10
set cursorline
filetype plugin indent on   " Allow auto-indenting depending on file type
syntax on
set spell " enable spell check (may need to download language package)
set ttyfast " Speed up scrolling in Vim

let mapleader = "`" " map leader key to `
"Enable type file detection. Vim will be able to try to detect the type of
"file in use
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type
filetype indent on

" Turn Syntax highlighting on
syntax on

" Add relative-numbers to each line on the left hand side

" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? '~/.config/nvim/autoload/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'fatih/vim-go'
" Themes
Plug 'morhetz/gruvbox'
Plug 'bluz71/vim-moonfly-colors'
Plug 'embark-theme/vim', { 'as': 'embark', 'branch': 'main' }
Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'hachy/eva01.vim'
Plug 'thedenisnikulin/vim-cyberpunk'
Plug 'lucasprag/simpleblack'
Plug 'rmehri01/onenord.nvim', { 'branch': 'main' }
Plug 'Shatur/neovim-ayu'
Plug 'pineapplegiant/spaceduck'
Plug 'EdenEast/nightfox.nvim' 
Plug 'bluz71/vim-nightfly-guicolors'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'svrana/neosolarized.nvim'

Plug 'christoomey/vim-tmux-navigator'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope-media-files.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-file-browser.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdcommenter'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'folke/trouble.nvim'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip'
Plug 'onsails/lspkind-nvim'
Plug 'glepnir/lspsaga.nvim', { 'branch': 'main' }
Plug 'tjdevries/colorbuddy.nvim'
Plug 'folke/lsp-colors.nvim'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }
"Plug 'neovim/nvim-lspconfig'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

lua require("saharshsamir.init")
"lua require("saharshsamir.telescope")
"lua require("saharshsamir.lualine")
"lua require("saharshsamir.tokyonight")
"lua require("saharshsamir.nightfly")
"lua require("saharshsamir.trouble")
"lua require("saharshsamir.lsp-config")
"lua require("lspconfig").tsserver.setup{}
"lua require("saharshsamir.init")
colorscheme tokyonight-night
"autocmd ColorScheme * hi LineNr cterm=NONE ctermfg=red ctermbg=yellow
"autocmd ColorScheme * hi CursorLineNr ctermfg=45 cterm=bold
"let g:lightline = {
      "\ 'colorscheme': 'embark',
      "\ }
let g:bargreybars_auto=0
"let g:airline_solorized_bg='dark'
"let g:airline_powerline_fonts=1
"let g:airline#extension#tabline#enable=1
"let g:airline#extension#tabline#left_sep=' '
"let g:airline#extension#tabline#left_alt_sep='|'
"let g:airline#extension#tabline#formatter='unique_tail'
let g:LanguageClient_serverCommands = {
\ 'rust': ['rust-analyzer'],
\ }
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1


nnoremap <C-q> :q!<CR>

nnoremap <F4> :bd<CR>
nnoremap <C-[> :tabp<CR> 
nnoremap <C-]> :tabn<CR> 
nnoremap <F6> :sp<CR>:terminal<CR>
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>bb <cmd>Telescope file_browser<cr>


" Tabs
nnoremap <S-Tab> gT
nnoremap <Tab> gt
nnoremap <silent> <S-t> :tabnew<CR>

nnoremap <S-a> :NERDTreeToggle<CR>

inoremap <expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<TAB>"
inoremap kj <Esc>
inoremap <silent><expr> <c-b> coc#refresh()

" GoTo code navigation.
"nmap <silent> gd <Plug>(coc-definition)
"nmap <silent> gy <Plug>(coc-type-definition)
"nmap <silent> gi <Plug>(coc-implementation)
"nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
"nnoremap <silent> K :call ShowDocumentation()<CR>

"function! ShowDocumentation()
  "if CocAction('hasProvider', 'hover')
    "call CocActionAsync('doHover')
  "else
    "call feedkeys('K', 'in')
  "endif
"endfunction

"Scrollinggggg

"function! FloatScroll(forward) abort
  "let float = coc#util#get_float()
  "if !float | return '' | endif
  "let buf = nvim_win_get_buf(float)
  "let buf_height = nvim_buf_line_count(buf)
  "let win_height = nvim_win_get_height(float)
  "if buf_height < win_height | return '' | endif
  "let pos = nvim_win_get_cursor(float)
  "if a:forward
    "if pos[0] == 1
      "let pos[0] += 3 * win_height / 4
    "elseif pos[0] + win_height / 2 + 1 < buf_height
      "let pos[0] += win_height / 2 + 1
    "else
      "let pos[0] = buf_height
    "endif
  "else
    "if pos[0] == buf_height
      "let pos[0] -= 3 * win_height / 4 
"elseif pos[0] - win_height / 2 + 1  > 1 
      "let pos[0] -= win_height / 2 + 1 
"else let pos[0] = 1 
"endif 
"endif 
"call nvim_win_set_cursor(float, pos) return '' 
"endfunction 
"nnoremap <silent><expr> <down> coc#float#has_float() ? FloatScroll(1) : "\<down>" nnoremap <silent><expr>  <up>  coc#float#has_float() ? FloatScroll(0) :  "\<up>" inoremap <silent><expr> <down> coc#float#has_float() ? FloatScroll(1) : "\<down>"
"inoremap <silent><expr>  <up>  coc#float#has_float() ? FloatScroll(0) :  "\<up>"

"nnoremap <silent><expr> <down> coc#float#has_float() ? coc#float#scroll(1, 1) : "\<down>"
"nnoremap <silent><expr>  <up>  coc#float#has_float() ? coc#float#scroll(1, -1) :  "\<up>"
"inoremap <silent><expr> <down> coc#float#has_float() ? "\<c-r>=coc#float#scroll(1)\<cr>": "\<down>"
"inoremap <silent><expr>  <up>  coc#float#has_float() ? "\<c-r>=coc#float#scroll(0)\<cr>" :  "\<up>"

"" Make <CR> auto-select the first completion item and notify coc.nvim to
"" format on enter, <cr> could be remapped by other vim plugin
"inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              ""\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

autocmd ColorScheme *
      \ hi CocUnusedHighlight ctermbg=DarkBlue guibg=NONE guifg=#424242

set cursorline " Highlights the current line in the editor
highlight CursorLineNr term=bold cterm=NONE ctermfg=14 ctermbg=NONE gui=NONE guifg=Orange guibg=NONE
highlight CursorLine gui=underline cterm=underline guibg=NONE ctermbg=NONE
highlight Visual ctermbg=DarkCyan guibg=DarkCyan 
"highlight link LspDiagnosticsVirtualTextError red
hi LspDiagnosticsVirtualTextError guifg=Red ctermfg=Red

"highlight TroubleError
"highlight CocErrorVirtualText ctermfg=Red guifg=Red
"highlight CocWarningVirtualText ctermfg=DarkYellow guifg=DarkYellow
"highlight CocInfoVirtualText ctermfg=LightGreen guifg=LightGreen

"highlight Normal ctermbg=none
"
"highlight NonText ctermbg=none


