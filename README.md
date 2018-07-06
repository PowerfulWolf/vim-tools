# vim-tools
十分全面的vim开发工具

* 一. 功能介绍
>1. .vim工具包包含：
>>a, after, autoload, cscope, ctags, grep, minibufexpl, nerdtree, supertab, taglist, vim-pathogen, winmanager等插件工具<br>
>2. .vimrc: vim环境的配置文件
>>包括：语法高亮、快捷键设置、插件使用配置等

* 二. 安装介绍
>1. 复制.vim 文件至用户目录
>2. 复制.vimrc 至用户目录
>3. 修改.vimrc 相关路径为当前用户工作目录路径
>4. 配置PATH路径，加入ctags，cscope插件路径

* 三. 其他
>a) YouCompleteMe插件安装步骤
>>1. 下载YouCompleteMe
```
git clone --recursive https://github.com/Valloric/YouCompleteMe.git
```
>>检查分支完整性<br>
```
git submodule update --init --recursive
```
>>2. 安装libclang(官网下载二进制文件)，并配置用户编译环境变量
>>3. 编译构建ycm_core库
>>>3.1 创建ycm_build目录放置中间过程产生的文件<br>
>>>3.2 进入ycm_build目录生成makefile<br> 
>>>>3.2.1 不需要C家族的语义化补全<br>
```
cmake -G "Unix Makefiles" . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
```
>>>>3.2.2 需要C家族的语义化补全<br>
```
cmake -G "Unix Makefiles" -DUSE_SYSTEM_BOOST=ON -DUSE_SYSTEM_LIBCLANG=ON . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
```
>>>3.3 编译构建ycm_core<br>
>>>--config Release 这个构建选项进针对 Windows<br>
```
cmake --build . --target ycm_core --config Release
```
>>4. 配置.ycm_extra_conf.py文件
