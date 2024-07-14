<%@ page import="uz.pdp.online_store.entity.user.Users" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="UTF-8">
  <title>User Info</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f8f9fa;
      margin: 0;
      padding: 0;
    }
    .container {
      max-width: 800px;
      margin: 0 auto;
      padding: 20px;
    }
    .user-info {
      background-color: #ffffff;
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      margin-bottom: 20px;
    }
    .logout-btn {
      background-color: #dc3545;
      color: #ffffff;
      border: none;
      padding: 10px 20px;
      font-size: 16px;
      cursor: pointer;
      border-radius: 5px;
    }
    .logout-btn:hover {
      background-color: #c82333;
    }
    .confirm-dialog {
      display: none;
      position: fixed;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      background-color: #ffffff;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      padding: 20px;
      z-index: 1000;
    }
    .confirm-dialog button {
      margin: 10px;
      padding: 10px 20px;
      border: none;
      border-radius: 5px;
      font-size: 16px;
    }
    .confirm-dialog .yes-btn {
      background-color: #28a745;
      color: #ffffff;
    }
    .confirm-dialog .no-btn {
      background-color: #6c757d;
      color: #ffffff;
    }
    .overlay {
      display: none;
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background-color: rgba(0, 0, 0, 0.5);
      z-index: 999;
    }
  </style>
  <script>
    function showConfirmDialog() {
      document.getElementById('overlay').style.display = 'block';
      document.getElementById('confirmDialog').style.display = 'block';
    }
    function hideConfirmDialog() {
      document.getElementById('overlay').style.display = 'none';
      document.getElementById('confirmDialog').style.display = 'none';
    }
    function logout() {
      window.location.href = 'logout.jsp';  // Create a separate JSP file to handle logout
    }
  </script>
</head>
<body>
<div class="container">
  <h2>User Information</h2>
  <div class="user-info">
    <%-- Retrieve user information from session --%>
    <% Users user = (Users) session.getAttribute("user");
      if (user != null) { %>
    <p><strong>Name:</strong> <%= user.getFullName() %></p>
    <p><strong>Email:</strong> <%= user.getEmail() %></p>
    <p><strong>Phone Number:</strong> <%= user.getPhoneNumber() %></p>
    <hr>
    <button class="logout-btn" onclick="showConfirmDialog()">Logout</button>
    <% } else { %>
    <p>User not logged in.</p>
    <% } %>
  </div>
  <a href="${pageContext.request.contextPath}">Back to Main Menu</a>
</div>

<div id="overlay" class="overlay"></div>
<div id="confirmDialog" class="confirm-dialog">
  <p>Hisobdan chiqasiszmi?</p>
  <a href="logout"><button type="button" class="yes-btn" >Ha</button></a>
  <button class="no-btn" onclick="hideConfirmDialog()">Yo'q</button>
</div>

</body>
</html>
