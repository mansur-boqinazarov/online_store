<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up and Login Form</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Playfair+Display">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" href="/resources/css/loginSignup.css">
</head>
<body>
<div class="container">
    <div class="message signup">
        <div class="btn-wrapper">
            <button class="button" id="signup">Sign Up</button>
            <button class="button" id="login"> Login</button>
        </div>
    </div>
    <div class="form form--signup">
        <div class="form--heading">Welcome! Sign Up</div>
        <form  action="signup" method="post">
            <input type="text" name="fullName" placeholder="Full Name">
            <input type="email" name="email" placeholder="Email">
            <input type="password" name="password" placeholder="Password">
            <input type="text" name="number" placeholder="Phone Number">
            <button class="button">Sign Up</button>
        </form>
    </div>
    <div class="form form--login">
        <div class="form--heading">Welcome Log In! </div>
        <form action="login" method="post">
            <input type="email" name="email" placeholder="Email">
            <input type="password" name="password" placeholder="Password">
            <button class="button">Login</button>
        </form>
    </div>
</div>
<script src="/resources/js/loginSignup.js"></script>
</body>
</html>
