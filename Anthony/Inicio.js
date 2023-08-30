const images = document.querySelectorAll('.stacked-image');

images.forEach(image => {
    image.addEventListener('click', () => {
        images.forEach(img => {
            img.style.transform = 'translate(-50%, -50%) scale(0.8)';
        });
        image.style.transform = 'translate(-50%, -50%) scale(1)';
    });
});
