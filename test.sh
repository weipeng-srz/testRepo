#!/bin/bash

str="192.168.31.65"
OLD_IFS="$IFS" #保存旧的分隔符
IFS="."
array=($str)
IFS="$OLD_IFS" # 将IFS恢复成原来的
for i in "${!array[@]}"; do
    echo "$i=>${array[i]}"
done

log=$(git log --shortstat --pretty=format:%ce,%h,%s%@end@%)
echo "$log[1]"

log=${log//%@end@%/}
arr=($log)
IFS="$OLD_IFS"
for i in "${!arr[@]}"; do
	echo "$i=>${arr[i]}"
done


str="wangwei;@end@david;@end@rose";
str=${str//@end@/ };
arr1=($str);
for i in "${!arr1[@]}"; do 
	echo "$i=>${arr1[i]}"
done	
