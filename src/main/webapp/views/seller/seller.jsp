<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="uz.pdp.online_store.service.product.CategoryService" %>
<%@ page import="uz.pdp.online_store.entity.product.Category" %>
<%@ page import="java.util.List" %>
<%@ page import="uz.pdp.online_store.util.ImageUtil" %>
<%@ page import="uz.pdp.online_store.entity.product.Product" %>
<%@ page import="uz.pdp.online_store.service.product.ProductService" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Store - Seller Menu</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.5.0/font/bootstrap-icons.min.css">
    <link rel="icon" type="image/jpeg" href="./resources/sticker.png">
    <style>
        body {
            background: #141E30; /* fallback for old browsers */
            background: -webkit-linear-gradient(to right, #243B55, #141E30); /* Chrome 10-25, Safari 5.1-6 */
            background: linear-gradient(to right, #243B55, #141E30);
            font-family: 'Arial', sans-serif;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }

        .header {
            margin-bottom: 50px;
            text-align: center;
        }

        .header h1 {
            color: #fff;
            font-size: 3em;
            margin: 0;
            text-shadow: 0 0 10px rgba(255, 255, 255, 0.7);
        }

        .navbar {
            background-color: #343a40;
            width: 100%;
        }

        .navbar-brand {
            color: #ffffff;
            font-weight: bold;
        }

        .form-inline .form-control {
            width: 300px;
        }

        .main-container {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }

        .product-container {
            flex: 3;
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
        }

        .product-item {
            flex: 1 1 calc(25% - 40px);
            margin: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            overflow: hidden;
            background-color: #fff;
            padding: 10px;
            display: flex;
            flex-direction: column;
            align-items: center;
            transition: transform 0.3s ease-in-out;
            height: 480px; /* Increase the height of the container */
        }

        .product-item:hover {
            transform: scale(1.1);
        }

        .product-item img {
            width: 100%;
            height: auto; /* Auto height for full image visibility */
            object-fit: contain; /* Ensure the entire image is visible */
            border-radius: 8px;
        }

        .product-title {
            font-size: 16px;
            font-weight: bold;
            color: #333333;
            margin: 10px 0;
            text-align: center;
        }

        .add-to-cart {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-top: auto; /* Push add-to-cart section to the bottom */
            width: 100%;
        }

        .quantity-controls button {
            border: none;
            background-color: #343a40;
            color: #ffffff;
            width: 30px;
            height: 30px;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
        }

        .quantity-controls input {
            width: 40px;
            text-align: center;
            border: 1px solid #dddddd;
            margin: 0 5px;
        }

        .add-to-cart button {
            background-color: #28a745;
            border: none;
            color: #ffffff;
            padding: 5px 10px;
            cursor: pointer;
            display: flex;
            align-items: center;
        }

        .add-to-cart button i {
            margin-right: 5px;
        }

        @media (max-width: 768px) {
            .product-item {
                flex: 1 1 calc(50% - 40px);
            }
        }

        @media (max-width: 576px) {
            .product-item {
                flex: 1 1 100%;
            }

            .category-list {
                display: none;
            }
        }

        .button-container {
            display: flex;
            flex-direction: row;
            gap: 20px;
            margin-top: 20px;
        }

        .animated-button {
            background: transparent;
            border: 2px solid #00bcd4;
            color: #00bcd4;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
            transition: all 0.3s ease;
            position: relative;
            overflow: hidden;
        }

        .animated-button:hover {
            background: #00bcd4;
            color: #fff;
            box-shadow: 0 0 10px #00bcd4, 0 0 20px #00bcd4, 0 0 30px #00bcd4;
        }
    </style>
</head>
<body>
<header class="header">
    <h1>SELLER MENU</h1>
</header>
<nav class="navbar navbar-expand-lg navbar-dark">
    <a class="navbar-brand" href="">
        Online Store
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"><i class="bi bi-list"></i></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a href="/seller/createstore">
                    <button type="button" class="animated-button animate__animated animate__fadeInUp">DO'KON YARATISH</button>
                </a>
                <a href="/seller/mystore">
                    <button type="button" class="animated-button animate__animated animate__fadeInUp">MENING DO'KONIM</button>
                </a>
                <a href="/seller/addproduct">
                    <button type="button" class="animated-button animate__animated animate__fadeInUp">MAHSULOT QO'SHISH</button>
                </a>
                <a href="/seller/manage">
                    <button type="button" class="animated-button animate__animated animate__fadeInUp">MAHSULOTLARNI OLIB TASHLASH</button>
                </a>
            </li>
        </ul>
    </div>
</nav>
<section class="main-section">
    <div class="button-container">
        <a href="/seller/createstore">
            <button type="button" class="animated-button animate__animated animate__fadeInUp">Do'kon yaratish</button>
        </a>
        <a href="/seller/mystore">
            <button type="button" class="animated-button animate__animated animate__fadeInUp">Mening do'konim</button>
        </a>
        <a href="/seller/addproduct">
            <button type="button" class="animated-button animate__animated animate__fadeInUp">Mahsulot qo'shish</button>
        </a>
    </div>
</section>
<div class="container-fluid main-container">
    <div class="row category-list">
        <div class="col-md-2">
            <h3 class="text-white">Categories</h3>
            <ul class="list-group">
                <%
                    CategoryService categoryService = new CategoryService();
                    List<Category> categories = categoryService.getAllCategories();
                    for (Category category : categories) {
                %>
                <li class="list-group-item"><%= category.getCategoryName()%></li>
                <%
                    }
                %>
            </ul>
        </div>
    </div>
    <div class="row product-container">
        <%
            HttpSession session1 = request.getSession();
            String userId = (String)session1.getAttribute("user_id");
            ProductService productService = new ProductService();
            List<Product> products = productService.getAllProducts();
            List<Product> list = products.stream().filter(product -> product.getShop().getId().equals(userId)).toList();
            for (Product product : list) {

                String base64Image = ImageUtil.getBase64Image(product.getPicture().getPicture());
        %>
        <div class="product-item animate__animated animate__zoomIn">
            <a href="/menu/productDetails?id=<%= product.getId() %>">
                <img src="data:image/jpeg;base64,<%= base64Image %>" alt="Product Image">
            </a>
            <div class="product-title"><%= product.getProductName() %></div>
            <div class="add-to-cart">
                <div class="quantity-controls">
                    <button type="button" class="quantity-minus">-</button>
                    <input type="number" value="1" min="1">
                    <button type="button" class="quantity-plus">+</button>
                </div>
                <button class="animated-button add-to-cart-button animate__animated animate__zoomIn">
                    <i class="fas fa-trash-alt"></i> O'chirish
                </button>
            </div>
        </div>
        <%
            }
        %>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script>
    $(document).ready(function () {
        $('.quantity-minus').click(function () {
            var input = $(this).siblings('input');
            var value = parseInt(input.val());
            if (value > 1) {
                input.val(value - 1);
            }
        });
        $('.quantity-plus').click(function () {
            var input = $(this).siblings('input');
            input.val(parseInt(input.val()) + 1);
        });
    });
</script>
</body>
</html>
