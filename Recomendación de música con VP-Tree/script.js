// Simulación de una base de datos de canciones
const songs = [
  { id: 1, name: "Shape of You", artist: "Ed Sheeran", features: [96, 55, 233] },
  { id: 2, name: "Blinding Lights", artist: "The Weeknd", features: [171, 60, 200] },
  { id: 3, name: "Dance Monkey", artist: "Tones and I", features: [98, 53, 209] },
  { id: 4, name: "Rockstar", artist: "Post Malone", features: [79, 54, 218] },
  // Añadimos más canciones hasta llegar a 100
  { id: 6, name: "Circles", artist: "Post Malone", features: [120, 58, 215] },
  { id: 7, name: "Sunflower", artist: "Post Malone & Swae Lee", features: [90, 59, 158] },
  { id: 8, name: "Bad Guy", artist: "Billie Eilish", features: [135, 62, 194] },
  { id: 9, name: "Old Town Road", artist: "Lil Nas X", features: [136, 60, 157] },
  { id: 10, name: "Senorita", artist: "Shawn Mendes & Camila Cabello", features: [117, 57, 191] },
  // Añadir más canciones
  { id: 12, name: "Perfect", artist: "Ed Sheeran", features: [95, 49, 263] },
  { id: 13, name: "7 rings", artist: "Ariana Grande", features: [140, 61, 179] },
  { id: 14, name: "Without Me", artist: "Halsey", features: [135, 56, 201] },
  { id: 16, name: "thank u, next", artist: "Ariana Grande", features: [107, 52, 207] },
  { id: 17, name: "Lucid Dreams", artist: "Juice WRLD", features: [84, 55, 238] },
  { id: 18, name: "Havana", artist: "Camila Cabello", features: [105, 60, 217] },
  { id: 19, name: "Sucker", artist: "Jonas Brothers", features: [138, 61, 181] },
  { id: 20, name: "Truth Hurts", artist: "Lizzo", features: [158, 60, 173] },
  // Añadir más canciones hasta llegar a 100
  { id: 23, name: "If I Can't Have You", artist: "Shawn Mendes", features: [124, 59, 196] },
  { id: 26, name: "I Don't Care", artist: "Ed Sheeran", features: [102, 59, 199] },
  { id: 27, name: "Circles", artist: "Post Malone", features: [120, 58, 215] },
  { id: 28, name: "Old Town Road", artist: "Lil Nas X", features: [136, 60, 157] },
  { id: 29, name: "bad guy", artist: "Billie Eilish", features: [135, 62, 194] },
  { id: 30, name: "Goodbyes", artist: "Post Malone", features: [150, 58, 183] },
  { id: 32, name: "Talk", artist: "Khalid", features: [136, 60, 198] },
  { id: 33, name: "Boyfriend", artist: "Ariana Grande", features: [138, 61, 187] },
  { id: 38, name: "Eastside", artist: "Benny Blanco", features: [93, 55, 180] },
  { id: 39, name: "Memories", artist: "Maroon 5", features: [91, 50, 189] },
  { id: 40, name: "Perfect", artist: "Ed Sheeran", features: [95, 49, 263] },
  { id: 42, name: "If I Can't Have You", artist: "Shawn Mendes", features: [124, 59, 196] },
  { id: 43, name: "Bad Liar", artist: "Imagine Dragons", features: [125, 57, 218] },
  { id: 48, name: "Circles", artist: "Post Malone", features: [120, 58, 215] },
  { id: 52, name: "Goodbyes", artist: "Post Malone", features: [150, 58, 183] },
  { id: 56, name: "Old Town Road", artist: "Lil Nas X", features: [136, 60, 157] },
  { id: 57, name: "Takeaway", artist: "Chainsmokers", features: [130, 59, 203] },
  { id: 58, name: "Lover", artist: "Taylor Swift", features: [110, 54, 211] },
  { id: 59, name: "Beautiful People", artist: "Ed Sheeran", features: [93, 55, 207] },
  { id: 62, name: "If I Can't Have You", artist: "Shawn Mendes", features: [124, 59, 196] },
  { id: 63, name: "Bad Liar", artist: "Imagine Dragons", features: [125, 57, 218] },
  { id: 69, name: "Sunflower", artist: "Post Malone", features: [90, 59, 158] },
  { id: 75, name: "Someone You Loved", artist: "Lewis Capaldi", features: [110, 52, 182] },
  { id: 78, name: "Senorita", artist: "Shawn Mendes", features: [117, 57, 191] },
  { id: 80, name: "Perfect", artist: "Ed Sheeran", features: [95, 49, 263] },
  { id: 81, name: "7 rings", artist: "Ariana Grande", features: [140, 61, 179] },
  { id: 82, name: "Without Me", artist: "Halsey", features: [135, 56, 201] },
  { id: 83, name: "Happier", artist: "Marshmello", features: [100, 54, 214] },
  { id: 85, name: "Lucid Dreams", artist: "Juice WRLD", features: [84, 55, 238] },
  { id: 87, name: "Sunflower", artist: "Post Malone", features: [90, 59, 158] },
  { id: 88, name: "Bad Guy", artist: "Billie Eilish", features: [135, 62, 194] },
  { id: 89, name: "Old Town Road", artist: "Lil Nas X", features: [136, 60, 157] },
  { id: 90, name: "Senorita", artist: "Shawn Mendes", features: [117, 57, 191] },
  { id: 91, name: "Shallow", artist: "Lady Gaga", features: [96, 58, 215] },
  { id: 92, name: "If I Can't Have You", artist: "Shawn Mendes", features: [124, 59, 196] },
  { id: 93, name: "Bad Liar", artist: "Imagine Dragons", features: [125, 57, 218] },
  { id: 96, name: "Circles", artist: "Post Malone", features: [120, 58, 215] },
  { id: 97, name: "Talk", artist: "Khalid", features: [136, 60, 198] },
  { id: 98, name: "Boyfriend", artist: "Ariana Grande", features: [138, 61, 187] },
  { id: 100, name: "Takeaway", artist: "Chainsmokers", features: [130, 59, 203] }
];

// Función de distancia Euclidiana
function euclideanDistance(a, b) {
  return Math.sqrt(a.reduce((sum, val, i) => sum + (val - b[i]) ** 2, 0));
}

// Implementación del Árbol VP
class Node {
  constructor(song) {
    this.song = song;
    this.radius = 0;
    this.inside = null;
    this.outside = null;
  }
}

class VPTree {
  constructor(songs, distanceFunc) {
    this.distanceFunc = distanceFunc;
    this.root = this.buildTree(songs);
  }

  buildTree(songs) {
    if (songs.length === 0) return null;

    const index = Math.floor(Math.random() * songs.length);
    const song = songs[index];
    const node = new Node(song);
    songs.splice(index, 1);

    if (songs.length === 0) return node;

    const distances = songs.map(s => this.distanceFunc(song.features, s.features));
    const median = this.median(distances);
    node.radius = median;

    const insideSongs = songs.filter((s, i) => distances[i] <= median);
    const outsideSongs = songs.filter((s, i) => distances[i] > median);

    node.inside = this.buildTree(insideSongs);
    node.outside = this.buildTree(outsideSongs);

    return node;
  }

  median(values) {
    values.sort((a, b) => a - b);
    const mid = Math.floor(values.length / 2);
    return values[mid];
  }

  search(song, maxResults, node = this.root, neighbors = []) {
    if (!node) return neighbors;

    const dist = this.distanceFunc(song.features, node.song.features);

    if (neighbors.length < maxResults || dist < neighbors[0].distance) {
      neighbors.push({ song: node.song, distance: dist });
      neighbors.sort((a, b) => b.distance - a.distance);
      if (neighbors.length > maxResults) neighbors.shift();
    }

    const checkInsideFirst = dist < node.radius;

    if (checkInsideFirst) {
      this.search(song, maxResults, node.inside, neighbors);
      if (neighbors.length < maxResults || Math.abs(node.radius - dist) < neighbors[0].distance) {
        this.search(song, maxResults, node.outside, neighbors);
      }
    } else {
      this.search(song, maxResults, node.outside, neighbors);
      if (neighbors.length < maxResults || Math.abs(node.radius - dist) < neighbors[0].distance) {
        this.search(song, maxResults, node.inside, neighbors);
      }
    }

    return neighbors;
  }
}

// Construir el Árbol VP con las canciones disponibles
let tree = new VPTree(songs, euclideanDistance);

// Función para encontrar canciones similares a partir del nombre de la canción
function findSimilarSongs() {
  const songName = $('#songName').val().trim().toLowerCase();

  // Buscar la canción por nombre en la base de datos simulada
  const querySong = songs.find(song => song.name.toLowerCase() === songName);

  if (!querySong) {
    alert(`No se encontró la canción "${songName}".`);
    return;
  }

  const maxResults = 5;
  const neighbors = tree.search(querySong, maxResults);

  // Mostrar las canciones similares
  $('#results').empty();
  neighbors.forEach(neighbor => {
    $('#results').append(`<li>${neighbor.song.name} by ${neighbor.song.artist}</li>`);
  });
}

// Autosugerencia usando jQuery UI
$(function() {
  const songNames = songs.map(song => song.name);
  $('#songName').autocomplete({
    source: songNames
  });
});
