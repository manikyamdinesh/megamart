<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Dashboard</title>

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Arial,sans-serif;
}

body{
background:#f1f3f6;
}

.header{
background:#2874f0;
color:white;
padding:20px;
display:flex;
justify-content:space-between;
align-items:center;
}

.logout{
background:red;
padding:10px 15px;
text-decoration:none;
color:white;
border-radius:5px;
}

.container{
width:90%;
margin:30px auto;
}

.profile{
background:white;
padding:20px;
border-radius:10px;
box-shadow:0 2px 10px rgba(0,0,0,.1);
margin-bottom:25px;
}

.cards{
display:grid;
grid-template-columns:repeat(auto-fit,minmax(250px,1fr));
gap:20px;
}

.card{
background:white;
padding:25px;
text-align:center;
border-radius:10px;
box-shadow:0 2px 10px rgba(0,0,0,.1);
}

.card h3{
margin-bottom:15px;
color:#2874f0;
}

.card a{
display:inline-block;
padding:10px 15px;
background:#2874f0;
color:white;
text-decoration:none;
border-radius:5px;
}

</style>

</head>
<body>

<div class="header">
<h2>MegaMart Dashboard</h2>

<a href="/logout" class="logout">
Logout
</a>
</div>

<div class="container">

<div class="profile">

<h3>Welcome, ${user.name}</h3>

<p>Email : ${user.email}</p>

<p>Mobile : ${user.mobile}</p>

</div>

<div class="cards">

<div class="card">
<h3>My Orders</h3>
<a href="/orders">View</a>
</div>

<div class="card">
<h3>My Cart</h3>
<a href="/cart">View</a>
</div>

<div class="card">
<h3>Wishlist</h3>
<a href="/wishlist">View</a>
</div>

<div class="card">
<h3>Profile</h3>
<a href="/profile">View</a>
</div>

<div class="card">
<h3>Reviews</h3>
<a href="/reviews">View</a>
</div>

<div class="card">
<h3>Rewards</h3>
<a href="/rewards">View</a>
</div>

</div>

</div>

</body>
</html>