#!/bin/bash
set -euo pipefail

if [ "$#" -ne 2 ]; then
  echo "Uso: $0 <número_sesión (ej: 01)> <contraseña>"
  exit 1
fi

# Aseguramos que el número de sesión tenga 2 dígitos
SESSION_NUM=$(printf "%02d" "$1")
PASSWORD="$2"

# Crear la carpeta .keys si no existe
mkdir -p .keys

# Crear el archivo de clave para la sesión indicada
echo "$PASSWORD" > ".keys/session${SESSION_NUM}.pass"
chmod 600 ".keys/session${SESSION_NUM}.pass"

# Realizar re-checkout para que Git ejecute el filtro smudge y descifre
git reset --hard && git checkout --force .

echo "La contraseña para la sesión ${SESSION_NUM} se ha configurado correctamente y se ha ejecutado el re-checkout."
