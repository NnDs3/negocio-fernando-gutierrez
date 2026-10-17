# Documentación de la PokeAPI

Para el desarrollo del frontend, se utilizó la API pública de Pokémon (PokeAPI).

## Endpoint utilizado
Se realizó una petición HTTP de tipo **GET** para obtener los datos de un Pokémon en específico.

- **URL Base:** `https://pokeapi.co/api/v2/pokemon/{nombre}`
- **Ejemplo:** `https://pokeapi.co/api/v2/pokemon/pikachu`

## Datos extraídos
De la respuesta JSON, se extrajeron los siguientes campos para mostrarlos en la interfaz:
- `name`: Nombre del Pokémon.
- `sprites.front_default`: URL de la imagen.
- `types`: Lista de tipos (se extrae el nombre).
- `weight`: Peso en hectogramos (se divide entre 10 para mostrar kilogramos).
- `height`: Altura en decímetros (se divide entre 10 para mostrar metros).

## Manejo de errores
Si el Pokémon no existe, la API devuelve un código de estado HTTP **404 (Not Found)**. El frontend captura este error con `response.ok` y muestra un mensaje al usuario.