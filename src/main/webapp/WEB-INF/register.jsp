<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Register Page</title>

<style>
*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Arial, Helvetica, sans-serif;
}

body{
    height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
    background:linear-gradient(to right,#4facfe,#00f2fe);
}

.container{
    width:350px;
}

.register-form{
    background-color:white;
    padding:35px;
    border-radius:10px;
    box-shadow:0px 4px 15px rgba(0,0,0,0.2);
}

.register-form h2{
    text-align:center;
    margin-bottom:25px;
    color:#333;
}

.register-form input{
    width:100%;
    padding:12px;
    margin-bottom:15px;
    border:1px solid #ccc;
    border-radius:5px;
    font-size:14px;
}

.register-form button{
    width:100%;
    padding:12px;
    border:none;
    background-color:#4facfe;
    color:white;
    font-size:16px;
    border-radius:5px;
    cursor:pointer;
}

.login-link{
    text-align:center;
    margin-top:15px;
}
</style>

</head>

<body>

<div class="container">

  <form class="register-form" action="register" method="post">

        <h2>Create Account</h2>

        <input type="text"name="name"placeholder="Enter Full Name"required>

        <input type="email"name="email"placeholder="Enter Email"required>

        <input type="password" name="password" placeholder="Enter Password"required>

        <input type="tel"name="mobile"placeholder="Enter Mobile Number"required>

        <button type="submit">Register</button>

        <p class="login-link">
            Already have an account?
            <a href="login.jsp">Login</a>
        </p>

    </form>

</div>

</body>
</html>