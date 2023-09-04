const producto = {
    marca: 'MICROSOFT',
    descripcion: 'Camara Web Microsoft Lifecam Cinema H5D-00013',
    codigo: '097705',
    precio: 279,
    stock: 5,
    imagen: 'camara.png',
    alt: 'imagen de camara',
    modelo: 'Lifecam Cinema H5D-00013',
    funciones: [
        'Interfaz: USB 2.0',
        'Cuadros por segundo: 30',
        'Compatibilidad: Windows 7/8',
        'Resolución: 1280 X 720, 640 X 480 pixels',
        'Resolución Video: 640 X 480 pixeles/30fps, 1280x740 /30 fps',
        'Dimensiones: 60x20x22 mm'
    ]
};

document.addEventListener('click', function(e){
    const inputCantidadEl = document.getElementById('input-cantidad-el');
    if(e.target.dataset.sub){
        (inputCantidadEl.value <= 0) ? inputCantidadEl.value = 0 : inputCantidadEl.value--;
    }
    else if(e.target.dataset.add){
        inputCantidadEl.value++;
    }
});


function agregarProducto() {
    document.getElementById('producto').innerHTML = `
        <img src="images/${producto.imagen}" alt="${producto.alt}">
        <div class="informacion">
            <p class="marca">${producto.marca}</p>
            <p class="descripcion">${producto.descripcion}</p>
            <p class="codigo">CODIGO ${producto.codigo}</p>
            <p class="precio">S/ ${producto.precio.toFixed(2)}</p>
            <p class="stock">🔥 Disponible menos de ${producto.stock} unidades</p>
            <div class="cantidad">
                <p>Cantidad</p>
                <button class="btn-cantidad" data-sub="sub">-</button>
                <input class="btn-cantidad" id="input-cantidad-el" type="text" value="1">
                <button class="btn-cantidad" data-add="add">+</button>
            </div>
            <button class="btn btn-primary">AÑADIR AL CARRO</button>
            <a href="index.html" class="btn btn-secondary">Volver al catálogo</a>
        </div>
    `;

    document.getElementById('ficha-tecnica').innerHTML = `
        <h3>Ficha Técnica</h3>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Atributo</th>
                    <th>Detalle</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Precio</td>
                    <td>S/ ${producto.precio.toFixed(2)}</td>
                </tr>
                <tr>
                    <td>Marca</td>
                    <td>${producto.marca}</td>
                </tr>
                <tr>
                    <td>Modelo</td>
                    <td>${producto.modelo}</td>
                </tr>
                <tr>
                    <td>Funciones destacadas</td>
                    <td>
                        <ul id="lista-funciones">
                            
                        </ul>
                    </td>
                </tr>
            </tbody>
        </table>
    `;

    producto.funciones.forEach(funcion => {
        const newEl = document.createElement('li');
        newEl.textContent = funcion;
        document.getElementById('lista-funciones').appendChild(newEl);
    })
};

agregarProducto();