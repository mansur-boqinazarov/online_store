<%@ page import="uz.pdp.online_store.entity.product.Product" %>
<%@ page import="uz.pdp.online_store.service.product.ProductService" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Manage Products</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #282c34;
            color: #ffffff;
            padding: 20px;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .product-container {
            width: 100%;
            max-width: 800px;
            background-color: #3a3f47;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .product-item {
            margin-bottom: 15px;
            padding: 15px;
            background-color: #4e525b;
            border-radius: 5px;
        }

        .product-title {
            font-size: 18px;
            font-weight: bold;
            color: #61dafb;
            margin-bottom: 10px;
        }

        .product-details {
            color: #ffffff;
        }

        .delete-button {
            background-color: transparent;
            border: none;
            color: #ff6b6b;
            cursor: pointer;
            font-size: 14px;
            transition: color 0.3s ease;
        }

        .delete-button:hover {
            color: #ff4c4c;
        }
    </style>
</head>
<body>

<div class="product-container">
    <h1 style="text-align: center; color: #61dafb;">Manage Products</h1>
    <%
        ProductService productService = new ProductService();
        List<Product> productList = productService.getAllProducts();

        for (Product product : productList) {
    %>
    <div class="product-item">
        <div class="product-title"><%= product.getProductName() %></div>
        <div class="product-details">
            <p><strong>Description:</strong> <%= product.getProductDescription() %></p>
            <p><strong>Price:</strong> $<%= product.getProductPrice() %></p>
            <p><strong>Quantity:</strong> <%= product.getProductQuantity() %></p>
            <form method="post" action="/admin/delete-product">
                <input type="hidden" name="productId" value="<%= product.getId() %>">
                <button type="submit" class="delete-button">Delete Product</button>
            </form>
        </div>
    </div>
    <%
        }
    %>
</div>

</body>
</html>
