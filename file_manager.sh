#!/bin/bash
# Создание директории
directory="directory_1"
mkdir -p $directory
echo "Директория '$directory' создана."

# Переход в директорию
cd $directory

# Создание файлов
for i in {1..3}; do
  touch "file_$i.txt"
  echo "Файл file_$i.txt создан."
done

# Удаление файлов
for i in {1..3}; do
  rm "file_$i.txt"
  echo "Файл file_$i.txt удален."
done

# Возврат в исходную директорию
cd ..
rmdir $directory
echo "Директория '$directory' удалена."
