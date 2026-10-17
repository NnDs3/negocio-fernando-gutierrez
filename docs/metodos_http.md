# Métodos HTTP

A continuación se explican los 5 métodos HTTP principales, con ejemplos usando la API pública JSONPlaceholder.

### 1. GET
**¿Para qué sirve?** Para solicitar y obtener datos de un servidor.
**Ejemplo:** Obtener la información de un post específico.
- **URL:** `https://jsonplaceholder.typicode.com/posts/1`
- **Body:** (No lleva)
- **Código de estado:** `200 OK`

### 2. POST
**¿Para qué sirve?** Para enviar datos al servidor y crear un nuevo recurso.
**Ejemplo:** Crear un nuevo post.
- **URL:** `https://jsonplaceholder.typicode.com/posts`
- **Body:** `{"title": "Mi post", "body": "Hola mundo", "userId": 1}`
- **Código de estado:** `201 Created`

### 3. PUT
**¿Para qué sirve?** Para actualizar un recurso existente reemplazándolo por completo.
**Ejemplo:** Reemplazar todos los datos del post 1.
- **URL:** `https://jsonplaceholder.typicode.com/posts/1`
- **Body:** `{"id": 1, "title": "Nuevo título", "body": "Nuevo cuerpo", "userId": 1}`
- **Código de estado:** `200 OK`

### 4. PATCH
**¿Para qué sirve?** Para actualizar parcialmente un recurso existente (solo los campos enviados).
**Ejemplo:** Cambiar solo el título del post 1.
- **URL:** `https://jsonplaceholder.typicode.com/posts/1`
- **Body:** `{"title": "Título modificado"}`
- **Código de estado:** `200 OK`

### 5. DELETE
**¿Para qué sirve?** Para eliminar un recurso del servidor.
**Ejemplo:** Eliminar el post 1.
- **URL:** `https://jsonplaceholder.typicode.com/posts/1`
- **Body:** (No lleva)
- **Código de estado:** `200 OK`

## Diferencia entre PUT y PATCH
La diferencia principal es que **PUT reemplaza el recurso completo**. Si envías un objeto, todos los campos que no incluyas se borrarán o se sobrescribirán. En cambio, **PATCH solo actualiza los campos que tú le envíes**, dejando el resto intacto.

*(Nota: JSONPlaceholder simula los cambios y no los guarda de verdad, por lo que un GET posterior no mostrará los cambios hechos con PUT, PATCH o DELETE).*