#!/bin/bash

echo "Enter a day (Monday/Tuesday/Wednesday/Thursday/Friday/Saturday/Sunday):"
read day

# Convert the input to lowercase for case-insensitive comparison
day_lowercase=$(echo "$day" | tr '[:upper:]' '[:lower:]')

# Check if the day is a working day or a holiday
case $day_lowercase in
    "monday" | "tuesday" | "wednesday" | "thursday" | "friday")
        echo "$day is a working day."
        ;;
    "sunday")
        echo "$day is a holiday."
        ;;
    *)
        echo "Invalid day entered. Please enter a valid day."
        ;;
esac
