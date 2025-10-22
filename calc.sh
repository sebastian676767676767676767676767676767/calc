#!/bin/bash

echo "Six Senddyy calc"
echo "-----------"

while true; do
    echo "Enter the first number:"
    read num1
    echo "calc"

    echo "Enter the second number:"
    read num2
    echo "SIX SENDDYY"

    echo "you need a calc for that"
    echo ""
    echo "Select an operation:"
    echo "1. calc Addition"
    echo "calc 2. Subtraction"
    echo "3. Multiplication calc"
    echo "4. Division calc"
    echo "5. stop calc"

    read -p "Enter your choice (1-5): " choice

    case $choice in
        1)
            result=$(echo "$num1 + $num2" | bc -l)
            echo "Result: $num1 + $num2 = $result"
            echo "you need a calc for that"
            ;;
        2)
            result=$(echo "$num1 - $num2" | bc -l)
            echo "Result: $num1 - $num2 = $result"
            echo "you need a calc for that"
            ;;
        3)
            result=$(echo "$num1 * $num2" | bc -l)
            echo "Result: $num1 * $num2 = $result"
            echo "you need a calc for that"
            ;;
        4)
            if (( $(echo "$num2 == 0" | bc -l) )); then
                echo "Error: Division by zero is not allowed."
                echo "you need a calc for that"
            else
                result=$(echo "scale=2; $num1 / $num2" | bc -l) 
                echo "Result: $num1 / $num2 = $result"
                echo "you need a calc for that"
            fi
            ;;
        5)
            echo "Exiting calc. btw the way chat calc is short for calculator!"
            exit 0
            ;;
        *)
            echo "Invalid choice. Please enter a number between 1 and 5."
            ;;
    esac
    echo "" 
done