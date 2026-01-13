#!/usr/bin/env bash

# Скрипт ищет файлы по расширению в текущей директории

read -rp "Введите расширение файла (например, txt или .sh): " ext

if [[ -z "$ext" ]]; then
  echo "Ошибка: расширение не может быть пустым."
  exit 1
fi

# Убираем ведущую точку, если пользователь ввёл .txt
ext=${ext#.}

echo "Файлы с расширением .$ext в текущей директории:"
found=false

for file in ./*."$ext"; do
  if [[ -f "$file" ]]; then
    echo "$file"
    found=true
  fi
done

if [[ "$found" = false ]]; then
  echo "Файлы с указанным расширением не найдены."
fi


