#!/bin/bash

is_prime() {
    local num=$1

    # 0 and 1 are not prime numbers
    if [ $num -lt 2 ]; then
        return 1
    fi

    for ((i=2; i*i<=num; i++)); do
        if [ $((num % i)) -eq 0 ]; then
            return 1
        fi
    done

    return 0
}


echo "Enter the lower range:"
read lower_range

echo "Enter the upper range:"
read upper_range

count=0

echo "Prime numbers in the range $lower_range to $upper_range are:"


for ((num=lower_range; num<=upper_range; num++)); do
    if is_prime $num; then
        echo $num
        count=$((count + 1))
    fi
done

echo "Total count of prime numbers: $count"

