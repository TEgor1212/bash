#!/usr/bin/env bash

# Скрипт спрашивает имя пользователя и выводит приветствие

read -rp "Введите ваше имя: " username

if [[ -z "$username" ]]; then
  echo "Вы не ввели имя."
  exit 1
fi

echo "Привет, $username!"


