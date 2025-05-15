# JS-exercises

## Encrypt

1. Instala **`gnupg`**
2. Crea el archivo `sessionXX.pass` en la carpeta `./keys`, con la contraseña.
3. Actualiza la variable `END` en el archivo `./setup-gpg-filters.sh` al número actual de sesiones.
4. Ejecuta `./setup-gpg-filters.sh`
5. Escribe la solución en el directorio `./sessions/sessionXX/solutions/exerciseXX/`.
6. Ejecuta `git add` para añadir los archivos (El cifrado se ejecuta cuando se ejecuta `git add solutionFiles`).

## Decrypt

Ejecuta los siguientes comandos:

1. `git clone https://github.com/oriolcortes/js-exercises.git`
2. `cd js-exercises`
3. `./unlock.sh <número_de_sesión_en_dos_dígitos> <contraseña>`
   - Por ejemplo, session00: `./unlock.sh 00 "Lince-Gris-47"`
