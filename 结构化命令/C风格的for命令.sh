#!/bin/bash

#example001
for (( i = 0; i < 10; i++ )); do
	echo $i
done

#example002
for (( i = 0; i < 10; i++ ))
do
	echo $i
done

#example003
#多个变量
#。循环会单独处理每个变量，你可以为每 个变量定义不同的迭代过程。尽管可以使用多个变量，但你只能在for循环中定义一种条件
for (( i = 0,j=10; i < 10; i++,j-- ))
do
	echo "$i - $j"
done