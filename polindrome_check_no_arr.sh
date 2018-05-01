#! /bin/bash

str1=$1

str2="$(echo $str1 |rev)"


if [ "$str1" == "$str2" ]; then echo "this is a polindrome"; else echo "this is NOT a polindrome" ;fi
