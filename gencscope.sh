#!/bin/bash
TARGET='/home/zjs/workspace/cscope.files'
find $1 -name "*.h" -o -name "*.cpp" -o -name "*.c" -o -name "*.hpp" -o -name "*.cc" > ${TARGET}
mycwd=`pwd`
cd $1
ctags -R *
cscope -Rbkq -i ${TARGET}
cd ${mycwd}
