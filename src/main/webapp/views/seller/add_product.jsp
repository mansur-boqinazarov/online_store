<%@ page import="uz.pdp.online_store.service.product.CategoryService" %>
<%@ page import="uz.pdp.online_store.entity.product.Category" %>
<%@ page import="java.util.List" %>
<%@ page import="uz.pdp.online_store.service.shop.ShopService" %>
<%@ page import="uz.pdp.online_store.entity.shop.Shop" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Product</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
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

        .form-container {
            background-color: #3a3f47;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 400px;
            margin-top: 20px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-label {
            display: block;
            margin-bottom: 5px;
            color: #fff;
        }

        .form-input {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: none;
            background-color: #555b66;
            color: #fff;
        }

        .select-input {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: none;
            background-color: #555b66;
            color: #fff;
        }

        .submit-button {
            background-color: #00bcd4;
            color: #fff;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            border: none;
            outline: none;
        }

        .submit-button:hover {
            background-color: #0198af;
        }

        .error-message {
            color: #ff6b6b;
            margin-top: 5px;
        }
    </style>
</head>
<body>
<section class="main-section">
    <div class="form-container">
        <div class="header">
            <h1>MAHSULOT QO'SHISH</h1>
        </div>
        <form method="post" action="/seller/addproduct" enctype="multipart/form-data">
            <div class="form-group">
                <label for="productName" class="form-label">Mahsulot nomi</label>
                <input type="text" id="productName" name="productName" class="form-input">
            </div>
            <div class="form-group">
                <label for="productDescription" class="form-label">Mahsulot tavsifi</label>
                <textarea id="productDescription" name="productDescription" rows="4" class="form-input"></textarea>
            </div>
            <div class="form-group">
                <label for="productPrice" class="form-label">Mahsulot narxi</label>
                <input type="number" id="productPrice" name="productPrice" class="form-input">
            </div>
            <div class="form-group">
                <label for="productQuantity" class="form-label">Mahsulot miqdori</label>
                <input type="number" id="productQuantity" name="productQuantity" class="form-input">
            </div>
            <div class="form-group">
                <label for="measurement" class="form-label">Mahsulot o'lchovi</label>
                <select id="measurement" name="measurement" class="select-input">
                    <option value="KILOGRAM">Kilogram</option>
                    <option value="PIECE">Piece</option>
                    <option value="LITER">Liter</option>
                </select>
            </div>
            <div class="form-group">
                <label for="categoryId" class="form-label">Mahsulot kategoriyasi</label>
                <select id="categoryId" name="categoryId" class="select-input">
                    <%
                        CategoryService categoryService = new CategoryService();
                        List<Category> categories = categoryService.getAllCategories();
                        for (Category category : categories) {
                    %>
                    <option value="<%= category.getId() %>"><%= category.getCategoryName() %></option>
                    <%
                        }
                    %>
                </select>
            </div>

            <div class="form-group">
                <label for="shopId" class="form-label">Mahsulotni qo'shish do'koni</label>
                <select id="shopId" name="shopId" class="select-input">
                    <%
                        ShopService shopService = new ShopService();
                        List<Shop> shops = shopService.getAllShops();
                        for (Shop shop : shops) {
                    %>
                    <option value="<%= shop.getId() %>"><%= shop.getShopName() %></option>
                    <%
                        }
                    %>
                </select>
            </div>

            <div class="form-group">
                <label for="productImage" class="form-label">Mahsulot rasmi</label>
                <input type="file" id="productImage" name="productImage" class="form-input" required>
            </div>

            <button type="submit" class="submit-button animate__animated animate__fadeInUp">Saqlash</button>
        </form>
    </div>
</section>
<script>
    document.addEventListener('DOMContentLoaded', (event) => {
        const submitButton = document.querySelector('.submit-button');

        submitButton.addEventListener('click', () => {
            submitButton.classList.add('animate__animated', 'animate__heartBeat');
            setTimeout(() => {
                submitButton.classList.remove('animate__animated', 'animate__heartBeat');
            }, 1000);
        });
    });
</script>
</body>
</html>