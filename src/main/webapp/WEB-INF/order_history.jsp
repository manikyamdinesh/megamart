<%@ page import="java.util.List" %>
<%@ page import="com.project.entity.OrderEntity" %>

<!DOCTYPE html>
<html>
<head>
<title>Order History</title>

<style>

body{
    font-family: Arial;
    background:#f4f4f4;
}

.container{
    width:80%;
    margin:auto;
    background:white;
    padding:20px;
    margin-top:20px;
}

table{
    width:100%;
    border-collapse:collapse;
}

th{
    background:#007bff;
    color:white;
    padding:10px;
}

td{
    padding:10px;
    border:1px solid #ddd;
}

</style>

</head>
<body>

<div class="container">

<h2>My Orders</h2>

<table>

<tr>
<th>Order ID</th>
<th>Product</th>
<th>Total</th>
<th>Status</th>
</tr>

<%
List<OrderEntity> orders =
(List<OrderEntity>)request.getAttribute("orders");

if(orders != null){
for(OrderEntity o : orders){
%>

<tr>
<td><%= o.getId() %></td>
<td><%= o.getProductName() %></td>
<td>₹<%= o.getTotal() %></td>
<td><%= o.getStatus() %></td>
</tr>

<%
}
}
%>

</table>

</div>

</body>
</html>