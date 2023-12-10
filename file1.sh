#!/bin/bash

echo "Enter marks for subject 1:"
read m1

echo "Enter marks for subject 2:"
read m2

echo "Enter marks for subject 3:"
read m3

echo "Enter marks for subject 4:"
read m4

per=$(echo "scale=2; ($m1 + $m2 + $m3 + $m4) / 4.0" | bc)

if [ $m1 -ge 35 ] && [ $m2 -ge 35 ] && [ $m3 -ge 35 ] && [ $m4 -ge 35 ]; then
    if [ $(echo "$per >= 85" | bc) -eq 1 ]; then
        echo "distinction"
    elif [ $(echo "$per >= 60" | bc) -eq 1 ]; then
        echo "first class"
    elif [ $(echo "$per >= 50" | bc) -eq 1 ]; then
        echo "second class"
    else
        echo "pass"
    fi
else
    echo "fail"
fi
