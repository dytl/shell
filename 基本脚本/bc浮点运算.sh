#!/bin/bash
# variable=$(echo "options; expression" | bc)
# scale变量的默认值是0,在scale值被设置前，bash计算器的计算结果不包含小数位

var1=$(echo "scale=4; 5.44 / 5" | bc) 
echo The answer is $var1