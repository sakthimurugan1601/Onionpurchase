// scripts.js

document.addEventListener('DOMContentLoaded', function() {
    const aboutBtn = document.getElementById('about-btn');
    const productDetails = document.getElementById('product-details');
    const closeBtn = document.getElementById('close-btn');

    aboutBtn.addEventListener('click', function() {
        productDetails.classList.remove('hidden');
    });

    closeBtn.addEventListener('click', function() {
        productDetails.classList.add('hidden');
    });
});
