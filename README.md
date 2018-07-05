# vim-tools
十分全面的vim开发工具

YouCompleteMe安装步骤：
1. 下载YouCompleteMe
2. 安装libclang(官网下载二进制文件)
3. 编译构建ycm_core库
	3.1 创建一个目录放置中间过程产生的文件
	3.2 生成makefile 
		1) 不需要C家族的语义化补全
		cmake -G "Unix Makefiles" . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
		2) 需要C家族的语义化补全
		cmake -G "Unix Makefiles" -DUSE_SYSTEM_BOOST=ON -DUSE_SYSTEM_LIBCLANG=ON . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
	3.3 构建ycm_core
		#  --config Release 这个构建选项进针对 Windows
		cmake --build . --target ycm_core --config Release
4. 配置.ycm_extra_conf.py文件
