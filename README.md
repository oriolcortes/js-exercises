# JS-exercises

## Encrypt

1. Instala **`openssl`**
  - Comprueba que está bien instalado `openssl version`.
3. Crea el archivo `sessionXX.pass` en la carpeta `./keys`, con la contraseña.
4. Actualiza la variable `END` en el archivo `./setup-enc-filters.sh` al número actual de sesiones.
5. Ejecuta `./setup-enc-filters.sh`
6. Escribe la solución en el directorio `./sessions/sessionXX/solutions/exerciseXX/`.
7. Ejecuta `git add` para añadir los archivos (El cifrado se ejecuta cuando se ejecuta `git add solutionFiles`).

## Decrypt

Ejecuta los siguientes comandos:

1. `git clone https://github.com/oriolcortes/js-exercises.git`
2. `cd js-exercises`
3. `./unlock.sh <número_de_sesión_en_dos_dígitos> <contraseña>`
   - Por ejemplo, session00: `./unlock.sh 00 "Lince-Gris-47"`
