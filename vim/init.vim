call plug#begin()

Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'
Plug 'https://github.com/altercation/vim-colors-solarized.git'
Plug 'https://github.com/tpope/vim-commentary.git'
Plug 'https://github.com/airblade/vim-gitgutter.git'
Plug 'https://github.com/Vimjas/vim-python-pep8-indent.git'
Plug 'https://github.com/autozimu/LanguageClient-neovim.git', {
	\ 'branch': 'next',
	\ 'do': 'bash install.sh',
	\}
Plug 'junegunn/fzf'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }


call plug#end()

" General Configurations
syntax on
set ruler
set number
set backspace=2
set colorcolumn=80
set updatetime=100
set hidden
set tabstop=4

" Colors
set background=dark
colorscheme solarized
highlight ColorColumn ctermbg=7

" Strip trailing whitespaces on write
fun! <SID>StripTrailingWhitespaces()
	let l = line(".")
	let c = col(".")
	%s/\s\+$//e
	call cursor(l, c)
endfun
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

" Auto reload NeoVim config
autocmd! BufWritePost init.vim,.vimrc source %

" Ignore files and directories
set wildignore+=*.pyc,*/build/*,*.o

filetype on
filetype plugin on
filetype indent on

" Configure gitgutter
let g:gitgutter_enabed = 1
let g:gitgutter_realtime = 1
let g:gitgutter_eager = 1

" Configure Language Server Protocol
let g:deoplete#enable_at_startup = 1
let g:LanguageClient_serverCommands = {
	\ 'python': ['/usr/local/bin/pyls'],
	\ }
nnoremap <F5> :call LanguageClient_contextMenu()<CR>

autocmd Filetype html setlocal tabstop=2 softtabstop=2 shiftwidth=2 noexpandtab
