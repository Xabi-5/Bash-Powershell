#!/bin/bash
math=$((6*2))
echo $math
echo $(( 2 * 2))
echo $(( 2 * 2))

str1="alee"
str2="alee"
if [ $str1 = $str2 ]
then 
    echo "si"

else
    echo "no"
fi

idade=19
echo $idade
(( idade += 10))
echo $idade
echo $0