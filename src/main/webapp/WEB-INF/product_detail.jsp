<%@ page import="com.project.entity.ProductEntity" %>

<!DOCTYPE html>
<html>
<head>
<title>Product Details</title>

<style>

body{
    font-family: Arial, sans-serif;
    background-color:#f4f4f4;
    margin:0;
    padding:20px;
}

.container{
    width:500px;
    margin:auto;
    background:white;
    padding:25px;
    border-radius:10px;
    box-shadow:0px 0px 10px rgba(0,0,0,0.2);
}

h2{
    color:#007bff;
    text-align:center;
}

.price{
    font-size:24px;
    color:green;
    font-weight:bold;
}

.quantity{
    font-size:18px;
    color:#444;
}

.description{
    margin-top:15px;
    color:#666;
    line-height:1.5;
}

.btn{
    background:#007bff;
    color:white;
    border:none;
    padding:12px 20px;
    border-radius:5px;
    cursor:pointer;
    margin-top:20px;
    font-size:16px;
}

.btn:hover{
    background:#0056b3;
}

</style>

</head>
<body>

<%
ProductEntity product =
(ProductEntity)request.getAttribute("product");
%>

<div class="container">

    <h2><%= product.getProductName() %></h2>

    <p class="price">
        ₹<%= product.getPrice() %>
    </p>

    <p class="quantity">
        Available Quantity :
        <%= product.getQuantity() %>
    </p>

    <p class="description">
        <%= product.getDescription() %>
    </p>

    <form action="/add-cart" method="post">

        <input type="hidden"
               name="productId"
               value="<%= product.getId() %>">

        <button type="submit" class="btn">
            Add To Cart
        </button>

    </form>

</div>

</body>
</html>