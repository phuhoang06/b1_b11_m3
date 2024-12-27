<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 26/12/2024
  Time: 2:26 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            margin-right: 10px;
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
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
        }

        /* Bảng hiển thị thông tin sản phẩm */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
        }

        table thead {
            background-color: #e9ecef;
        }

        table th,
        table td {
            text-align: left;
            padding: 10px;
            vertical-align: middle;
            border-bottom: 1px solid #dee2e6;
        }

        /* Mô tả sản phẩm (nếu cần) */
        .product-description {
            max-height: 100px;
            overflow-y: auto;
        }
        /* Link chỉnh sửa và xóa */
        .action-link {
            color: #007bff;
            text-decoration: none;
            margin-right: 10px;
        }

        .action-link:hover {
            text-decoration: underline;
        }

    </style>
</head>
<body>
<header>
    <h1>Thông tin sản phẩm</h1>
    <nav>
        <a href="/products?action=create">Tạo sản phẩm</a>
    </nav>
</header>

<div class="container">
    <table>
        <thead>
        <tr>
            <th>Tên</th>
            <th>Giá</th>
            <th>Thông tin</th>
            <th>Chỉnh sửa</th>
            <th>Xóa</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${requestScope['products']}" var="product">
            <tr>
                <td>
                    <a href="/products?action=view&id=${product.getId()}">
                            ${product.getName()}
                    </a>
                </td>
                <td>${product.getPrice()}</td>
                <td>${product.getInfor()}</td>
                <td>
                    <a class="action-link" href="/products?action=edit&id=${product.getId()}">
                        Sửa
                    </a>
                </td>
                <td>
                    <a class="action-link" href="/products?action=delete&id=${product.getId()}">
                        Xóa
                    </a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

</div>
</body>
</html>
