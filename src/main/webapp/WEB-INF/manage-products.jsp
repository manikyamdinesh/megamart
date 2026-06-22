<%@ page import="java.util.List" %>
<%@ page import="com.project.entity.ProductEntity" %>

<!DOCTYPE html>
<html>
<head>
    <title>Manage Products</title>
</head>
<body>

<h2>Manage Products</h2>

<h3>Add Product</h3>

<form action="/save-product" method="post">

    Product Name:
    <input type="text" name="productName" required>
    <br><br>

    Price:
    <input type="number" step="0.01" name="price" required>
    <br><br>

    Quantity:
    <input type="number" name="quantity" required>
    <br><br>

    Description:
    <textarea name="description"></textarea>
    <br><br>

    <input type="submit" value="Add Product">

</form>

<hr>

<h3>Product List</h3>

<table border="1" cellpadding="10">

<tr>
    <th>ID</th>
    <th>Name</th>
    <th>Price</th>
    <th>Quantity</th>
    <th>Description</th>
    <th>Action</th>
</tr>

<%
List<ProductEntity> products =
        (List<ProductEntity>) request.getAttribute("products");

if(products != null){
    for(ProductEntity p : products){
%>

<tr>
    <td><%= p.getId() %></td>
    <td><%= p.getProductName() %></td>
    <td><%= p.getPrice() %></td>
    <td><%= p.getQuantity() %></td>
    <td><%= p.getDescription() %></td>

    <td>
        <a href="delete-product/<%= p.getId() %>">
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