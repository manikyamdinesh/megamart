<!DOCTYPE html>
<html>
<head>
<title>Checkout</title>

<style>

body{
    font-family:Arial;
    background:#f5f5f5;
}

.container{
    width:500px;
    margin:auto;
    background:white;
    padding:20px;
    margin-top:30px;
    border-radius:10px;
}

input, select{
    width:100%;
    padding:10px;
    margin-top:10px;
}

button{
    background:green;
    color:white;
    padding:10px;
    border:none;
    width:100%;
    margin-top:15px;
}

</style>

</head>
<body>

<div class="container">

<h2>Checkout</h2>

<form action="/place-order" method="post">

    <input type="text"
           name="customerName"
           placeholder="Enter Name">

    <input type="text"
           name="address"
           placeholder="Enter Address">

    <input type="text"
           name="phoneNumber"
           placeholder="Enter Phone Number">

    <select name="paymentMethod">

        <option>Cash On Delivery</option>

    </select>

    <button type="submit">
        Place Order
    </button>

</form>

</div>

</body>
</html>