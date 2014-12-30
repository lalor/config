""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"Author : Mingxing LAI
"Date   : 2013年 07月 03日 星期三
"
"1. mkdir -p ~/.vim/budle/vundle
"2. git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
"3. vim:BundleInstall
"4. vim:BundleClean
"
"Append A : http://vim-scripts.org/vim/scripts.html
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


set nocompatible    " be iMproved
filetype off        " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle
Bundle 'gmarik/vundle'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-scripts repos
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"快速的在.h文件与.cpp文件之间切换
Bundle 'a.vim'

"输入需要配对的符号时，自动帮你补全另外半个
Bundle 'AutoClose'


Bundle 'cecutil'

"注释工具，暂时没有用
"Bundle 'DoxygenToolkit.vim'

"自动识别文件编码
Bundle 'FencView.vim'

"Bundle 'lalor/minibufexpl.vim'

"显示行末尾的空格
Bundle 'ShowTrailingWhitespace'

"molokar主题
Bundle 'molokai'

"打开最近使用的文件
Bundle 'mru.vim'

"在vim 编辑窗口树状显示文件目录
Bundle 'The-NERD-tree'

"彩色显示配对括号
Bundle 'rainbow_parentheses.vim'

"查找的时候Tab补全
Bundle 'SearchComplete'

"强大的代码补全插件
Bundle 'lalor/snipMate'

"让代码更易于纵向排版
Bundle 'Tabular'

" 看代码用的
Bundle 'taglist.vim'

"vim中文输入法
Bundle 'VimIM'

"粘贴
Bundle 'YankRing.vim'

"放大当前编辑框
Bundle 'ZoomWin'

"美化状态栏
Bundle 'Lokaltog/vim-powerline'

"看代码用过的，提供source insight的部分功能
Bundle 'wesleyche/SrcExpl'

"与snipMate类似，暂时没有用
""Bundle 'Valloric/YouCompleteMe'
"Bundle 'UltiSnips'

"在()，""，甚至html标签之间快速跳转
Bundle 'matchit.zip'

"高亮markdown文档
Bundle 'plasticboy/vim-markdown'

"Tab键补全
""Bundle 'ervandew/supertab'

Bundle 'reinh/vim-makegreen'

Bundle 'fs111/pydoc.vim'

"显示Undo历史"
Bundle 'sjl/gundo.vim'

Bundle 'alfredodeza/pytest.vim'

"好叼的插件，用以判断是否有语法错误，python代码是否符合PEP8规范
Bundle 'scrooloose/syntastic'

"indent line
"Bundle 'Yggdroot/indentLine'
"let g:indentLine_char = '┊'

filetype plugin indent on    " required!



""""""""""""""""""""""
"colors
""""""""""""""""""""""
set t_Co=256
set background=dark "this line must occur before next line
colorscheme molokai


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"some skills
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"instruction for me
"
"ctrl+w < #mutil windows
"ctrl+w >
"ctrl+w h/j/k/l
"ctrl+w -
"ctrl+w +
"
"<leader>o
"<leader>i tabular
"<F7>
"<F8>
"1. % va}Ok
"2. [[ ]]
"3. '' last location
"4. mx
"5. `x
"6. >>
"7. <<
"8. '. last edit
"9. Fx Tx fx tx
"10. * # search
"12. bd 一次关闭多个窗口
"13. ctrl + o / ctrl + i 上次的位置，可以多次会退
"14. z+. 让当前编辑行位于屏幕中央 z+<Enter> 让当前编辑行位于屏幕上端
"15. 选择 vi" va" vi] va] v2i) v2a)
"16. mutiTab gt gT :tabedit :tabmove :tabnew
"17. gD 跳到局部变量的定义处
"map <leader>n :NERDTree<CR>
"nmap <leader>o :CommandT<CR>
"map <leader>i :Tab/
"map <leader>m :MRU<CR>



""""""""""""""""""""""
"some skills
""""""""""""""""""""""

"replace \ which is default value of leader  with ,
let mapleader=","

"insert a blank line before this line
map tt O<Esc>j
"
"use ; replace with :, you can hit keyboard more quickly
nnoremap ; :
"
"change word to uppercase, I love this very much
inoremap <C-u> <esc>gUiwea

"quickly moving from insert mode to normal mode
vnoremap u <nop>
vnoremap gu u

"Keep the cursor in place while joining limes
nnoremap J mzJ'z

"strip all trailing whitespace in the current file
nnoremap <leader>w :%s/\s\+$//<cr>:let @/=''<CR>
inoremap jj <Esc>

"Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>



" Specify the behavior when switching between buffers
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry



" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" Remember info about open buffers on close
set viminfo^=%

"reselect the text that was just pasted
nnoremap <leader>V V`]

"select all texts
nnoremap <leader>v ggvG$

"Select the contents of the current line, excluding indentation.
nnoremap vv ^vg_

"find next char
noremap <CR> ;

inoremap <C-a> <ESC>I
inoremap <C-e> <ESC>A
nnoremap gg mzgg
nnoremap G mzG
nnoremap j gj
nnoremap k gk

"open a new vertical split and switch over to it.
nnoremap <leader>sp <C-w>v<C-w>l

"quickly open up my /.vimrc file in a vertically
nnoremap <leader>ev <C-w><C-v>:	e $MYVIMRC<cr>

"switch between panels
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

map <C-o> <C-w>o
"map <C-r> <C-w>r
map <C-=> <C-w>=
map <C-left> <C-w>+
map <C-right> <C-w>-

"switch between windows
map <S-h> <C-pageUp>
map <S-l> <C-pagedown>

map <leader>tn :tabnew<CR>
map <leader>to :tabonly<CR>
map <leader>tc :tabclose<CR>
map <leader>tm :tabmove

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/



""""""""""""""""""""""
"system clipboard interaction
""""""""""""""""""""""
noremap <leader>y "+y
vnoremap <leader>y "+y
vnoremap <leader>p "+p
noremap <leader>p "+p



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"some settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""
"Quickly Run
""""""""""""""""""""""
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"
    if &filetype == 'c'
        exec "!g++ % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'cpp'
        exec "!g++ % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'java'
        exec "!javac %"
        exec "!time java %<"
    elseif &filetype == 'sh'
        :!time bash %
    elseif &filetype == 'python'
        exec "!time python2.7 %"
    elseif &filetype == 'html'
        exec "!firefox % &"
    elseif &filetype == 'go'
"        exec "!go build %<"
        exec "!time go run %"
    elseif &filetype == 'mkd'
        exec "!~/.vim/markdown.pl % > %.html &"
        exec "!firefox %.html &"
    endif
endfunc



""""""""""""""""""""""
"tab setting
""""""""""""""""""""""
set tabstop=4 "Tab键的宽度
set shiftwidth=4 "统一缩进为4"
set softtabstop=4 ""
set expandtab "用空格代替Tab"



""""""""""""""""""""""
"set fold
""""""""""""""""""""""
map <space> zi
set foldmethod=indent



""""""""""""""""""""""
"a few options that just make things better and other settings
"http://stevelosh.com/blog/2010/09/coming-home-to-vim
""""""""""""""""""""""
set listchars=tab:\ \ ,trail:.
set encoding=utf-8
"Set Unix as the standard encoding and en_US as the Standard language
set ffs=unix,dos,mac
set scrolloff=3 "how many lines to boundary
set autoindent
"set to auto read when a file is changed from the outside
set autoread
"set smartindent
set showmode
set showcmd "回显输入的命令
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline " 高亮光标所在行
set ttyfast
"always dispaly the postion of cursor
set ruler
set backspace=indent,eol,start "解除Backspace 的限制
set laststatus=2
set relativenumber "显示相对行号
set undofile "undo file
"Ignore compiled files
set wildignore=*.o,*~,*.prc
"Don't redraw while executing macros
set lazyredraw
"get rid of all the crap that vim does to be vi compatible
set nocompatible
"prevents some security exploits
set modelines=0

"No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

"Enable filetype plugins
filetype plugin on
filetype indent on
let &termencoding=&encoding
set fileencodings=utf-8,gbk,ucs-bom,cp936
set completeopt=longest,menu



""""""""""""""""""""""
"backup
""""""""""""""""""""""
set backup
set noswapfile
set undodir=~/.vim/tmp/undo/  "undo files
set backupdir=~/.vim/tmp/backup/  "backups
set directory=~/.vim/tmp/swap/  "swap files



""""""""""""""""""""""
"The next thing I do is tame searching/moving
""""""""""""""""""""""
set ignorecase "make vim deal with case-sensitive search intelligently.
set smartcase
set gdefault   "apply subsititutions globally on lines.
set incsearch  "highlight search results.
"Show matching brackets when text indicator is over them
set showmatch
"How many tehths of a second to blink when matching brackets
set mat=2
set hlsearch
"noh clear highlight  just type: ,<space>
nnoremap <leader><space> :noh<cr>



""""""""""""""""""""""
"show a colored column at 85 characters
"makes vim handle long lines correctly
""""""""""""""""""""""
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85
set autowrite



""""""""""""""""""""""
" Buffer
""""""""""""""""""""""
"close the current buffer
map <leader>bd :Bclose<CR>
map <leader>ba :1,1000 bd!<CR>



""""""""""""""""""""""
" The c program language
""""""""""""""""""""""
set nocp incsearch
set cinoptions=:0,p0,t0
set cinwords=if,else,while,do,for,switch,case,typedef,define,include
set formatoptions=tcqr
set cindent
syntax on
syntax enable



""""""""""""""""""""""
"frame
""""""""""""""""""""""
ab fu  #include "apue.h"<Enter><Enter>int main(int argc, char* argv[])<Enter>{<Enter>exit(0);<Enter>}<Esc>
"c框架frame
ab fc  #include <stdio.h><Enter><Enter>int main(int argc, char* argv[])<Enter>{<Enter><Tab>return 0;<Enter>}<ESC>
"c++框架frame
ab fcpp  #include <iostream><Enter>using namespace std;<Enter><Enter>int main(int argc, char* argv[])<Enter>{<Enter><Tab>return 0;<Enter>}<Esc>



""""""""""""""""""""""
"reset statusline
""""""""""""""""""""""
if has("statusline")
set statusline+=%F%m%r%h%w\ %=%{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\"}\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
endif




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""plugin""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""
"ctags & taglist<F7>
""""""""""""""""""""""
" Use ctrl+] go to defination of functions or variants
" Use ctrl+T go back previous position
set tags=tags;
set autochdir
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=0
let Tlist_Sort_Type='name'
let Tlist_Exit_OnlyWindow=1
let Tlist_Show_Menu=1
let Tlist_Max_Submenu_Items=10
let Tlist_Max_Tag_length=20
let Tlist_Use_SingleClick=0
let Tlist_Auto_Open=0
let Tlist_Close_On_Select=0
let Tlist_File_Fold_Auto_Close=1
let Tlist_GainFocus_On_ToggleOpen=0
let Tlist_Process_File_Always=1
let Tlist_WinHeight=10
let Tlist_WinWidth=33
let Tlist_Use_Horiz_Window=0
map <F7> :Tlist<CR>



""""""""""""""""""""""
" SrcExpl<F8>
""""""""""""""""""""""
nmap <F8> :SrcExplToggle<CR>
let g:SrcExpl_winHeight = 8
let g:SrcExpl_refreshTime = 100
let g:SrcExpl_jumpKey = "<ENTER>"
let g:SrcExpl_gobackKey = "<SPACE>"

"In order to Avoid conflicts, the Source Explorer should know what plugins
"are using buffers. And you need add their bufname into the list below
"according to the command ":buffers!"
let g:SrcExpl_pluginList = [
        \ "__Tag_List__",
		\ "__MRU_Files__",
		\ "NERD_tree_1",
		\ "-MiniBufExplorer-",
        \ "_NERD_tree_",
        \ "Source_Explorer"
    \ ]

" // Enable/Disable the local definition searching, and note that this is not
" // guaranteed to work, the Source Explorer doesn't check the syntax for now.
" // It only searches for a match with the keyword according to command 'gd'
let g:SrcExpl_searchLocalDef = 1
let g:SrcExpl_isUpdateTags = 0
let g:SrcExpl_updateTagsCmd = "ctags --sort=foldcase -R ."

"Set "<F12>" key for updating the tags file artificially
let g:SrcExpl_updateTagsKey = "<F12>"



""""""""""""""""""""""
" NERDTree.vim<F9>
""""""""""""""""""""""
map <F9> :NERDTreeToggle<CR>
let NERDTreeMinimalUI=0
let NERDTreeWinPos=1



""""""""""""""""""""""
" gundo.vim
""""""""""""""""""""""
nmap <F10> :GundoToggle<CR>



""""""""""""""""""""""
" miniBufExp
""""""""""""""""""""""
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
""let g:miniBufExplorerMoreThanOne = 1



""""""""""""""""""""""
" rain_bow_parenthese.vim
""""""""""""""""""""""
"自动加载 Rain_bow_parenthese 插件
au Syntax *  RainbowParenthesesToggleAll
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0



""""""""""""""""""""""
" doxygenToolkit
""""""""""""""""""""""
"这样就不用每次需要输入作者的名字了
let g:DoxygenToolkit_authorName="Mingxing LAI"
let g:DoxygenToolkit_brifTag_funcName="yes"
"let g:DoxygenToolkit_blockHeader="---------------"
"let g:DoxygenToolkit_blockFooter="---------------"

map <leader>da :DoxAuthor<CR>
map <leader>df :Dox<CR>
map <leader>db :DoxBlock<CR>
map <leader>dc O/* */<Left><Left>
map <leader>dl : DoxBlock<CR>



""""""""""""""""""""""
" mru.vim
""""""""""""""""""""""
let MRU_Exclude_Files='.*\.vim$'
map <leader>m :MRU<CR>



""""""""""""""""""""""
" Tabular.vim
""""""""""""""""""""""
nmap <Leader>i :Tab /
nmap <Leader>i= :Tab /=<CR>
vmap <Leader>i= :Tab /=<CR>
nmap <Leader>i: :Tab /:\zs<CR>
vmap <Leader>i: :Tab /:\zs<CR>



""""""""""""""""""""""
" Powerline.vim
""""""""""""""""""""""
let t_Co=256
set laststatus=2
let g:Powerline_symbols='unicode'



""""""""""""""""""""""
" Yankring.vim
""""""""""""""""""""""
"ctrl + p
"ctrl + n
nnoremap <leader>y :YRShow<CR>
let g:yankring_history_file = '.my_yankring_history_file'
