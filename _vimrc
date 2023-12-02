"Helpページ日本語化
call plug#begin('~/.vim/plugged')
" A project which translate Vim documents into Japanese.
Plug 'vim-jp/vimdoc-ja'
call plug#end()
set helplang=ja,en

"######################################
"各モードのcursor設定
"######################################
if has('vim_starting')
    " 挿入モード時に非点滅の縦棒タイプのカーソル
    let &t_SI .= "\e[6 q"
    " ノーマルモード時に非点滅のブロックタイプのカーソル
    let &t_EI .= "\e[2 q"
    " 置換モード時に非点滅の下線タイプのカーソル
    let &t_SR .= "\e[4 q"
endif


set number			"行番号表示
set cursorline	"変種中の行をハイライト
set showcmd			" 入力中のコマンドを表示
set title				" タイトルの追加
syntax enable " シンタックスハイライトを有効化
set wildmenu " vim上からファイルを選択できる機能を有効化
set ambiwidth=double " 全角文字の重なりを解消
set backspace=indent,eol,start " 挿入モードでbackspaceを使って削除を可能に
set laststatus=2 " ステータスバーを2行表示
set history=1000 " コマンドの履歴を1000件保存
set showmatch " 対応する括弧をハイライト
set smartindent " 前の行のインデントを保持
set clipboard+=unnamed " ヤンクの結果をクリップボードに保存
set noerrorbells " エラーの表示時にビープ音を鳴らさない
set mouse=a " マウスの有効化

set shiftwidth=0 " タブの設定(タブ幅4の場合)
set softtabstop=2
set tabstop=2

set hlsearch " 検索結果をハイライト
set incsearch " 最初の一文字を入力した時点から検索開始
set wrapscan " ファイル末尾に到達すると再び先頭から検索
set ruler

"######################################
"キーバインド設定↓
"######################################

"j,jキーでインサートモードを抜ける
inoremap <silent> jj <ESC>

