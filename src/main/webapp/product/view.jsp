<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 26/12/2024
  Time: 4:52 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <title>View Customer</title>
  <style>
    /* Đặt font chữ và margin mặc định */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
    }
    body {
      background-color: #f8f9fa;
      padding: 20px;
    }
    h1 {
      margin-bottom: 10px;
    }

    .container {
      max-width: 600px;
      margin: 0 auto;
      background: #ffffff;
      padding: 20px;
      border-radius: 6px;
      box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
    }

    /* Link “Back” hoặc “Quay về” */
    .back-link {
      display: inline-block;
      margin-bottom: 20px;
      padding: 10px 15px;
      background-color: #007bff;
      color: #ffffff;
      text-decoration: none;
      border-radius: 4px;
    }
    .back-link:hover {
      background-color: #0056b3;
    }

    /* Bảng hiển thị thông tin */
    table {
      width: 100%;
      border-collapse: collapse;
    }
    table tr {
      border-bottom: 1px solid #dee2e6;
    }
    table td {
      padding: 10px;
      vertical-align: top;
    }
    table td:first-child {
      font-weight: 500;
      width: 30%;
    }
  </style>
</head>
<body>
<div class="container">
  <h1>Customer Details</h1>
  <a class="back-link" href="/products?action=list">Quay về danh sách</a>

  <table>
    <tr>
      <td>Name:</td>
      <td>${requestScope["product"].getName()}</td>
    </tr>
    <tr>
      <td>Price:</td>
      <td>${requestScope["product"].getPrice()}</td>
    </tr>
    <tr>
      <td>Infor:</td>
      <td>${requestScope["product"].getInfor()}</td>
    </tr>
  </table>
</div>
</body>
</html>
