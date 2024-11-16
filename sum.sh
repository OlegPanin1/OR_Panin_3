#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Использование: $0 число1 число2"
    exit 1
fi

num1=$1
num2=$2

sum=$((num1 + num2))
echo "Сумма: $sum"

