<%@ page import="java.util.List" %>
<%@ page import="com.project.entity.CartEntity" %>

<!DOCTYPE html>
<html>
<head>
<title>My Cart</title>

<style>

body{
    font-family: Arial, sans-serif;
    background:#f4f6f9;
    padding:20px;
}

.container{
    width:80%;
    margin:auto;
    background:white;
    padding:20px;
    border-radius:10px;
    box-shadow:0 0 10px rgba(0,0,0,0.1);
}

h2{
    text-align:center;
    color:#007bff;
}

table{
    width:100%;
    border-collapse:collapse;
}

th{
    background:#007bff;
    color:white;
    padding:12px;
}

td{
    padding:12px;
    text-align:center;
    border-bottom:1px solid #ddd;
}

.remove-btn{
    background:red;
    color:white;
    padding:8px 12px;
    text-decoration:none;
    border-radius:5px;
}

.checkout-btn{
    background:green;
    color:white;
    padding:12px 20px;
    text-decoration:none;
    border-radius:5px;
}

</style>

</head>
<body>

<div class="container">

<h2>My Cart</h2>

<table>

<tr>
<th>Product</th>
<th>Price</th>
<th>Quantity</th>
<th>Action</th>
</tr>

<%
List<CartEntity> cartItems =
(List<CartEntity>)request.getAttribute("cartItems");

if(cartItems != null){
for(CartEntity c : cartItems){
%>

<tr>
<td><%= c.getProductName() %></td>
<td>₹<%= c.getPrice() %></td>
<td><%= c.getQuantity() %></td>

<td>
<a class="remove-btn"
href="/remove-cart/<%= c.getId() %>">
Remove
</a>
</td>
</tr>

<%
}
}
%>

</table>

<br><br>

<a class="checkout-btn" href="/checkout">
Proceed To Checkout
</a>

</div>

</body>
</html>