<%@ page import="uz.pdp.online_store.entity.product.Category" %>
<%@ page import="uz.pdp.online_store.service.product.CategoryService" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Category</title>
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

        .form-container {
            width: 100%;
            max-width: 400px;
            background-color: #3a3f47;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-label {
            display: block;
            font-size: 18px;
            margin-bottom: 5px;
        }

        .form-input {
            width: calc(100% - 12px);
            padding: 10px;
            font-size: 16px;
            border: 1px solid #555b66;
            background-color: #4a4f57;
            color: #ffffff;
            border-radius: 5px;
            transition: border-color 0.3s ease;
        }

        .form-input:focus {
            outline: none;
            border-color: #61dafb;
        }

        .submit-button {
            background-color: #61dafb;
            border: none;
            color: #282c34;
            cursor: pointer;
            padding: 12px 20px;
            font-size: 16px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .submit-button:hover {
            background-color: #51c5e7;
        }
    </style>
</head>
<body>

<div class="form-container">
    <h1 style="text-align: center; margin-bottom: 20px;">Create Category</h1>

    <form method="post" action="${pageContext.request.contextPath}/admin/createCategory">
        <div class="form-group">
            <label class="form-label" for="categoryName">Category Name:</label>
            <input type="text" id="categoryName" name="categoryName" class="form-input" required>
        </div>

        <button type="submit" class="submit-button">Create Category</button>
    </form>

</div>

</body>
</html>
