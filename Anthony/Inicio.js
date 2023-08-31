///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////// TALLERES //////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

const talleres = [
    {
        nombre: "Taller 1",
        imagen: "https://xeu.mx/contenidos/imagenes/noticias/standard/2020/05/1101623.jpg",
        texto: "texto1",
    },

    {
        nombre: "Taller 2",
        imagen: "https://difcordoba.gob.mx/site/wp-content/uploads/2023/02/329449529_874952413782831_9152857905777736859_n.jpg",
        texto: "texto2"
    },
    {
        nombre: "Taller 3",
        imagen: "https://cdn-hpoch.nitrocdn.com/qzoiPHZVDdshILXMOYqLVwpjZTjknZlV/assets/images/optimized/rev-845c1f5/wp-content/uploads/2019/07/talleres_ninos_adolescentes_psicologia_psicoimagina_alicante.jpg",
        texto: "texto3"

    },
    {
        nombre: "Taller 4",
        imagen: "https://noticias.uai.cl/assets/uploads/2022/06/fotos-notas-web-2-980x470-c-default.jpg",
        texto: "texto4"
    }

];


function talleresBanner(nombre, texto, imagen) {
    return `
        <div class=" estilo-Taller-contenedor ">
                <h3 class="subtitulo-Taller">${nombre}</h3>
                <img class="imagen-Taller" src="${imagen}">
                <p class="texto-Taller">${texto}</p>
                <center> <a hrf="#" class="cd-btn cd-btn--primary btn-Taller">Unete</a>
                </center>
            </div>
    `;
}
const contenedorBanners = document.getElementById("talleres-Inicio");

talleres.forEach(({ nombre, texto, imagen }) => {
    const bannerHTML = talleresBanner(nombre, texto, imagen);
    contenedorBanners.innerHTML += bannerHTML;
});


///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////// Mensajes //////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

const MensajesMotivadores = [
    {
        mensaje: "Sé el cambio que quieres ver en el mundo",
        autor: "Mahatma Gandhi"
    },
    {
        mensaje: "Intenta y falla, pero nunca falles en intentarlo",
        autor: "Jared Leto"
    },
    {
        mensaje: "No busques los errores, busca un remedio",
        autor: "Henry Ford"
    },
    {
        mensaje: "El éxito depende del esfuerzo",
        autor: "Sófocles"
    },

];

function Mensaje(mensaje, autor) {
    return `
    
    <div class="sticky-hero__content">
        <div class="text-component texto-Mensaje-Inicio">
            <h1>"${mensaje}"</h1>
            <h4>— ${autor}</h4>
        </div>
    </div>

    `;
}

const contenedorMotivacion = document.getElementById("generador-Mensaje-Incio");

MensajesMotivadores.forEach(({ mensaje, autor }) => {
    const mensajeHTML = Mensaje(mensaje, autor);
    contenedorMotivacion.innerHTML += mensajeHTML;
});




///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////// IMAGEN-QUIETO RECICLADO //////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


(function () {
    var StickyBackground = function (element) {
        this.element = element;
        this.scrollingElement = this.element.getElementsByClassName('sticky-hero__content')[0];
        this.nextElement = this.element.nextElementSibling;
        this.scrollingTreshold = 0;
        this.nextTreshold = 0;
        initStickyEffect(this);
    };

    function initStickyEffect(element) {
        var observer = new IntersectionObserver(stickyCallback.bind(element), { threshold: [0, 0.1, 1] });
        observer.observe(element.scrollingElement);
        if (element.nextElement) observer.observe(element.nextElement);
    };

    function stickyCallback(entries, observer) {
        var threshold = entries[0].intersectionRatio.toFixed(1);
        (entries[0].target == this.scrollingElement)
            ? this.scrollingTreshold = threshold
            : this.nextTreshold = threshold;

        this.element.classList.toggle('sticky-hero--media-is-fixed', (this.nextTreshold > 0 || this.scrollingTreshold > 0));
    };


    var stickyBackground = document.getElementsByClassName('js-sticky-hero'),
        intersectionObserverSupported = ('IntersectionObserver' in window && 'IntersectionObserverEntry' in window && 'intersectionRatio' in window.IntersectionObserverEntry.prototype);
    if (stickyBackground.length > 0 && intersectionObserverSupported) {
        for (var i = 0; i < stickyBackground.length; i++) {
            (function (i) {
                if (stickyBackground[i].classList.contains('sticky-hero--overlay-layer') || stickyBackground[i].classList.contains('sticky-hero--scale')) new StickyBackground(stickyBackground[i]);
            })(i);
        }
    }
}());


///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////CARRUSEL-CIRCULAR//////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/*const carruselO = [
    "../Imagenes/Inicio/foto1.png",
    "../Imagenes/Inicio/foto2.png",
    "../Imagenes/Inicio/foto3.png"
];
 
function carruselInicio(imagen) {
    return `
        <div class="carousel-item">
            <img class="border-radius-banner-inicio" src="${imagen}" class="d-block" alt="...">
        </div>
    `;
}
 
document.addEventListener("DOMContentLoaded", () => {
    const contenedorcarruselO = document.getElementById("Imagenes-carrusel-Inicio");
 
    carruselO.forEach((imagen) => {
        const carruselInicioImg = carruselInicio(imagen);
        contenedorcarruselO.innerHTML += carruselInicioImg;
    });
});

*/
