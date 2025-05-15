#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -ne 2 ]; then
  echo "Ús: $0 <sesión (00..06)> <contraseña>" >&2
  exit 1
fi

S=$(printf "%02d" "$1")
PASS="$2"
KEY=".keys/session${S}.pass"
DIR="sessions/session${S}/solutions"

mkdir -p .keys
echo "$PASS" > "$KEY"
chmod 600 "$KEY"

# 1  Quitar skip-worktree de todos los archivos de la sesión
git ls-files -z "$DIR" | xargs -0 git update-index --no-skip-worktree --

# 2  Elimínalos del árbol de trabajo para que Git los vuelva a descargar.
git ls-files -z "$DIR" | xargs -0 rm -f --

# 3  Restaura desde el índice ⇒ Git aplica el smudge (desencripta).
git checkout -- "$DIR"

echo "Sesión $S descifrada — ficheros en texto claro."