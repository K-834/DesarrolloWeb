const btnCantidadSub = document.getElementById('btn-cantidad-sub');
const inputCantidadEl = document.getElementById('input-cantidad-el');
const btnCantidadAdd = document.getElementById('btn-cantidad-add');


btnCantidadSub.addEventListener('click', function(){
    if(inputCantidadEl.value <= 0){
        inputCantidadEl.value = 0;
    }
    else {
        inputCantidadEl.value--;
    }
});

btnCantidadAdd.addEventListener('click', function(){
    inputCantidadEl.value++;
});