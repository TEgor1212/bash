#!/usr/bin/env bash

# Скрипт подсчитывает количество строк в указанном файле

read -rp "Укажите путь к файлу: " file_path

if [[ -z "$file_path" ]]; then
  echo "Ошибка: путь к файлу не может быть пустым."
  exit 1
fi

if [[ ! -f "$file_path" ]]; then
  echo "Ошибка: файл '$file_path' не найден."
  exit 1
fi

line_count=$(wc -l < "$file_path")
echo "Количество строк в файле '$file_path': $line_count"


