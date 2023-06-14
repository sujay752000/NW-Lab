#!/bin/bash

perform_addition() {
    local num1=$1
    local num2=$2
    local sum=$((num1 + num2))
    echo "Addition: $num1 + $num2 = $sum"
}


perform_subtraction() {
    local num1=$1
    local num2=$2
    local difference=$((num1 - num2))
    echo "Subtraction: $num1 - $num2 = $difference"
}


perform_multiplication() {
    local num1=$1
    local num2=$2
    local product=$((num1 * num2))
    echo "Multiplication: $num1 * $num2 = $product"
}


perform_division() {
    local num1=$1
    local num2=$2

    if [ $num2 -eq 0 ]; then
        echo "Error: Division by zero is not allowed."
    else
        local quotient=$(bc <<< "scale=2; $num1 / $num2")
        echo "Division: $num1 / $num2 = $quotient"
    fi
}


echo "Enter the first number:"
read num1

echo "Enter the second number:"
read num2


perform_addition $num1 $num2
perform_subtraction $num1 $num2
perform_multiplication $num1 $num2
perform_division $num1 $num2

