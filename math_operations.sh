#!/bin/bash

add() {
    echo "$(($1 + $2))"
}

subtract() {
    echo "$(($1 - $2))"
}

multiply() {
    echo "$(($1 * $2))"
}

divide() {
    if [ $2 -eq 0 ]; then
        echo "Ошибка"
    else
        echo "$(($1 / $2))"
    fi
}

echo "Введите первое число:"
read num1
echo "Введите второе число:"
read num2
echo "Выберите операцию (+, -, *, /):"
read operation

case $operation in
    "+")
        add $num1 $num2
        ;;
    "-")
        subtract $num1 $num2
        ;;
    "*")
        multiply $num1 $num2
        ;;
    "/")
        divide $num1 $num2
        ;;
    *)
        echo "Ошибка"
        ;;
esac
