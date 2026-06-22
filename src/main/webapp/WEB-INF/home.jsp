<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MegaMart</title>

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Arial,sans-serif;
}

.navbar{
background:#2874f0;
padding:15px 50px;
display:flex;
justify-content:space-between;
align-items:center;
}

.logo{
font-size:28px;
color:white;
font-weight:bold;
}

.nav-links a{
color:white;
text-decoration:none;
margin-left:20px;
}

.banner{
height:350px;
display:flex;
justify-content:center;
align-items:center;
background:#f1f3f6;
flex-direction:column;
}

.banner h1{
font-size:45px;
color:#2874f0;
}

.banner p{
margin-top:10px;
font-size:18px;
}

.products{
display:grid;
grid-template-columns:repeat(auto-fit,minmax(250px,1fr));
gap:20px;
padding:30px;
}

.card{
background:white;
padding:20px;
border-radius:10px;
text-align:center;
box-shadow:0 2px 10px rgba(0,0,0,.1);
}

.card img{
width:100%;
height:200px;
object-fit:cover;
}

.card h3{
margin-top:15px;
}

.card button{
margin-top:10px;
padding:10px 20px;
background:#2874f0;
color:white;
border:none;
border-radius:5px;
cursor:pointer;
}

</style>

</head>
<body>

<div class="navbar">
<div class="logo">MegaMart</div>

<div class="nav-links">
<a href="/home">Home</a>
<a href="/cart">Cart</a>
<a href="/dashboard">Dashboard</a>
<a href="/logout">Logout</a>
</div>
</div>

<div class="banner">
<h1>Welcome To MegaMart</h1>
<p>Your One Stop Shopping Destination</p>
</div>

<div class="products">

<div class="card">
<img src="https://via.placeholder.com/250x200">
<h3>iPhone 15</h3>
<p>₹79,999</p>
<button>Add To Cart</button>
</div>

<div class="card">
<img src="https://via.placeholder.com/250x200">
<h3>Samsung S24</h3>
<p>₹69,999</p>
<button>Add To Cart</button>
</div>

<div class="card">
<img src="https://via.placeholder.com/250x200">
<h3>HP Laptop</h3>
<p>₹54,999</p>
<button>Add To Cart</button>
</div>

</div>

</body>
</html>