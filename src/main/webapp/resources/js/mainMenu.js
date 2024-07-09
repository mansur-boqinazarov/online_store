
    let slideIndex = 0;
    let slides = document.getElementsByClassName("mySlides");

    function plusSlides(n) {
    showSlides(slideIndex += n);
}

    function showSlides(n) {
    if (n >= slides.length) {slideIndex = 0}
    if (n < 0) {slideIndex = slides.length - 1}
    for (let i = 0; i < slides.length; i++) {
    slides[i].classList.remove('active');
}
    slides[slideIndex].classList.add('active');
}

    function autoShowSlides() {
    plusSlides(1);
    setTimeout(autoShowSlides, 4000);
}

    autoShowSlides();