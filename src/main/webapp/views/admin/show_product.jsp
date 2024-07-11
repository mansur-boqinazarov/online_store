<!DOCTYPE html>
<%@ page import="uz.pdp.online_store.entity.product.Product" %>
<%@ page import="uz.pdp.online_store.service.product.ProductService" %>
<%@ page import="java.util.List" %>
<%@ page import="uz.pdp.online_store.util.ImageUtil" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Manage Products</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #f8f9fa;
            color: #212529;
            padding: 20px;
            margin: 0;
        }

        .product-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
            margin-top: 20px;
        }

        .product-item {
            background-color: #ffffff;
            padding: 15px;
            width: 300px;
            border: 1px solid #e0e0e0;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .product-item:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        .product-item img {
            width: 100%;
            height: 200px;
            object-fit: cover;
            border-radius: 10px 10px 0 0;
            transition: opacity 0.3s ease;
        }

        .product-item:hover img {
            opacity: 0.9;
        }

        .product-title {
            font-size: 18px;
            font-weight: bold;
            color: #333333;
            margin: 15px 0;
            text-align: center;
        }

        .product-details p {
            margin: 5px 0;
            font-size: 14px;
            color: #666666;
        }

        .product-price {
            font-size: 18px;
            font-weight: bold;
            color: #28a745;
            margin: 10px 0;
            text-align: center;
        }

        .delete-button {
            background-color: #dc3545;
            border: none;
            color: #ffffff;
            cursor: pointer;
            font-size: 14px;
            padding: 10px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
            width: 100%;
            margin-top: 10px;
        }

        .delete-button:hover {
            background-color: #c82333;
        }

        .delete-button i {
            margin-right: 5px;
        }

        @media (max-width: 768px) {
            .product-container {
                justify-content: flex-start;
            }

            .product-item {
                width: calc(50% - 10px);
            }
        }

        @media (max-width: 576px) {
            .product-item {
                width: 100%;
            }
        }
    </style>
</head>
<body>
<header>
    <h1 style="text-align: center;">Mahsulotlar</h1>
</header>
<div class="product-container">
    <%
        ProductService productService = new ProductService();
        List<Product> productList = productService.getAllProducts();

        for (Product product : productList) {
            String base64Image = ImageUtil.getBase64Image(product.getPicture().getPicture());
    %>
    <div class="product-item">
        <img src="data:image/jpeg;base64,<%= base64Image %>" alt="Product Image">
        <div class="product-title"><%= product.getProductName() %></div>
        <div class="product-details">
            <p><strong>Description:</strong> <%= product.getProductDescription() %></p>
            <p><strong>Price:</strong> $<%= product.getProductPrice() %></p>
            <p><strong>Quantity:</strong> <%= product.getProductQuantity() %></p>
        </div>
    </div>
    <%
        }
    %>
</div>

</body>
</html>