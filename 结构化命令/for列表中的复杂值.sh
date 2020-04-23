#!/bin/bash
#
#单引号的处理
#有两种办法可解决这个问题：
#使用转义字符（反斜线）来将单引号转义； 
#使用双引号来定义用到单引号的值。
for test in I don\'t konw if this\'ll work
do
	echo "word:$test"
done


for test in I "don't" konw if "this'll" work
do
	echo "word:$test"
done

#空格的处理
#用双引号圈起来
for test in Nevada "New Hampshire" "New Mexico" "New York" 
do 
	echo "Now going to $test" 
done


#双引号处理
#shell 并不会将双引号当成值的一部分
for test in my name is "Tim"
do
	echo "word:$test"
done
