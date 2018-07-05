

"启动时不显示捐赠
set shortmess=atl

"设置写入和退出快捷键
nmap <C-w> :w<CR>
nmap <C-z> :qa!<CR>
nmap <silent> <S-z> :q!<CR>

"编码设置
set helplang=cn
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936

"语法高亮
syntax enable
syntax on

"检测文件类型
filetype on

"检测文件类型插件
filetype plugin on
filetype plugin indent on

"不设定在插入状态下无法用退格键和Delete键删除回车符号
set nocompatible "关闭有关vi的一致性模式，避免以前版本的一些bug和局限
set backspace=2
set whichwrap+=<,>,h,l

"可以在buffer的任何地方使用鼠标
set mouse=a
"set selection=exclusive
"set selectmode=mouse,key

"自动格式化
set formatoptions=tcrqn

"显示行号
set nu

"上下可视行数
set scrolloff=8

"replace tab with space
set expandtab

"设置tab长度为4
set tabstop=4

"设置backspace可以一次删除4个空格
set softtabstop=4

"设定 << 和 >> 命令移动时候的宽度为4
set shiftwidth=4
set smarttab
set history=1024

"不突出显示当前行
set nocursorline

"覆盖文件时不备份
set nobackup

"自动切换当前目录为当前文件所在的目录
set autochdir

"搜索时忽略大小写，但在有一个或以上大写字母时仍大小写敏感
set ignorecase
set smartcase

"实时搜索
set incsearch

"搜索时高亮显示被找到的文本
set hlsearch

"关闭错误声音
set noerrorbells
set novisualbell

"智能缩进
set smartindent

"设定命令行的行数为1
set cmdheight=1

"显示状态栏
set laststatus=2

"显示括号配对情况
set showmatch
set matchtime=5

"设定配色方案
colorscheme evening

"vim-pathogen
call pathogen#infect()

"taglist
let Tlist_Auto_Open=1 "默认打开Taglist
let Tlist_Auto_Highlight_Tag=1
let Tlist_Auto_Update=1
let Tlist_Use_SingleClick=1
"let Tlist_WinWidth=30
let Tlist_Process_File_Always=1
let Tlist_Sort_Type="name" "按照名称排序
let Tlist_Use_Right_Window=1 "在右侧显示窗口
let Tlist_Compart_Format=1 "压缩方式
let Tlist_Show_One_File=1 "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow=1 "如果只有一个buffer,kill 窗口也kill掉buffer
let Tlist_File_Fold_Auto_Close=0 "不要关闭其他文件的tags
let Tlist_Enable_Fold_Column=0 "不显示折叠树
nmap <silent> <F3> :Tlist<CR>

"设置tags
"nmap <F10> :!ctags -R --c++-kind=+p --fields=+iaS --extra=+q<CR> 
"set autochdir "自动切换目录
set tags=tags; "自动查找tags


"nerdtree
let NERDTreeChDirMode=2 "选中root即设置成当前目录
let NERDTreeQuitOnOpen=0 "打开文件时开启树
let NERDTreeShowBookmarks=1 "显示书签
let NERDTreeDirArrows=1 "目录箭头 1.显示箭头 0.传统
let NERDTreeMinimalUI=1 "不显示帮助面板
let NERDTreeMouseMode=2
let NERDChristmasTree=1
"let NERDTreeHijackNetrw=1
nmap <silent> <F2> :NERDTreeMirror<CR>
nmap <silent> <F2> :NERDTreeToggle<CR>

"winmanager
"let g:NERDTree_title="[NERDTree]"
"let g:winManagerWindowLayout="NERDTree|Taglist"
"let g:winManagerWindowLayout='FileExplorer'
"let g:winManagerWidth=30
"let g:AutoOpenWinManager=1
"function! NERDTree_Start()
"    exec 'NERDTree'
"endfunction
"function! NERDTree_IsValid()
"    return 1
"endfunction
"nmap <silent> <F6> :WMToggle<CR>

"quickfix
nmap <silent> <F9> :botright copen<CR> 
"获得最大宽度的打开
nmap <silent> <F10> :cclose<CR> 
"关闭quickfix窗口
nmap <silent> <F7> :cp<CR> 
"跳转到上一项
nmap <silent> <F8> :cn<CR> 
"跳转到下一项

"cscope
set cscopequickfix=s-,c-,d-,i-,t-,e- "设定是否使用quickfix窗口来显示cscope结果

"查找C语言符号，即查找函数名、宏、枚举值等出现的地方
nmap \s :cs find s <C-R>=expand("<cword>")<CR><CR> 
"查找函数、宏、枚举等定义的位置，类似ctags所提供的功能
nmap \g :cs find g <C-R>=expand("<cword>")<CR><CR> 
"查找调用本函数的函数
nmap \c :cs find c <C-R>=expand("<cword>")<CR><CR>
"查找指定的字符串
nmap \t :cs find t <C-R>=expand("<cword>")<CR><CR>
"查找egrep模式，相当于egrep功能，查找速度快
nmap \e :cs find e <C-R>=expand("<cword>")<CR><CR>
"查找并打开文件，类似vim的find功能
nmap \f :cs find f <C-R>=expand("<cfile>")<CR><CR>
"nmap .i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
"查找包含本文件的文件
nmap \i :cs find i <C-R>=expand("<cfile>")<CR><CR>
"查找本函数调用的函数
nmap \d :cs find d <C-R>=expand("<cword>")<CR><CR>

"load cscope
if has("cscope")
    set csprg=/home/zjs/.vim/bundle/cscope/bin/cscope
    set csto=1
    set cst
    set nocsverb
"add any database in current directory
    if filereadable("cscope.out")
        cs add cscope.out
    endif
    set csverb
endif

"miniBufExplorer
let g:miniBufExplMapCTabSwitchBufs=1 "支持<C-Tab><C-S-Tab>
"let g:miniBufExplMapWindowNavVim=1 "支持<C-j,i,k,l>转换窗口
"let g:miniBufExplMapWindowNavArrows=1 "支持<C-箭头>转换窗口
let g:miniBufExplModSelTarget=1 
let g:miniBufExplMoreThanOne=0
let g:miniBufExplMaxSize=1
nmap <silent> <F11> :TMiniBufExplorer<CR>
nmap <C-j> :bp<CR> "打开当前buffer的前一个buffer
nmap <C-l> :bn<CR> "打开当前buffer的后一个buffer

"a.vim
nmap <silent> <F4> :A<CR>

"Grep.vim
nmap <F12> :Grep<cr>

"omni
"let OmniCpp_NamespaceSearch=1
"let OmniCpp_GlobalScopeSearch=1
"let OmniCpp_ShowAccess=1
"let OmniCpp_ShowPrototypeInAbbr=1
"let OmniCpp_MayCompleteDot=1
"let OmniCpp_MayCompleteArrow=1
"let OmniCpp_MayCompleteScope=1
"let OmniCpp_DefaultNamespace=["std"]

"自动补全设置
set completeopt=longest,menu "让vim的补全菜单行为和一般IDE一致
autocmd InsertLeave * if pumvisible() == 0|pclose|endif "离开插入模式后自动关闭预览窗口
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>" "回车选中
"上下左右键行为，会显示其他信息
inoremap <expr> <Down> pumvisible() ? "\<C-n>" : "\<Down>" 
inoremap <expr> <Up> pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp> pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"
"ycm 默认tab s-tab 和自动补全冲突
"let g:ycm_key_list_select_completion=['<c-n>']
let g:ycm_key_list_select_completion=['Down']
"let g:ycm_key_list_previous_completion=['<c-p>']
let g:ycm_key_list_previous_completion=['<Up>']
let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0 "开启加载.ycm_extra_conf.py提示
let g:ycm_collect_identifiers_from_tags_file=1 "开启ycm基于标签引擎
let g:ycm_key_invoke_completion='<M-/>'
"let g:ycm_enable_diagnostic_signs=0
"let g:ycm_enable_diagnostic_highlighting=1
"let g:ycm_min_num_of_chars_for_completion=2 "从第二个字符开始匹配
"let g:ycm_cache_omnifunc=0 "关闭缓存
let g:ycm_open_loclist_on_ycm_diags=1
let g:ycm_seed_identifiers_with_syntax=1 "语法关键字补全
let g:ycm_complete_in_comments=1 "注释中也能补全
let g:ycm_complete_in_strings=1 "字符串输入中补全
let g:ycm_semantic_triggers={'c++':['->','.']}
let g:ycm_collect_identifiers_from_comments_and_strings=0 "注释和字符串中的文字也会被收入补全
"let g:ycm_server_keep_logfiles=0
"let g:ycm_server_log_level='debug'

nnoremap <silent> <F6> :YcmCompleter GoToDefinition<CR>
nnoremap <silent> <F5> :YcmCompleter GoToDeclaration<CR>
"nnoremap <F5> :YcmCompleter GoToDefinitionElseDeclaration<CR> "跳转定义处

"加速补全
let g:SuperTabRetainCompletionType=1 
"0-不记录上次的补全方式
"1-记住上次的补全方式直到用其他的补全命令改变它 
"2-记住上次的补全方式直到按ESC退出插入模式
let g:SuperDefaultCompletionType="<C-X><C-O>"
"设置按下<TAB>后默认的补全方式，默认是<C-P>,现在改为“<C-X><C-O>”

"在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\

"<F5>编译和运行c++
"map <F5> :call CompileRunGpp()<cr>
"func! CompileRunGpp()
"    exec "w"
"   if &filetype=='c'
"       exec "!gcc % -o %<"
"       exec "! ./%<"
"   elseif &filetype=='cpp'
"       exec "!g++ % -o %<"
"       exec "! ./%<"
"   elseif &filetype=='sh'
"       :!./%
"   endif
"endfunc

"<F6>gdb调试
"map <F6> :call Debug()<cr>
"func! Debug()
"    exec "w"
"    exec "!g++ % -o %< -gstabs+"
"    exec "!gdb %<"
"endfunc

