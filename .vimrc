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
filetype plugin indent on
inoremap <c-s> <esc>:w<cr>
noremap <c-s> <esc>:w<cr>
noremap <c-c> :q<cr>
inoremap <c-c> :q<cr>

call plug#begin('~/.vim/plugged')

Plug 'Valloric/YouCompleteMe'
let g:ycm_global_ycm_extra_conf='/Users/fengyulong/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_semantic_triggers =  {'c': ['->', '.', 're!\w{2}'],'go': ['.', 're!\w{2}']}
autocmd FileType c	noremap <c-h> :YcmCompleter GoToInclude<cr>
autocmd FileType c	noremap <c-j> :YcmCompleter GoToDeclaration<cr>
autocmd FileType c	noremap <c-k> :YcmCompleter GoToDefinition<cr>
autocmd FileType c	inoremap <c-h> <esc>:YcmCompleter GoToInclude<cr>
autocmd FileType c	inoremap <c-j> <esc>:YcmCompleter GoToDeclaration<cr>
autocmd FileType c	inoremap <c-k> <esc>:YcmCompleter GoToDefinition<cr>

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
autocmd FileType go noremap <c-b> :GoBuild<cr>
autocmd FileType go noremap <c-f> :GoImports<cr>
autocmd FileType go noremap <c-t> :GoTest<cr>
autocmd FileType go noremap <c-u> :GoRun<cr>
autocmd FileType go noremap <c-h> :GoDoc<cr>
autocmd FileType go noremap <c-j> :GoDef<cr>
autocmd FileType go noremap <c-l> :GoMetaLinter<cr>
autocmd FileType go noremap <c-l> :GoMetaLinter<cr>
autocmd FileType go inoremap <c-b> <esc>:GoBuild<cr>
autocmd FileType go inoremap <c-i> <esc>:GoImports<cr>
autocmd FileType go inoremap <c-t> <esc>:GoTest<cr>
autocmd FileType go inoremap <c-r> <esc>:GoRun<cr>
autocmd FileType go inoremap <c-h> <esc>:GoDoc<cr>
autocmd FileType go inoremap <c-l> <esc>:GoMetaLinter<cr>
call plug#end()
