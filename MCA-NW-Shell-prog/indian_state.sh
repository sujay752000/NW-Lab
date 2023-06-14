#!/bin/bash

determine_language() {
    local state=$1

    case "$state" in
        "Andhra Pradesh")
            echo "Telugu"
            ;;
        "Assam")
            echo "Assamese"
            ;;
        "Bihar")
            echo "Hindi"
            ;;
        "Himachal Pradesh")
            echo "Hindi"
            ;;
        "Karnataka")
            echo "Kannada"
            ;;
        "Kerala")
            echo "Malayalam"
            ;;
        "Lakshadweep")
            echo "Malayalam"
            ;;
        "Tamil Nadu")
            echo "Tamil"
            ;;
        *)
            echo "Unknown"
            ;;
    esac
}


echo "Enter the name of an Indian state:"
read state_name


main_language=$(determine_language "$state_name")

echo "Main Language: $main_language"

