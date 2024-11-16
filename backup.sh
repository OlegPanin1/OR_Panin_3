#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Копирование: $0 исходная_папка целевая_папка"
    exit 1
fi

source_dir=$1
dest_dir=$2
current_date=$(date +"%Y-%m-%d")

for file in "$source_dir"/*; do
    filename=$(basename "$file")
    cp "$file" "$dest_dir/${filename%.*}_$current_date.${filename##*.}"
done

echo "Копирование завершено"
