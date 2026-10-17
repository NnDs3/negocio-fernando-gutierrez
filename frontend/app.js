document.addEventListener("DOMContentLoaded", () => {
    const input = document.getElementById('pokemonInput');
    const btn = document.getElementById('buscarBtn');
    const resultado = document.getElementById('resultado');
    const mensaje = document.getElementById('mensaje');

    btn.addEventListener('click', async () => {
        const nombre = input.value.trim().toLowerCase();
        if (!nombre) return;

        resultado.style.display = 'none';
        mensaje.textContent = 'Cargando...';
        mensaje.style.color = 'black';

        try {
            const response = await fetch(`https://pokeapi.co/api/v2/pokemon/${nombre}`);
            
            if (!response.ok) {
                throw new Error('Pokémon no encontrado');
            }

            const data = await response.json();

            const pesoKg = data.weight / 10;
            const alturaMt = data.height / 10;
            const tipos = data.types.map(t => t.type.name).join(', ');

            document.getElementById('nombre').textContent = data.name.toUpperCase();
            document.getElementById('imagen').src = data.sprites.front_default;
            document.getElementById('tipos').textContent = tipos;
            document.getElementById('peso').textContent = pesoKg + ' kg';
            document.getElementById('altura').textContent = alturaMt + ' m';

            mensaje.textContent = '';
            resultado.style.display = 'block';

        } catch (error) {
            mensaje.textContent = 'Error: El Pokémon no existe o hubo un problema de red.';
            mensaje.style.color = 'red';
        }
    });
});