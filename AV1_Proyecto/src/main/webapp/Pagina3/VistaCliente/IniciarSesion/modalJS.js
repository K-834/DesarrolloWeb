let carousel = document.querySelector('.carousel');
let images = document.querySelectorAll('.carousel img');
let currentIndex = 0;
let interval = setInterval(nextImage, 1500);


  function nextImage() {
    currentIndex = (currentIndex + 1) % images.length;
    carousel.style.transform = `translateX(-${currentIndex * 100}%)`;
}


carousel.addEventListener('mouseenter', () => {
    clearInterval(interval);
});


carousel.addEventListener('mouseleave', () => {
    interval = setInterval(nextImage, 1500);
});


