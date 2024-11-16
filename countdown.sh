#!/bin/bash
echo "Укажите число для начала отсчета:"
read count

while [ $count -ge 0 ]; do
  echo $count
  ((count--))
  sleep 1  # Задержка в 1 секунду для наглядности
done


