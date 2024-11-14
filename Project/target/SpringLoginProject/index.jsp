<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome Page</title>
    <style>
    /* style.css */
body {
    background: linear-gradient(135deg, #00b4db, #0083b0);
    font-family: 'Arial', sans-serif;
    height: 100vh;
}

.login-container {
    max-width: 400px;
    background-color: #ffffff;
    border-radius: 8px;
}

.login-container h2 {
    color: #333;
}

.alert {
    margin-bottom: 20px;
}

.form-control:focus {
    border-color: #0083b0;
    box-shadow: none;
}

.btn-primary {
    background-color: #0083b0;
    border-color: #0083b0;
    transition: background-color 0.3s;
}

.btn-primary:hover {
    background-color: #00b4db;
}

a {
    color: #0083b0;
    text-decoration: none;
    transition: color 0.3s;
}

a:hover {
    color: #00b4db;
}
    
    </style>
    
</head>
<body>
    <h1>${message}</h1>
    <a href="login.jsp">Logout</a>
</body>
</html>