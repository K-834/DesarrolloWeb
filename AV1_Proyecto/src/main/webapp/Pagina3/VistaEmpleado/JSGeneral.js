//Es para lo del menu responsive:
$(document).ready(main);
$(window).resize(main2);
  

function main() {

    var contador = 1;
    
    $('.menu_bar').click(function() {
      if (contador == 1) {
        $('nav').animate({
          right: '0'
        });
        contador = 0;
      } else {
        contador = 1;
        $('nav').animate({
          right: '-100%'
        });
      }
    });

  }

  function main2() {
    var ancho = $(window).width();
    if (ancho >= 1101) {
       $('nav').animate({
          right: '0'
        });
    }else{
        $('nav').animate({
            right: '-100%'
          });
    }

  }
  

/*********************************************************************************************/ 

window.onscroll = function(){
   
    if(document.documentElement.scrollTop > 100) {
      document.querySelector('.go-top-container').classList.add('show');
       
    }
    else{
      document.querySelector('.go-top-container').classList.remove('show');
    }
  }
   
  document.querySelector('.go-top-container').addEventListener('click', () => {
    window.scrollTo({
      top: 0,
      behavior: 'smooth'
    });
  });   

  /********************************************************************************************************/
  function eliminar() {
    var cuentaR = document.getElementById("cuenta");
    var IniciarS = document.getElementById("formularioLogin");
    var cambioLo = document.getElementById("cambio");
    var btnEnvio = document.getElementById("envio");
    if (cuentaR.innerHTML == "Ya tengo cuenta") {
        cambioLo.style.flexDirection = "row-reverse";
        IniciarS.style.display = "none";
        cuentaR.innerHTML = "Quiero Registrarme";
        btnEnvio.innerHTML = "Iniciar Sesion";
    } else {
        cambioLo.style.flexDirection = "row";
        IniciarS.style.display = "block";
        cuentaR.innerHTML = "Ya tengo cuenta"
        IniciarS.style.animationDuration = "1s";
        
        btnEnvio.innerHTML = "Registrarse";
    }
}
document.getElementById('BtnCerrarSesion').addEventListener('click', confirmarSalir);

function confirmarSalir() {
  if (confirm('¿Quieres Salir de tu sesión?')) {
    window.location.href = '../Plantilla/limpiar_sesion.php';
  }
}

/*
function validarIngreso() {
    var correo = document.getElementById("correo").value;
    var contraseña = document.getElementById("contrasena").value;
    var pagina = document.getElementById("dni")

    if (correo == "empleado1@veter.com" && contraseña == "1234" && pagina == "Index") {
        window.location = "../Proyecto/ViewEmpleados/pagEmpleado.html";
        alert("Inicio Correctamente");
    } else if (correo == "empleado1@veter.com" && contraseña == "1234") {
        window.location = "../ViewEmpleados/pagEmpleado.html";
        alert("Inicio Correctamente");
    } else {
        alert("Datos incorrectos");

    }
}*/
function seleccionarOpcion(opcionSeleccionada) {
    const selectElement = document.getElementById("opciones");
    selectElement.value = opcionSeleccionada;
  }

/***********************************************************************************/

