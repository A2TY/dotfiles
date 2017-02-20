""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" NeoBundle Config
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"bundleで管理するディレクトリを指定
if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif


call neobundle#begin(expand('~/.vim/bundle/'))
 
"neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'

"ヘルプの日本語化
NeoBundle 'vim-jp/vimdoc-ja'

"カレントディレクトリを表示
NeoBundle 'scrooloose/nerdtree'

"括弧の自動入力
NeoBundle 'Townk/vim-autoclose' 

"カラースキーム
NeoBundle 'junegunn/seoul256.vim'

call neobundle#end()

filetype plugin indent on

"プラグインがインストールされているかをチェック 
NeoBundleCheck

if !has('vim_starting')
  ".vimrcを読み込み直した時のための設定
  call neobundle#call_hook('on_source')
endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" User Config
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"エンコード
set encoding=utf8
"ファイルエンコード
set fileencoding=utf-8
"拡張子に応じて色を付ける
syntax on
"行数を表示
set number
"右下に表示される行・列の番号を表示する
set ruler
"編集結果非保存のバッファから、新しいバッファを開くときに警告を出さない
set hidden
"ヒストリの保存数
set history=50
"検索時にファイルの最後まで行ったら最初に戻る
set wrapscan
"インクリメンタルサーチ
set incsearch
"検索文字の強調表示
set hlsearch
"自動的にインデントする
set autoindent
"インデントをスペース4つ分に設定
set tabstop=4
"オートインデント
set smartindent
"タイトルを表示
set title
"コマンドをステータス行に表示
set showcmd
"画面最後の行をできる限り表示する
set display=lastline
"括弧入力時の対応する括弧を表示
set showmatch
"対応括弧に<と>のペアを追加
set matchpairs& matchpairs+=<:>
"対応括弧をハイライト表示する
set showmatch
"対応括弧の表示秒数を3秒にする
set matchtime=3
"ウィンドウの幅より長い行は折り返され、次の行に続けて表示される
set wrap
"コマンドを画面最下部に表示する
set showcmd
"NERDTree起動
nmap <silent><C-n> :NERDTreeToggle<CR>
"バックスペースを有効
set backspace=indent,eol,start

"全角スペースのハイライトを設定
function! ZenkakuSpace()
  highlight ZenkakuSpace cterm=underline ctermfg=darkgrey gui=underline guifg=darkgrey
endfunction
 
if has('syntax')
  augroup ZenkakuSpace
    autocmd!
    " ZenkakuSpaceをカラーファイルで設定するなら次の行は削除
    autocmd ColorScheme       * call ZenkakuSpace()
    " 全角スペースのハイライト指定
    autocmd VimEnter,WinEnter * match ZenkakuSpace /　/
  augroup END
  call ZenkakuSpace()
endif

"色の設定
let g:seoul256_background = 233 
colo seoul256
syntax on

"行番号の色を設定
hi LineNr ctermbg=0 ctermfg=7
hi CursorLineNr ctermbg=4 ctermfg=0
set cursorline
hi clear CursorLine

