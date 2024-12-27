<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 26/12/2024
  Time: 2:26 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Thông tin sản phẩm</title>
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

        /* Thanh điều hướng đơn giản */
        nav {
            margin-bottom: 20px;
        }

        nav a {
            text-decoration: none;
            color: #007bff;
            font-weight: 500;
        }

        nav a:hover {
            text-decoration: underline;
        }

        .container {
            max-width: 600px;
            margin: 0 auto;
            background: #ffffff;
            padding: 20px;
            border-radius: 6px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
        }

        /* Bảng hiển thị thông tin sản phẩm */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
        }

        table tr {
            border-bottom: 1px solid #dee2e6;
        }

        table th,
        table td {
            text-align: left;
            padding: 10px;
            vertical-align: middle;
        }

        table th {
            width: 30%;
            color: #495057;
        }

        table td {
            width: 70%;
        }

        .product-description {
            /* Tùy chỉnh vùng mô tả, có thể thêm giới hạn chiều cao, scroll... */
            max-height: 100px;
            overflow-y: auto;
        }

        /* Button hoặc link để quay về danh sách */
        .back-link {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 15px;
            background-color: #007bff;
            color: #ffffff;
            text-decoration: none;
            border-radius: 4px;
        }

        .back-link:hover {
            background-color: #0056b3;
        }

    </style>
</head>
<body>
<div class="container">
    <header>
        <h1>Thông tin sản phẩm</h1>
        <nav>
            <a href="/products" class="back-link">Quay lại danh sách sản phẩm</a>
        </nav>
    </header>

    <main>
        <table>
            <tr>
                <th>ID</th>
                <td>${requestScope["product"].getId()}</td>
            </tr>
            <tr>
                <th>Tên sản phẩm</th>
                <td>${requestScope["product"].getname()}</td>
            </tr>
            <tr>
                <th>Giá sản phẩm</th>
                <td>${requestScope["product"].getprice()}</td>
            </tr>
            <tr>
                <th>Mô tả sản phẩm</th>
                <td class="product-description">${requestScope["product"].getinfor()}</td>
            </tr>
        </table>
    </main>
</div>
</body>
</html>