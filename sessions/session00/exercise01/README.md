# Ejercicio: Manejo de Variables en JavaScript

## Objetivos

- Guardar la información de tu canción favorita en variables primitivas:
  - Título (cadena de texto)
  - Autor (cadena de texto)
  - Duración en segundos (número)
  - Estado de descarga (booleano)
- Convertir la duración en segundos a una combinación de minutos y segundos mediante operaciones matemáticas.
- Imprimir los resultados en la consola para verificar el funcionamiento.

## Resultado

Al ejecutar el código, deberías ver en la consola la información de la canción, incluyendo el título, autor, duración convertida (en minutos y segundos) y si la canción está descargada o no. El formato puede verse similar a:

```
Título: Tu Canción Favorita
Autor: Nombre del Artista
Duración: X minutos y Y segundos
Descargada: Sí / No
```

> [!TIP]
> **Declaración e Inicialización de Variables**
> Puedes usar la sintaxis:
>
> ```javascript
> const nombreDeVariable = valorDeVariable;
> ```
>
> para declarar e inicializar una variable en JavaScript.
>
> - **Variables Primitivas:** Almacena diferentes tipos de datos:
>   - Texto: "Tu Canción Favorita"
>   - Número: 245 (por ejemplo, para la duración en segundos)
>   - Booleano: true o false para indicar si la canción está descargada
>
> - **Operadores Matemáticos:** Para convertir segundos a minutos y segundos:
>   - Usa Math.floor() para obtener los minutos completos.
>   - Usa el operador % para calcular los segundos sobrantes (resto de la división).
>
> - **Salida en Consola:** Emplea console.log() para mostrar los resultados en la consola y verificar los cálculos realizados.
