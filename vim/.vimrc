execute pathogen#infect()

" Enable syntax highlighting
syntax on

" Colors
set background=dark

colorscheme solarized

set ruler
set number
set backspace=2

" Enable filetype detection
filetype on
filetype plugin on
filetype indent on

" Enable 80 character guideline
set colorcolumn=80
highlight ColorColumn ctermbg=7
highlight ColorColumn guibg=LightGray

" Enable CtrlP
let g:ctrlp_map = '<c-p>'

" Configure gitgutter
let g:gitgutter_enabed = 1
let g:gitgutter_realtime = 1
let g:gitgutter_eager = 1

" Ignore files and directories
set wildignore+=*.pyc,*/build/*,*.o

" Convert tabs to 4 spaces for Python and Bash.
au FileType python setl sw=4 sts=4 et
au FileType sh setl sw=4 sts=4 et
au FileType asm setl sw=8 sts=8 et

" Strip trailing whitespaces
fun! <SID>StripTrailingWhitespaces()
	let l = line(".")
	let c = col(".")
	%s/\s\+$//e
	call cursor(l, c)
endfun

autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

" Auto-reload vim configuration
augroup myvimrc
	au!
	au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc
		\ so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

let g:ctrlp_prompt_mappings = {
			\ "PrtExit()": ["<c-c>", "<c-g>"]
			\}

