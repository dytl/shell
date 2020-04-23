#!/bin/bash

#代码用test命令测试了每个条目（使 用方括号方法），以查看它是目录（通过-d参数）还是文件（通过-f参数）
#在Linux中，目录名和文件名中包含空格当然是合法的。要适应这种情况，应该将$file变 量用双引号圈起来。如果不这么做，遇到含有空格的目录名或文件名时就会有错误产生。
for file in /home/wwwroot/shell/*
do
	if [ -d "$file" ]
	then
		echo "$file is a directory"
	elif [ -f "$file" ]
	then
		echo "$file is a file"
	fi
done
