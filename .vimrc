set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936 
set termencoding=utf-8 
set encoding=utf-8 
set cul 
set showmatch 
set shiftwidth=4 
set tabstop=4 
set expandtab 
set cindent
set smartindent
set nu
set hls
syntax on " 开启语法高亮
" autocmd BufWritePost '~/.vimrc'  source '~/.vimrc'
" normal: c-r c-g c-o c-i c-w c-d
filetype plugin indent on
noremap <c-s> <esc>:w<cr>
inoremap <c-s> <esc>:w<cr>
noremap <c-q> :q<cr>
inoremap <c-q> <esc>:q<cr>
" 恢复 重做
inoremap <c-u> <esc>u
inoremap <c-r> <esc><c-r>
" 前进 后退
inoremap <c-i> <esc><c-i>
inoremap <c-o> <esc><c-o>
" 窗口切换
inoremap <c-h> <esc><c-w>h
noremap <c-h> <c-w>h
inoremap <c-j> <esc><c-w>j
noremap <c-j> <c-w>j
inoremap <c-k> <esc><c-w>k
noremap <c-k> <c-w>k
inoremap <c-l> <esc><c-w>l
noremap <c-l> <c-w>l
let mapleader = ","

call plug#begin('~/.vim/plugged')

Plug 'Valloric/YouCompleteMe'
let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_semantic_triggers =  {'c': ['->', '.', 're!\w{2}'],'go': ['.', 're!\w{2}']}
autocmd FileType c	nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
autocmd FileType c	noremap <leader>h :YcmCompleter GoToInclude<cr>
autocmd FileType c	noremap <leader>, :YcmCompleter GoToDeclaration<cr>
autocmd FileType c	noremap <leader>f :YcmCompleter GoToDefinition<cr>
autocmd FileType c	noremap <leader>t :YcmCompleter GetType<cr>
autocmd FileType c	noremap <leader>d :YcmCompleter GetDoc<cr>

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
autocmd FileType go noremap <leader>tt :GoTest<cr>
autocmd FileType go noremap <leader>t :GoTestFunc<cr>
autocmd FileType go noremap <leader>dg :GoDebugStart<cr>
autocmd FileType go noremap <leader>f :GoDef<cr>
autocmd FileType go noremap <leader>r :GoRun<cr>
autocmd FileType go noremap <leader>d :GoDoc<cr>
autocmd FileType go noremap <leader>l :GoMetaLinter<cr>
call plug#end()
