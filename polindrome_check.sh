#! /bin/bash

str1=$1

arr1=( $(echo $str1 |grep -o .) )

#echo "${arr1[@]}"

length=$(expr $(echo $str1 |wc -m) - 1)

if [ $(expr $length % 2)  == "0" ]; then 
	middle=$(expr $length / 2)
else
	middle=$(expr $(expr $length - 1) / 2)
fi

for ((i=0; i<$middle; i++)); do
	if [ "${arr1[$i]}" != "${arr1[$(expr $length - 1)]}" ]; then
		echo "string is NOT a polindrome!"
		exit 1

	else 
		((length--))
	fi
done

echo "$str1 IS a polindrome!!!"

