

		export function getLatitude () {
			// Funciones callback que se ejecutan tras preguntar al usuario si quiere ser geolocalizado

			const aceptaLocalizacion = function (position) {
				console.log (position.coords.latitude)
				return position.coords.latitude;
			}
			const deniegaLocalizacion = function (error) {
				alert ("Has denegado la localización")
			}

			// Método de la API de localización para llamar a dos funciones callback y ejecutar codigo en consecuencia
			navigator.geolocation.getCurrentPosition(aceptaLocalizacion, deniegaLocalizacion); 
		}

		export function getLongitude () {
			// Funciones callback que se ejecutan tras preguntar al usuario si quiere ser geolocalizado

			const aceptaLocalizacion = function (position) {
				console.log (position.coords.longitude)
				return position.coords.longitude;
			}
			const deniegaLocalizacion = function (error) {
				alert ("Has denegado la localización")
			}

			// Método de la API de localización para llamar a dos funciones callback y ejecutar codigo en consecuencia
			navigator.geolocation.getCurrentPosition(aceptaLocalizacion, deniegaLocalizacion); 
		}

		export function getAltitude () {
			
			// Funciones callback que se ejecutan tras preguntar al usuario si quiere ser geolocalizado

			const aceptaLocalizacion = function (position) {
				console.log (position.coords.altitude)
				if (position.coords.altitude == null) {
					console.log ("Altitud no disponible.")
				} else {
					return position.coords.altitude;
				}
			}
			const deniegaLocalizacion = function (error) {
				alert ("Has denegado la localización")
			}

			// Método de la API de localización para llamar a dos funciones callback y ejecutar codigo en consecuencia
			navigator.geolocation.getCurrentPosition(aceptaLocalizacion, deniegaLocalizacion); 
		}