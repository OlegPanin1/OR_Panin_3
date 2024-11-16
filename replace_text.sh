#!/bin/bash

if [ $# -ne 3 ]; then
    echo "Использование: $0 имя_файла старое_слово новое_слово"
    exit 1
fi

filename=$1
old_word=$2
new_word=$3

if [ ! -f "$filename" ]; then
    echo "Файл $filename не найден"
    exit 1
fi
 
sed -i "s/$old_word/$new_word/g" "$filename"

echo "Замена: $old_word -> $new_word в файле $filename"
