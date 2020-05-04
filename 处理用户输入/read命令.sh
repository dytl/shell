#!/bin/bash

##001 
#通过read 变量赋值
echo -n "Enter parameter value:"
read val
echo "Parameter value is $val"

##002 
#-p 命令行指定提示符
read -p "Enter parameter value:" val
echo "Parameter value is $val"

##003 
#环境变量REPLY:命令行中不指定变量,
#read命令会将它收到的任何数据都放进REPLY
read -p "Enter parameter value:"
echo
echo "Parameter value is $REPLY"

##004
#超时 -t选项来指定一个计时器,单位是秒
#当计时器过期后，read命令会返回一个非零退出状态码
if read -t 3 -p "Enter parameter value:"
then
	echo "Parameter value is $REPLY"
else
	echo 'Timeout'
fi


##005 隐藏方式读取
#-s选项可以避免在read命令中输入的数据出现在显示器上
#（实际上，数据会被显示，只是 read命令会将文本颜色设成跟背景色一样）
read -s -p "Enter your password:" password
echo
echo "Your password is $password"

##006 从文件中读取
#用read命令来读取Linux系统上文件里保存的数据。
#每次调用read命令，它都 会从文件中读取一行文本。
#当文件中再没有内容时，read命令会退出并返回非零退出状态码。
cat test.sh | while read line 
do
	echo "Line $count: $line"
	count=$[ $count + 1] 
done

##007 接受多个值
# -a 以数组的形式接受多个值
# ${#fruits[@]} 数组元素个数${#fruits[*]}也可以
# ${fruits[@]} 列出数组中所有的元素${fruits[*]}也可以，区别与$*,$@一样
echo -n "Enter your favorite fruit:"
read -a fruits
echo
echo "fruits count: ${#fruits[@]}"
for val in "${fruits[@]}"
do
	echo $val
done

##008
#-n选项还允许检测箭头键和某些其他不寻常的键,但不包含回车键
# -n N 接受N个字符
# 用多个参数选项较麻烦，因为它们需要按正确的顺序排列。
read -s -n1 -p "Hit a key " keypress
echo; 
echo "Keypress was "\"$keypress\""."

##009
# -r 通常，在读取输入期间，输入\会取消换行,r选项使输入的\当做普通字符处理
read -r -p "Enter parameter value:" val
echo "Parameter value is $val"
########the resutl:########
$ ./test.sh
Enter parameter value:abc\
Parameter value is abc\


read  -p "Enter parameter value:" val
echo "Parameter value is $val"
########the resutl:########
$ ./test.sh
Enter parameter value:abc\
def\
ghi
Parameter value is abcdefghi
