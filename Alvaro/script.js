const productos = [
    {
        marca: 'MICROSOFT',
        descripcion: 'Camara Web Microsoft Lifecam Cinema H5D-00013',
        codigo: '097705',
        precio: 279,
        imagen: 'camara.png',
        alt: 'imagen de camara'
    },
    {
        marca: 'MICROSOFT',
        descripcion: 'Camara Web Microsoft Lifecam Cinema H5D-00013',
        codigo: '097705',
        precio: 279,
        imagen: 'camara.png',
        alt: 'imagen de camara'
    },
    {
        marca: 'MICROSOFT',
        descripcion: 'Camara Web Microsoft Lifecam Cinema H5D-00013',
        codigo: '097705',
        precio: 279,
        imagen: 'camara.png',
        alt: 'imagen de camara'
    },
    {
        marca: 'MICROSOFT',
        descripcion: 'Camara Web Microsoft Lifecam Cinema H5D-00013',
        codigo: '097705',
        precio: 279,
        imagen: 'camara.png',
        alt: 'imagen de camara'
    },
    {
        marca: 'MICROSOFT',
        descripcion: 'Camara Web Microsoft Lifecam Cinema H5D-00013',
        codigo: '097705',
        precio: 279,
        imagen: 'camara.png',
        alt: 'imagen de camara'
    }
];

const productosEl = document.getElementById('productos-el');

function agregarProductos() {
    productos.forEach(producto => {
        productosEl.innerHTML += `
            <div class="producto">
                <img src="images/${producto.imagen}" alt="${producto.alt}">
                <div class="datos">
                    <p class="marca">${producto.marca}</p>
                    <a href="producto.html" class="descripcion">${producto.descripcion}</a>
                    <p class="codigo">Código ${producto.codigo}</p>
                    <p class="precio">S/ ${producto.precio.toFixed(2)}</p>
                    <button class="btn-agregar">AÑADIR AL CARRO</button>
                </div>
            </div>
        `;
    });
}

agregarProductos();