<%@ page import="uz.pdp.online_store.service.shop.ShopService" %>
<%@ page import="uz.pdp.online_store.entity.shop.Shop" %>
<%@ page import="java.util.List" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">
    <title>My Stores</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 20px;
        }
        .shop-container {
            max-width: 800px;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        .shop-item {
            margin-bottom: 20px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f9f9f9;
        }
        .shop-name {
            font-size: 20px;
            color: #333;
            margin-bottom: 5px;
        }
    </style>
</head>
<body>
<div class="shop-container">
    <h1>My Stores</h1>
    <%
        ShopService shopService = new ShopService();
        String userId = (String) request.getSession().getAttribute("user_id");
        List<Shop> myShops = shopService.allMyShops(userId);
        for (Shop shop : myShops) {
    %>
    <div class="shop-item">
        <div class="shop-name"><%= shop.getShopName() %></div>
        <div><strong>Do'kon nomi:</strong> <%= shop.getShopName() %></div>
        <div><strong>Umumiy balans:</strong> <%= shop.getShopTotalBalance() %></div>
    </div>
    <%
        }
    %>
</div>
</body>
</html>
