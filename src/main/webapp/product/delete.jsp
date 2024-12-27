<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 26/12/2024
  Time: 10:21 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Deleting Product</title>
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

        /* Link hoặc button “Back” */
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

        fieldset {
            border: 1px solid #ced4da;
            padding: 20px;
            border-radius: 6px;
            margin-top: 20px;
        }
        legend {
            font-weight: 600;
            padding: 0 8px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }
        table td {
            padding: 10px 0;
            vertical-align: middle;
        }
        table td:first-child {
            width: 20%;
            font-weight: 500;
        }

        input[type="submit"] {
            background-color: #dc3545;
            color: #ffffff;
            padding: 8px 16px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 14px;
            margin-right: 10px;
        }
        input[type="submit"]:hover {
            background-color: #c82333;
        }

        .confirmation-title {
            margin-bottom: 10px;
            color: #dc3545;
            font-size: 18px;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Delete Product</h1>
    <form method="post">
        <h3 class="confirmation-title">Are you sure you want to delete this product?</h3>
        <fieldset>
            <legend>Product Information</legend>
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
                <tr>
                    <td>
                        <input type="submit" value="Delete">
                    </td>
                    <td>
                        <a class="back-link" href="/products?action=list">Quay về danh sách</a>
                    </td>
                </tr>
            </table>
        </fieldset>
    </form>
</div>
</body>
</html>
