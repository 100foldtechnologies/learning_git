#!/bin/bash


# Simple Calculator Script
# second version
# Function to perform addition
add() {
    echo "Result: $(($1 + $2))"
}

# Function to perform subtraction
subtract() {
    echo "Result: $(($1 - $2))"
}

# Function to perform multiplication
multiply() {
    echo "Result: $(($1 * $2))"
}

# Function to perform division
divide() {
    if [ "$2" -ne 0 ]; then
        echo "Result: $(($1 / $2))"
    else
        echo "Error: Division by zero is not allowed."
    fi
}

# Main script
echo "Simple Calculator"
echo "Enter first number:"
read -r num1
echo "Enter second number:"
read -r num2
echo "Enter operation (+, -, *, /):"
read -r op

case $op in
    +)
        add "$num1 $num2"
        ;;
    -)
        subtract "$num1 $num2"
        ;;
    \*)
        multiply "$num1 $num2"
        ;;
    /)
        divide "$num1 $num2"
        ;;
    *)
        echo "Invalid operation. Please use +, -, *, or /."
        ;;
esac
