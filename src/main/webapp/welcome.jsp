<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Welcome</title>
  <style>
    * {
      box-sizing: border-box;
    }

    body {
      font-family: Arial, sans-serif;
      background: linear-gradient(135deg, #4facfe, #00f2fe);
      height: 100vh;
      margin: 0;
      display: flex;
      align-items: center;
      justify-content: center;
    }

    .container {
      background: white;
      padding: 20px 40px;
      border-radius: 10px;
      text-align: center;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
    }

    h1 {
      font-size: 24px;
      color: #333;
    }

    p {
      color: #666;
      margin: 20px 0;
    }

    form {
      margin-top: 20px;
    }

    .btn {
      display: inline-block;
      padding: 10px 20px;
      font-size: 16px;
      color: #fff;
      background-color: #4facfe;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      text-decoration: none;
    }

    .btn:hover {
      background-color: #00aaff;
    }
  </style>
</head>
<body>
<c:set var="user" value="${sessionScope.user}"/>
<div class="container">
  <h1>Welcome, ${user.name}!</h1>
  <p>
    <span style="color: red">Your account is not verified!</span>, ${user.email}. Please confirm your email address to activate your account.
  </p>

  <!-- Form để xác nhận email -->
  <form action="${pageContext.request.contextPath}/confirmverificationservlet" method="post">
    <input type="hidden" name="email" value="${user.email}">
    <button type="submit" class="btn">Confirm Email</button>
  </form>
</div>
</body>
</html>
