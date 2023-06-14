#!/bin/bash

calculate_average() {
    local mark1=$1
    local mark2=$2
    local mark3=$3

    local sum=$((mark1 + mark2 + mark3))
    local average=$((sum / 3))

    echo $average
}


determine_grade() {
    local average=$1

    if ((average >= 90)); then
        echo "Grade: S"
    elif ((average >= 80)); then
        echo "Grade: A"
    elif ((average >= 60)); then
        echo "Grade: B"
    elif ((average >= 40)); then
        echo "Grade: P"
    else
        echo "Grade: F"
    fi
}


echo "Enter the marks for three subjects:"

echo "Subject 1:"
read mark1

echo "Subject 2:"
read mark2

echo "Subject 3:"
read mark3


average=$(calculate_average $mark1 $mark2 $mark3)


determine_grade $average

