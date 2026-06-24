<!DOCTYPE html>
<html>
<head>
<title>Add Product</title>
</head>
<body>

<h2>Add Product</h2>

<form action="/save-product" method="post">

    Product Name:
    <input type="text" name="productName" required>
    <br><br>

    Price:
    <input type="number" name="price" required>
    <br><br>

    Quantity:
    <input type="number" name="quantity" required>
    <br><br>

    Description:
    <textarea name="description"></textarea>
    <br><br>

    <button type="submit">Save Product</button>

</form>

</body>
</html>