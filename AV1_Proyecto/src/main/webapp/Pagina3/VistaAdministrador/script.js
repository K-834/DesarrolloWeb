// LOGICA PARA EL BUSCADOR DE LA LISTA DE PRODUCTOS
const productos = document.getElementsByClassName('producto')

document.addEventListener('click', function(e){
    if(e.target.dataset.buscar){
        const buscador = document.getElementById('txt-buscar').value;
        
        if(buscador !== ''){
            for(let i = 0; i < productos.length; i++){
                let nombreProducto = productos[i].querySelector('.producto-row-nombre').textContent;

                if(nombreProducto.toLowerCase() !== buscador.toLowerCase()){
                    productos[i].classList.toggle('hidden');
                }
            }
        }
    }
    else if(e.target.dataset.limpiar){
        for(let i = 0; i < productos.length; i++){
            productos[i].classList.remove('hidden');
        }
        document.getElementById('txt-buscar').value = '';
    }
});


