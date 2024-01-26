<!DOCTYPE html>
<html lang="en">
<!-- Basic -->
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Site Metas -->
    <title>Freshshop </title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">
    <style>
        body {
            font-family: Arial, sans-serif;
        }

        h1 {
            text-align: center;
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        table th, table td {
            border: 1px solid #ddd;
            padding: 8px;
        }

        table th {
            background-color: #f2f2f2;
        }

        .button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 4px;
        }

        .button:hover {
            background-color: #45a049;
        }

        .text-right {
            text-align: right;
        }

        /* Popup styles */
        .overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            display: none;
            justify-content: center;
            align-items: center;
        }

        .popup {
            background-color: white;
            padding: 20px;
            border-radius: 4px;
            width: 300px;
            text-align: center;
        }

        .popup input,
        .popup textarea {
            display: block;
            margin-bottom: 10px;
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
        }

        .popup button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin-top: 10px;
            border-radius: 4px;
            cursor: pointer;
        }

        /* File Upload styles */
        .file-upload {
            display: block;
            margin-bottom: 10px;
        }

        .file-upload input[type="file"] {
            display: none;
        }

        .file-upload-label {
            display: inline-block;
            padding: 8px 16px;
            background-color: #4CAF50;
            color: white;
            border-radius: 4px;
            cursor: pointer;
        }

        .file-upload-label:hover {
            background-color: #45a049;
        }

        .file-upload input[type="file"]:focus + .file-upload-label {
            outline: 2px solid #4CAF50;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Admin Product</h1>
    <div>
        <a href="#" class="button" id="addButton">Thêm</a>
        <a href="#" class="button">Sửa</a>
        <a href="#" class="button">Xóa</a>
    </div>
    <table>
        <thead>
        <tr>
            <th>ID</th>
            <th>Ảnh</th>
            <th>Tên sản phẩm</th>
            <th>Giá bán</th>
            <th>Số lượng</th>
            <th>ID nhà cung cấp</th>
            <th class="text-right">Hành Động</th>
        </tr>
        </thead>
        <tbody>
        <!-- Dữ liệu sản phẩm sẽ được thêm vào đây -->
        </tbody>
    </table>
</div>

<!-- Popup -->
<div class="overlay" id="overlay">
    <div class="popup">
        <h2>Thêm sản phẩm</h2>
        <input type="text" placeholder="Tên sản phẩm" id="productNameInput">
        <textarea placeholder="Mô tả sản phẩm" id="productDescriptionInput"></textarea>
        <div class="file-upload">
            <input type="file" id="imageUpload" accept="image/*">
            <div class="file-upload-label">Tải lên hình ảnh</div>
        </div>
        <button id="addProductButton">Thêm</button>
    </div>
</div>

<script>
    // Lấy các phần tử DOM
    const addButton = document.getElementById('addButton');
    const overlay = document.getElementById('overlay');
    const addProductButton = document.getElementById('addProductButton');

    // Hiển thị popup khi bấm nút "Thêm"
    addButton.addEventListener('click', () => {
        overlay.style.display = 'flex';
    });

    // Đóng popup khi bấm nút "Thêm" hoặc nút đóng
    addProductButton.addEventListener('click', () => {
        overlay.style.display = 'none';
    });
</script>
</body>
</html>