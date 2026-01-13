#!/usr/bin/env bash

# Скрипт генерирует случайный пароль длиной 8 символов

LENGTH=8

# Набор символов: буквы, цифры и несколько спецсимволов
CHARS='A-Za-z0-9!@#$%^&*'

password=$(LC_ALL=C tr -dc "$CHARS" </dev/urandom | head -c "$LENGTH")

if [[ -z "$password" ]]; then
  echo "Не удалось сгенерировать пароль."
  exit 1
fi

echo "Сгенерированный пароль: $password"


