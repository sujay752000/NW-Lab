#!/bin/bash

convert_to_lowercase() {
    local input_file=$1
    local output_file="result.txt"


    tr '[:upper:]' '[:lower:]' < "$input_file" > "$output_file"


    line_count=$(wc -l < "$output_file")
    word_count=$(wc -w < "$output_file")
    character_count=$(wc -m < "$output_file")

    echo "Line count: $line_count"
    echo "Word count: $word_count"
    echo "Character count: $character_count"


    sorted_file="sorted_result.txt"
    sort -r "$output_file" > "$sorted_file"


    echo "Resultant file (in descending order):"
    cat "$sorted_file"


    rm "$output_file" "$sorted_file"
}


echo "Enter the input file:"
read input_file


convert_to_lowercase "$input_file"

