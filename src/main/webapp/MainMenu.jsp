<!DOCTYPE html>
<html lang="en">
<head>
    <style>
        .slideshow-container {
            position: relative;
            max-width: 1000px;
            margin: 20px auto; /* Reduced margin to bring the slideshow closer */
            overflow: hidden;
        }

        .mySlides {
            display: none;
            width: 100%;
            height: auto; /* Make height automatic to adjust to width */
            transition: transform 0.5s ease-in-out; /* Added transition for smooth effect */
        }

        .mySlides img {
            width: 100%;
            border-radius: 15px; /* Added border-radius for rounded corners */
        }

        .active {
            display: block;
        }

        .prev, .next {
            cursor: pointer;
            position: absolute;
            top: 50%;
            width: auto;
            margin-top: -22px;
            padding: 16px;
            color: white;
            font-weight: bold;
            font-size: 18px;
            transition: 0.6s ease;
            border-radius: 0 3px 3px 0;
            user-select: none;
        }

        .next {
            right: 0;
            border-radius: 3px 0 0 3px;
        }

        .prev {
            left: 0;
            border-radius: 3px 0 0 3px;
        }

        .prev:hover, .next:hover {
            background-color: rgba(0,0,0,0.8);
        }
    </style>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.5.0/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="resources/css/mainMenu.css">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark">
    <a class="navbar-brand" href="#">
        Online Store
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"><i class="bi bi-list"></i></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <form class="form-inline my-2 my-lg-0 ml-auto">
            <button class="btn katalog-btn mr-2" type="button"><i class="bi bi-grid"></i> Katalog</button>
            <input class="form-control mr-sm-2 search-input" type="search" placeholder="Mahsulotlar va turkumlar izlash" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit"><i class="bi bi-search"></i></button>
        </form>
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link login-link" href="loginSignUp"><i class="bi bi-person"></i></a>
            </li>
            <li class="nav-item">
                <a class="nav-link cart-link" href="#"><i class="bi bi-bag"></i> Savat</a>
            </li>
        </ul>
    </div>
</nav>
<div class="slideshow-container">
    <div class="mySlides active">
        <img src="rekPicture/img1.png" alt="Image 1">
    </div>
    <div class="mySlides">
        <img src="rekPicture/img2.png" alt="Image 2">
    </div>
    <div class="mySlides">
        <img src="rekPicture/img3.png" alt="Image 3">
    </div>
    <div class="mySlides">
        <img src="rekPicture/img4.png" alt="Image 4">
    </div>
    <div class="mySlides">
        <img src="rekPicture/img5.png" alt="Image 5">
    </div>
    <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
    <a class="next" onclick="plusSlides(1)">&#10095;</a>
</div>

<script>
    let slideIndex = 0;
    let slides = document.getElementsByClassName("mySlides");

    function plusSlides(n) {
        showSlides(slideIndex += n);
    }

    function showSlides(n) {
        if (n >= slides.length) { slideIndex = 0 }
        if (n < 0) { slideIndex = slides.length - 1 }
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
</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="resources/js/mainMenu.js"></script>
</body>
</html>
