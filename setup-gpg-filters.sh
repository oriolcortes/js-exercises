#!/usr/bin/env bash
# Afegir o actualitzar filters gpgC1–gpgC6 en .git/config
set -euo pipefail

PREFIX="session"
# Defineix el número d'iteracions (per exemple, 0 per session00.pass; canvia aquest valor per processar més fitxers)
END=0
LAST_ID=""
counter=0

for i in $(seq 0 $END); do
  LAST_ID=$(printf "%02d" "$i")
  git config --local filter.gpgC${LAST_ID}.clean "gpg --batch --yes --passphrase-file .keys/${PREFIX}${LAST_ID}.pass -c -o -"
  git config --local filter.gpgC${LAST_ID}.smudge "gpg --batch --yes --passphrase-file .keys/${PREFIX}${LAST_ID}.pass -d -o -"
  counter=$((counter+1))
done

echo "Filters configurats per a $counter fitxer(s) fins a ${PREFIX}${LAST_ID}.pass"