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
  git config --local filter.gpgC${LAST_ID}.clean "gpg --batch --yes --passphrase-file .keys/${PREFIX}${LAST_ID}.pass -c -o -"
  git config --local filter.gpgC${LAST_ID}.smudge "gpg --batch --yes --passphrase-file .keys/${PREFIX}${LAST_ID}.pass -d -o -"
  git config --local filter.gpgC${LAST_ID}.required "true"
  counter=$((counter+1))
done

echo "Filters configurados para $counter sessions hasta ${PREFIX}${LAST_ID}.pass"