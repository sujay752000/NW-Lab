#!/bin/bash

is_armstrong() {
    local number=$1
    local temp=$number
    local sum=0
    local digit

    while [ $temp -gt 0 ]; do
        digit=$((temp % 10))
        sum=$((sum + digit * digit * digit))
        temp=$((temp / 10))
    done

    if [ $number -eq $sum ]; then
        echo "The number $number is an Armstrong number."
    else
        echo "The number $number is not an Armstrong number."
    fi
}

echo "Enter a number:"
read input_number


is_armstrong $input_number

