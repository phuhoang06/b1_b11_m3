<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 26/12/2024
  Time: 10:20 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Edit</title>
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

        /* Hiển thị thông báo (nếu có) */
        .message {
            color: #dc3545; /* Màu đỏ hoặc bạn có thể đổi sang màu khác */
            font-weight: 500;
        }

        .container {
            max-width: 600px;
            margin: 0 auto;
            background: #ffffff;
            padding: 20px;
            border-radius: 6px;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
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
        input[type="text"] {
            width: 100%;
            padding: 6px;
            border: 1px solid #ced4da;
            border-radius: 4px;
            font-size: 14px;
        }
        input[type="submit"] {
            background-color: #28a745;
            color: #ffffff;
            padding: 8px 16px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 14px;
            margin-right: 10px;
        }
        input[type="submit"]:hover {
            background-color: #218838;
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

        /* Link đơn giản để quay lại, nếu muốn */
        .simple-back-link {
            text-decoration: none;
            color: #007bff;
        }
        .simple-back-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Edit</h1>
    <p>
        <c:if test="${requestScope['message'] != null}">
            <span class="message">${requestScope['message']}</span>
        </c:if>
    </p>
    <form method="post">
        <fieldset>
            <legend>Product information</legend>
            <table>
                <tr>
                    <td>Name:</td>
                    <td>
                        <input type="text" name="name" id="name"
                               value="${requestScope['product'].getName()}">
                    </td>
                </tr>
                <tr>
                    <td>Price:</td>
                    <td>
                        <input type="text" name="price" id="price"
                               value="${requestScope['product'].getPrice()}">
                    </td>
                </tr>
                <tr>
                    <td>Infor:</td>
                    <td>
                        <input type="text" name="infor" id="infor"
                               value="${requestScope['product'].getInfor()}">
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="submit" value="Update">
                        <a class="back-link" href="/products?action=list">
                            Quay về danh sách
                        </a>
                    </td>
                </tr>
            </table>
        </fieldset>
    </form>
</div>
</body>
</html>
