#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Использование: $0 имя_файла"
    exit 1
fi

filename=$1

if [ ! -f "$filename" ]; then
    echo "Файл $filename не найден"
    exit 1
fi

while IFS= read -r line; do
    echo "$line"
done < "$filename"
