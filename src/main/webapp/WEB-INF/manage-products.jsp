<%@ page import="java.util.List" %>
<%@ page import="com.project.entity.ProductEntity" %>

<!DOCTYPE html>
<html>
<head>
<title>Manage Products</title>
<link rel="stylesheet" href="e-commercestyles.css">
</head>
<body>

<h2>Manage Products</h2>

<a href="/add-product">Add Product</a>

<br><br>

<table border="1">

<tr>
    <th>ID</th>
    <th>Name</th>
    <th>Price</th>
    <th>Quantity</th>
    <th>Action</th>
</tr>

<%
List<ProductEntity> products =
(List<ProductEntity>)request.getAttribute("products");

if(products != null){
for(ProductEntity p : products){
%>

<tr>
    <td><%= p.getId() %></td>
    <td><%= p.getProductName() %></td>
    <td>₹<%= p.getPrice() %></td>
    <td><%= p.getQuantity() %></td>

    <td>
        <a href="/delete-product/<%= p.getId() %>">
            Delete
        </a>
    </td>
</tr>

<%
}
}
%>

</table>

</body>
</html>