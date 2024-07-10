<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Store</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.5.0/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="resources/css/mainMenu.css">
    <style>
        /* Your custom CSS can go here */
        body {
            font-family: "Source Sans Pro", sans-serif;
            background-color: #f8f9fa; /* Light gray background */
        }
        .navbar {
            background-color: #343a40; /* Dark navbar */
        }
        .navbar-brand {
            color: #ffffff; /* White text for brand */
            font-weight: bold;
        }
        .form-inline .form-control {
            width: 300px; /* Adjust search input width */
        }
        .slideshow-container {
            position: relative;
            max-width: 95%;
            overflow: hidden; /* Prevent image overflow */
        }
        .mySlides {
            display: none;
            width: 100%;
        }
        .mySlides img {
            width: 100%; /* Ensure images fill their containers */
            height: auto;
        }
        .prev, .next {
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            font-size: 20px;
            cursor: pointer;
            color: #ffffff; /* White arrows */
            background-color: rgba(0, 0, 0, 0.5); /* Semi-transparent background */
            padding: 10px 15px;
            border-radius: 5px;
        }
        .prev:hover, .next:hover {
            background-color: rgba(0, 0, 0, 0.8); /* Darker on hover */
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark">
    <a class="navbar-brand" href="">
        Online Store
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"><i class="bi bi-list"></i></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <form class="form-inline my-2 my-lg-0 ml-auto">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit"><i class="bi bi-search"></i></button>
        </form>
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link" href="loginSignUp"><i class="bi bi-person"></i> Login / Sign Up</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#"><i class="bi bi-bag"></i> Cart</a>
            </li>
        </ul>
    </div>
</nav>
<div class="slideshow-container">
    <div class="mySlides active">
        <img src="rekPicture/img5.png" alt="Image 1">
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
        <img src="rekPicture/img1.png" alt="Image 5">
    </div>
    <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
    <a class="next" onclick="plusSlides(1)">&#10095;</a>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="resources/js/mainMenu.js"></script>
<script>
    let slideIndex = 0;
    showSlides();

    function plusSlides(n) {
        showSlides(slideIndex += n);
    }

    function showSlides() {
        let slides = document.getElementsByClassName("mySlides");
        for (let i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        slideIndex++;
        if (slideIndex > slides.length) {slideIndex = 1}
        slides[slideIndex-1].style.display = "block";
        setTimeout(showSlides, 3000); // Change image every 3 seconds
    }
</script>
</body>
</html>
