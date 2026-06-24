<!DOCTYPE html>
<html>
<head>
    <title>Add Product</title>
    <link rel="stylesheet" href="e-commercestyles.css">
</head>
<body>

<div class="container">

    <h2>Add New Product</h2>

    <p>
        Enter product details to add a new electronic device to the store.
    </p>

    <form action="/save-product" method="post">

        <label>Product Name</label>
        <input type="text" name="productName" required>

        <label>Price</label>
        <input type="number" name="price" required>

        <label>Quantity</label>
        <input type="number" name="quantity" required>

        <label>Description</label>
        <textarea name="description" rows="4"></textarea>

        <button type="submit">
            Add Product
        </button>

    </form>

</div>

</body>
</html>
