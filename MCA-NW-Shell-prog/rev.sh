#!/bin/bash


reverse_number() {
    local num=$1
    local reversed=0

    while [ $num -gt 0 ]; do
        local remainder=$((num % 10))
        reversed=$((reversed * 10 + remainder))
        num=$((num / 10))
    done

    echo $reversed
}

echo "Enter a number:"
read input_number


reversed_number=$(reverse_number $input_number)


echo "Reversed number: $reversed_number"

