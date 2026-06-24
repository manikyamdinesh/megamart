<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Login Page</title>

<style>

*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: Arial, Helvetica, sans-serif;
}

body{
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    background: linear-gradient(135deg, #4facfe, #6a11cb);
}

.container{
    width: 350px;
}

.login-form{
    background: white;
    padding: 35px;
    border-radius: 12px;
    box-shadow: 0px 5px 20px rgba(0,0,0,0.2);
}

.login-form h2{
    text-align: center;
    margin-bottom: 25px;
    color: #333;
}

.login-form input{
    width: 100%;
    padding: 12px;
    margin-bottom: 18px;
    border: 1px solid #ccc;
    border-radius: 6px;
    font-size: 14px;
}

.login-form button{
    width: 100%;
    padding: 12px;
    border: none;
    border-radius: 6px;
    background: linear-gradient(to right, #4facfe, #6a11cb);
    color: white;
    font-size: 16px;
    cursor: pointer;
}

.register-link{
    text-align: center;
    margin-top: 15px;
    font-size: 14px;
}

.register-link a{
    text-decoration: none;
    color: #6a11cb;
    font-weight: bold;
}

.error{
    text-align:center;
    color:red;
    margin-top:10px;
}

</style>

</head>

<body>

<div class="container">

    <!-- ONLY ONE FORM -->
    <form class="login-form" action="login" method="post">

        <h2>Login</h2>

        <!-- name attribute required -->
        <input type="email"name="email"placeholder="Enter Email"required>

        <input type="password"name="password"placeholder="Enter Password"required>

        <button type="submit">Login</button>

        <h3 class="error">

            <%= request.getAttribute("msg") != null
            ? request.getAttribute("msg") : "" %>

        </h3>

        <p class="register-link">

            Don't have an account?

            <a href="register.jsp">Register</a>

        </p>

    </form>

</div>

</body>
</html>
</html>