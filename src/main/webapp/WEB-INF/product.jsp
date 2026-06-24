<%@ page import="java.util.List" %>
<%@ page import="com.project.entity.ProductEntity" %>

<!DOCTYPE html>
<html>
<head>
<title>Products</title>

<style>

body{
    font-family: Arial, sans-serif;
    background:#f4f4f4;
    margin:0;
    padding:20px;
}

h2{
    text-align:center;
    color:#333;
}

.container{
    display:flex;
    flex-wrap:wrap;
    justify-content:center;
    gap:20px;
}

.card{
    background:white;
    width:300px;
    border-radius:10px;
    padding:20px;
    box-shadow:0 2px 10px rgba(0,0,0,0.1);
}

.card h3{
    color:#007bff;
}

.price{
    font-size:20px;
    font-weight:bold;
    color:green;
}

.desc{
    color:#555;
}

.btn{
    display:inline-block;
    padding:10px 15px;
    background:#007bff;
    color:white;
    text-decoration:none;
    border-radius:5px;
    margin-top:10px;
}

.btn:hover{
    background:#0056b3;
}

</style>

</head>
<body>

<h2>Available Products</h2>

<div class="container">

<%
List<ProductEntity> products =
(List<ProductEntity>)request.getAttribute("products");

if(products != null){
for(ProductEntity p : products){
%>

<div class="card">

    <h3><%= p.getProductName() %></h3>

    <p class="price">
        ₹<%= p.getPrice() %>
    </p>

    <p>
        Quantity :
        <%= p.getQuantity() %>
    </p>

    <p class="desc">
        <%= p.getDescription() %>
    </p>

    <a href="/product/<%= p.getId() %>" class="btn">
        View Details
    </a>

</div>

<%
}
}
%>

</div>

</body>
</html>