#!/bin/bash

# performing simple arithmetic

num1=50
num2=5

sum=$((num1 + num2))
echo "$sum"

multiply=$((num1 * num2))
echo "$multiply"


# Function to perform arithmetic operations

#!/bin/bash

# Prompt user for input
echo "Enter first number:"
read num1

echo "Enter operator (+, -, *, /):"
read operator

echo "Enter second number:"
read num2

# Perform arithmetic operation
case $operator in
    +) result=$((num1 + num2)) ;;
    -) result=$((num1 - num2)) ;;
    \*) result=$((num1 * num2)) ;;
    /)
        if [ "$num2" -eq 0 ]; then
            echo "Error: Division by zero is not allowed"
            exit 1
        fi
        result=$((num1 / num2)) ;;  # Integer division
    *)
        echo "Invalid operator"
        exit 1 ;;
esac

# Display result
echo "Result: $result"


