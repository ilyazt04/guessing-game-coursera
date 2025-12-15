#!/bin/bash

function get_file_count {
    echo $(ls -1 | wc -l)
}

function make_guess {
    echo "How many files are in the current directory?"
    read guess
}

file_count=$(get_file_count)

make_guess

while [[ $guess -ne $file_count ]]
do
    if [[ $guess -lt $file_count ]]
    then
        echo "Your guess is too low. Try again."
    else
        echo "Your guess is too high. Try again."
    fi
    make_guess
done

echo "Congratulations! You guessed the correct number of files."
