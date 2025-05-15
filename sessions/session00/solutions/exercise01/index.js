// Guarda la información de la canción en constiables primitivas
const titulo = 'Tu Canción Favorita';
const autor = 'Nombre del Artista';
const duracionEnSegundos = 245; // Duración en segundos
const descargada = true;

// Convierte la duración a minutos y segundos
const minutos = Math.floor(duracionEnSegundos / 60);
const segundos = duracionEnSegundos % 60;

// Imprime los resultados en la consola
console.log('Título: ' + titulo);
console.log('Autor: ' + autor);
console.log('Duración: ' + minutos + ' minutos y ' + segundos + ' segundos');
console.log('Descargada: ' + (descargada ? 'Sí' : 'No'));
