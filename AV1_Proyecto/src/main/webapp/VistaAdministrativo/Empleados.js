const cancelButton = document.getElementById('cancelButton');

 cancelButton.addEventListener('click', redirectToAnotherPage);

 function redirectToAnotherPage() {
     window.location.href = '../campañas.php'; 
}

/********************************************************************************************************* */
/********************************************************************************************************* */
/********************************************************************************************************* */
/********************************************************************************************************* */

const tipoMascotaSelect = document.getElementById('tipoMascotaSelect');
const razaMascotaSelect = document.getElementById('razaMascotaSelect');

// Definir las opciones para cada tipo de mascota
const opcionesMascota = {
    Gato: ["Siamese", "Persian", "Maine Coon"],
    Perro: ["Pitbull", "Doberman", "American Bully"]
};

// Función para actualizar las opciones de la segunda lista desplegable
function actualizarOpcionesRaza() {
    const tipoMascotaSeleccionada = tipoMascotaSelect.value;
    const opcionesRaza = opcionesMascota[tipoMascotaSeleccionada];

    // Limpiar las opciones actuales
    razaMascotaSelect.innerHTML = '';

    // Agregar las nuevas opciones
    for (const raza of opcionesRaza) {
        const option = document.createElement('option');
        option.value = raza;
        option.textContent = raza;
        razaMascotaSelect.appendChild(option);
    }
}

// Ejecutar la función al cargar la página para mostrar las opciones iniciales
actualizarOpcionesRaza();
tipoMascotaSelect.addEventListener('change', actualizarOpcionesRaza);

document.addEventListener("DOMContentLoaded", function() {
    const modal = new bootstrap.Modal(document.getElementById("modal_intranet_agregar_servicio"));
  
    // Función para actualizar el campo de entrada con la fecha actual
    function setTodayDate() {
      const dateInput = document.getElementById("dateInput");
      const currentDate = new Date().toISOString().split("T")[0];
      dateInput.value = currentDate;
    }
  
    // Cuando el modal se muestra, actualizamos el campo de entrada con la fecha actual
    modal._element.addEventListener("show.bs.modal", setTodayDate);

    const progressInput = document.getElementById("progressInput");
    const progressValue = document.getElementById("progressValue");
  
    // Función para actualizar el valor del progreso en el span
    function updateProgressValue() {
      progressValue.textContent = progressInput.value;
    }
  
    // Cuando cambie el valor del rango, actualizamos el contenido del span
    progressInput.addEventListener("input", updateProgressValue);
  
    // Actualizar el valor inicial del span al cargar la página
    updateProgressValue();

    var dataRows = document.querySelectorAll(".data-row");
    var lastSelectedRow = null; // Variable para rastrear la última fila seleccionada

    dataRows.forEach(function (row) {
      row.addEventListener("mouseover", function () {
        if (!row.classList.contains("selected")) {
          row.style.backgroundColor = "#74798A";
        }
      });

      row.addEventListener("mouseout", function () {
        if (!row.classList.contains("selected")) {
          row.style.backgroundColor = ""; // Reestablece el color de fondo original
        }
      });

      row.addEventListener("click", function () {
        if (!row.classList.contains("selected")) {
          if (lastSelectedRow) {
            lastSelectedRow.classList.remove("selected");
            lastSelectedRow.style.backgroundColor = ""; // Reestablece el color de la última fila seleccionada
          }

          row.classList.add("selected");
          row.style.backgroundColor = "#637685";
          lastSelectedRow = row; // Establece la última fila seleccionada como la actual
        } else {
          row.classList.remove("selected");
          row.style.backgroundColor = ""; // Reestablece el color de selección
          lastSelectedRow = null; // No hay ninguna fila seleccionada
        }
      });
    });
  });

  const e_tipoMascotaSelect = document.getElementById('e_tipoMascotaSelect');
  const e_razaMascotaSelect = document.getElementById('e_razaMascotaSelect');
  
  // Función para actualizar las opciones de la segunda lista desplegable
  function e_actualizarOpcionesRaza() {
      const tipoMascotaSeleccionada = e_tipoMascotaSelect.value;
      const opcionesRaza = opcionesMascota[tipoMascotaSeleccionada];
  
      // Limpiar las opciones actuales
      e_razaMascotaSelect.innerHTML = '';
  
      // Agregar las nuevas opciones
      for (const raza of opcionesRaza) {
          const option = document.createElement('option');
          option.value = raza;
          option.textContent = raza;
          e_razaMascotaSelect.appendChild(option);
      }
  }


  document.addEventListener("DOMContentLoaded", function() {
    // Obtenemos el elemento de entrada y el elemento de texto
    const e_progressInput = document.getElementById("e_progressInput");
    const progressValue = document.getElementById("e_progressValue");
  
    // Función para actualizar el valor del progreso en el span
    function updateProgressValue() {
      progressValue.textContent = e_progressInput.value; // Asignamos el valor del rango al elemento de texto
    }
  
    // Cuando cambie el valor del rango, actualizamos el contenido del span
    e_progressInput.addEventListener("input", updateProgressValue);
  });
  
// JavaScript para escuchar el evento clic en los íconos de edición
const editIcons = document.querySelectorAll('.fas.fa-edit');

editIcons.forEach((icon) => {
  icon.addEventListener('click', (event) => {

    event.preventDefault(); // Evita que el formulario se envíe automáticamente

    // Obtén la fila (tr) correspondiente al ícono de edición
    const row = icon.closest('tr');

    // Obtiene los valores de los atributos 'name' de los <td> correspondientes
    const idService = row.querySelector('td[name="idService"]').innerText;
    
    const name = row.querySelector('td[name="name"]').innerText;
    const pet = row.querySelector('td[name="pet"]').innerText;
    const type = row.querySelector('td[name="type"]').innerText;
    const date = row.querySelector('td[name="date"]').innerText;
    const time = row.querySelector('td[name="time"]').innerText;
    const state = row.querySelector('td[name="state"]').getAttribute('value');
    const progress = row.querySelector('td[name="progress"]').getAttribute('value');


    // Rellena el modal con los datos de la fila

    const modal = document.getElementById('modal_intranet_editar_servicio');
    const titleElement = modal.querySelector('.title');
    const idField = modal.querySelector('[name=idServicio]');
    const servicioField = modal.querySelector('[name=servicio]');
    const tipodemascotaField = modal.querySelector('[name=tipodemascota]');
    const razademascotaField = modal.querySelector('[name=razademascota]');
    const estadoField = modal.querySelector('[name=estado]');
    const dateField = modal.querySelector('[name=date]');
    const progressField = modal.querySelector('#e_progressValue');
    const progressInputField = modal.querySelector('#e_progressInput');

    // Asigna los valores de la fila a los campos del modal
    titleElement.textContent = `EDITAR SERVICIO: ${idService}`;
    servicioField.value = name;
    idField.value = idService;
    tipodemascotaField.value = pet;
    e_actualizarOpcionesRaza();

    razademascotaField.value = type;
    estadoField.value = state; // Agrega aquí el valor del estado correspondiente
    dateField.value = date;
    progressField.textContent = progress;
    progressInputField.value = progress;


  });
});






const urlCita = new URLSearchParams(window.location.search);
const nombre = urlCita.get("nombre");
const apellido = urlCita.get("apellido");
const correo = urlCita.get("correo");
const celular = urlCita.get("cell");
const dia = urlCita.get("dia");
const turno = urlCita.get("opcion1");
const motivo = urlCita.get("mensaje");
const locacion = urlCita.get("opciones");

const datos1 = document.getElementById("nombre");
const datos2 = document.getElementById("apellido");

const contacto1 = document.getElementById("correo");
const contacto2 = document.getElementById("cell");

const cita1 = document.getElementById("dia");
const cita2 = document.getElementById("turno");
const cita3 = document.getElementById("locacion");

const info = document.getElementById("motivo");

datos1.innerHTML = nombre;
datos2.innerHTML = apellido;

contacto1.innerHTML = correo;
contacto2.innerHTML =  celular;

cita1.innerHTML = dia;
cita2.innerHTML = turno;
cita3.innerHTML = locacion;

info.innerHTML = motivo;
console.log(nombre);
console.log(apellido);
console.log(correo);
console.log(celular);
console.log(dia);
console.log(turno);
console.log(motivo);
console.log(locacion);
function advertenciaSalida(){
  var not=confirm("Estás seguro que deseas Salir?");
}




 