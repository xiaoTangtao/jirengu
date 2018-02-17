#!/bin/bash
# touch不会删掉原内容
touch ~/.bashrc
echo `pwd`
echo 'copy上一行的路径'
echo '接下来会打开.bashrc这个文件'
start ~/.bashrc
echo 'export PATH="path:$PATH"' >> ~/.bashrc
echo '将path换成是你刚刚copy的路径'
echo '接着保存文件'
echo '最后关掉Bash再打开'
source ~/.bashrc