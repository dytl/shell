#!/bin/bash
#$*
count=0

for val in "$*"
do
	echo $val
	count=$[ $count + 1 ]
done
echo "\$* val count：$count"

#$@
count=0
for val in "$@"
do
	echo $val
	count=$[ $count + 1 ]
done
echo "\$@ val count：$count"