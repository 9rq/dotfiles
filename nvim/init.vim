set number
set title
set showmatch
set matchtime=1
set autoindent
set smartindent
set expandtab
set smarttab
set tabstop=4
set shiftwidth=4

" コマンドラインの補完
set wildmode=list:longest
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>
" 行をまたいで移動
set whichwrap=b,s,h,l,<,>,[,],~

set laststatus=2
set noswapfile

"Yを行末までコピーに変更
nnoremap Y y$
"key mapping------------------------------
noremap ; :
let mapleader = " "
inoremap <silent> jj <ESC>
"ブラックホールレジスタの指定
nnoremap x "_x
nnoremap X "_X

"<Space>wを押してファイルを保存する
nnoremap <Leader>w :w<CR>


colorscheme iceberg


"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/len/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/len/.cache/dein')
  call dein#begin('/Users/len/.cache/dein')

  let s:toml_dir  = $HOME . '/.config/nvim/tomls'
  let s:toml      = s:toml_dir . '/dein.toml'
  let s:lazy_toml = s:toml_dir . '/dein_lazy.toml'

  " Let dein manage dein
  " Required:
  call dein#add('/Users/len/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  "call dein#add('Shougo/denite.nvim')

  " TOML を読み込み、キャッシュしておく
  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})


  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------
