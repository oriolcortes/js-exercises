#!/usr/bin/env bash
# Añadir o actualizar filters gpgC00–gpgC06 a .git/config
set -euo pipefail

PREFIX="session"
# Define el número de iteraciones (por ejemplo, 0 para session00.pass; cambia este valor para procesar más ficheros)
END=0
LAST_ID=""
counter=0

for i in $(seq 0 $END); do
  LAST_ID=$(printf "%02d" "$i")
  git config --local filter.encS${LAST_ID}.clean "openssl enc -aes-256-cbc -nosalt -pass file:.keys/${PREFIX}${LAST_ID}.pass -in - -out -"
  git config --local filter.encS${LAST_ID}.smudge "openssl enc -d -aes-256-cbc -nosalt -pass file:.keys/${PREFIX}${LAST_ID}.pass -in - -out -"
  git config --local filter.encS${LAST_ID}.required "true"
  counter=$((counter+1))
done

echo "Filters configurados para $counter sessions hasta ${PREFIX}${LAST_ID}.pass"
