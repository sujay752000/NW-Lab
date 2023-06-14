#!/bin/bash

find_largest() {
    local num1=$1
    local num2=$2
    local num3=$3

    if [ $num1 -ge $num2 ] && [ $num1 -ge $num3 ]; then
        echo $num1
    elif [ $num2 -ge $num1 ] && [ $num2 -ge $num3 ]; then
        echo $num2
    else
        echo $num3
    fi
}


echo "Enter the first number:"
read num1

echo "Enter the second number:"
read num2

echo "Enter the third number:"
read num3


largest=$(find_largest $num1 $num2 $num3)


echo "Largest number: $largest"

