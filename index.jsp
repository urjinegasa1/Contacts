<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Coop</title>
  <style>
    body {
      background-color: #f5f5f5;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
      font-family: Arial, sans-serif;
      background-image: url("banksmarter.png");
      background-size: cover;
      background-repeat: no-repeat;
      background-position: center;
    }

    .card {
      background-color: #fff;
      border-radius: 10px;
      box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
      padding: 40px;
      width: 400px;
      height: auto;
      text-align: center;
    }

    .card img {
      max-width: 150px;
      margin-bottom: 20px;
    }

    h2 {
      font-size: 24px;
      color: #333;
      margin-bottom: 20px;
    }

    .form-group {
      margin-bottom: 15px;
    }

    .form-control {
      width: 100%;
      padding: 12px;
      border: 1px solid #ccc;
      border-radius: 5px;
      font-size: 14px;
      box-sizing: border-box;
    }

    .btn-primary {
      display: block;
      width: 100%;
      background-color: #37AFE1;
      color: #fff;
      border: none;
      border-radius: 5px;
      font-size: 16px;
      padding: 12px;
      cursor: pointer;
      margin-top: 20px;
    }

    .btn-primary:hover {
      background-color: #2a91bd;
    }

    p {
      color: red;
      margin-top: 15px;
    }
  </style>
</head>
<body>
  <div class="card">
    <img src="${pageContext.request.contextPath}/logo.png">

    <h2>Sign</h2>
    <form action="<%=request.getContextPath() %>/LoginController" method="post">
      <div class="form-group">
        <input type="text" class="form-control" id="username" required placeholder="Username" name="username">
      </div>
      <div class="form-group">
        <input type="password" class="form-control" id="password" required placeholder="Password" name="password">
      </div>
      <button type="submit" class="btn-primary">LOGIN</button>
    </form>
    <c:if test="${not empty errorMessage}">
      <p>${errorMessage}</p>
    </c:if>
  </div>
</body>
</html>
