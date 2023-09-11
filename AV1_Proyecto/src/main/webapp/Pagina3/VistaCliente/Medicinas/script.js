

const inputQuantity = document.querySelector('.amount');
if (inputQuantity) {
  const btnIncrement  = document.querySelector('#increment');
  const btnDecrement  = document.querySelector('#decrement');
  let valueByDefault  = parseInt(inputQuantity.value);
  
  btnIncrement.addEventListener('click', () => {
      if (valueByDefault >= 10) {
      return;
    }
      valueByDefault += 1;
      inputQuantity.value = valueByDefault;
  });
  
  btnDecrement.addEventListener('click', () => {
      if (valueByDefault === 1) {
      return;
    }
      valueByDefault -= 1;
      inputQuantity.value = valueByDefault;
  });
  
  
  const produc = document.querySelectorAll('.product-description1');
  
  produc.forEach((p) => {
      const title  = p.querySelector('.title-descp1');
      const desc  = p.querySelector('.text-descp1');
      title.addEventListener('click', () =>{
          desc.classList.toggle('hidden1');
      })
  });
  

}

const product = document.querySelectorAll('.product-description1');
if (product) {
  product.forEach((p) => {
    const title  = p.querySelector('.title-descp1');
    const desc  = p.querySelector('.text-descp1');
    title.addEventListener('click', () =>{
        desc.classList.toggle('hidden1');
    })
});

}

