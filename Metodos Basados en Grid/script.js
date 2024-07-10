document.addEventListener("DOMContentLoaded", () => {
    // Inicializar el mapa centrado en Puno, Perú
    const map = L.map('map').setView([-15.8402, -70.0219], 14);

    // Agregar el tile layer (fondo del mapa)
    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
        attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
    }).addTo(map);

    // Definir la clase Restaurant
    class Restaurant {
        constructor(name, latitude, longitude) {
            this.name = name;
            this.latitude = latitude;
            this.longitude = longitude;
        }
    }

    // Definir la clase Grid
    class Grid {
        constructor(size) {
            this.size = size; // tamaño de cada celda de la cuadrícula
            this.cells = new Map();
        }

        // Función de hash para convertir coordenadas en una clave de celda
        getCellKey(latitude, longitude) {
            const x = Math.floor(latitude / this.size);
            const y = Math.floor(longitude / this.size);
            return `${x},${y}`;
        }

        addRestaurant(restaurant) {
            const key = this.getCellKey(restaurant.latitude, restaurant.longitude);
            if (!this.cells.has(key)) {
                this.cells.set(key, []);
            }
            this.cells.get(key).push(restaurant);
        }

        getNearbyRestaurants(latitude, longitude, radius, maxRestaurants) {
            const x = Math.floor(latitude / this.size);
            const y = Math.floor(longitude / this.size);
            const nearbyRestaurants = [];
            const cellsToCheck = Math.ceil(radius / 111320 / this.size); // Convert radius from meters to degrees
            for (let dx = -cellsToCheck; dx <= cellsToCheck; dx++) {
                for (let dy = -cellsToCheck; dy <= cellsToCheck; dy++) {
                    const key = `${x + dx},${y + dy}`;
                    if (this.cells.has(key)) {
                        nearbyRestaurants.push(...this.cells.get(key));
                    }
                }
            }
            return nearbyRestaurants
                .filter(restaurant => {
                    const distance = Math.sqrt(
                        Math.pow(restaurant.latitude - latitude, 2) + 
                        Math.pow(restaurant.longitude - longitude, 2)
                    ) * 111320; // Convert degrees to meters (approx.)
                    restaurant.distance = distance;
                    return distance <= radius;
                })
                .sort((a, b) => a.distance - b.distance)
                .slice(0, maxRestaurants);
        }
    }

    // Crear la cuadrícula y añadir restaurantes en Puno, Perú
    const grid = new Grid(0.001);
    const restaurants = [
        new Restaurant("La cazona restaurante", -15.8414, -70.0219),
        new Restaurant("MERCADO CENTRAL", -15.839340, -70.024010),
        new Restaurant("EL INCA", -15.839690, -70.021360),
        new Restaurant("Mojsa Restaurant", -15.839022, -70.021881),
        new Restaurant("Colors Restaurant", -15.839740, -70.022670),
        new Restaurant("Balcones de Puno", -15.840280, -70.020860),
        new Restaurant("Restaurant Los Uros", -15.838630, -70.021410),
        new Restaurant("Restaurant Tupananchis", -15.837980, -70.022090),
        new Restaurant("Loving Hut Vegan", -15.838120, -70.021290),
        new Restaurant("El Buho Café", -15.840040, -70.021310)
    ];

    restaurants.forEach(restaurant => grid.addRestaurant(restaurant));

    // Ubicación del usuario en Puno, Perú
    let userLocation = { latitude: -15.8402, longitude: -70.0219 };

    // Añadir un marcador para la ubicación del usuario
    let userMarker = L.marker([userLocation.latitude, userLocation.longitude], {
        icon: L.divIcon({
            className: 'restaurant-marker',
            html: 'U',
            iconSize: [20, 20],
            iconAnchor: [10, 10]
        })
    }).addTo(map).bindPopup('<b>Tu Ubicación</b>');

    const forkAndSpoonIcon = L.icon({
        iconUrl: 'https://cdn-icons-png.flaticon.com/512/684/684908.png',
        iconSize: [32, 32], // tamaño del icono
        iconAnchor: [16, 32], // ancla del icono (punto en el icono que se corresponde con la ubicación del marcador)
        popupAnchor: [0, -32] // donde debe aparecer el popup en relación con el icono
    });

    const updateRestaurants = () => {
        const radius = parseFloat(document.getElementById('radius').value);
        const maxRestaurants = parseInt(document.getElementById('maxRestaurants').value);
        const nearbyRestaurants = grid.getNearbyRestaurants(userLocation.latitude, userLocation.longitude, radius, maxRestaurants);

        // Limpiar los marcadores existentes
        map.eachLayer(layer => {
            if (layer instanceof L.Marker && !layer._icon.classList.contains('restaurant-marker')) {
                map.removeLayer(layer);
            }
        });

        // Añadir marcadores para cada restaurante en el mapa
        nearbyRestaurants.forEach(restaurant => {
            L.marker([restaurant.latitude, restaurant.longitude], { icon: forkAndSpoonIcon })
                .addTo(map)
                .bindPopup(`<b>${restaurant.name}</b><br>Distancia: ${restaurant.distance.toFixed(2)} metros`);
        });
    };

    // Actualizar restaurantes al cargar la página
    updateRestaurants();

    // Añadir evento al botón para actualizar el radio de búsqueda y el número máximo de restaurantes
    document.getElementById('update').addEventListener('click', updateRestaurants);

    // Añadir evento al botón para obtener la ubicación del usuario
    document.getElementById('locate').addEventListener('click', () => {
        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(position => {
                userLocation = {
                    latitude: position.coords.latitude,
                    longitude: position.coords.longitude
                };

                // Actualizar el marcador de la ubicación del usuario
                map.setView([userLocation.latitude, userLocation.longitude], 14);
                userMarker.setLatLng([userLocation.latitude, userLocation.longitude]);
                updateRestaurants();
            }, error => {
                alert('No se pudo obtener tu ubicación');
            });
        } else {
            alert('La geolocalización no está soportada por tu navegador');
        }
    });
});
