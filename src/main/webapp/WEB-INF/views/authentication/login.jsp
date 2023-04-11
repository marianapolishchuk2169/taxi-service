<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h1 class="table_dark" style="width:500px">Login Page</h1>
    <h1 class="table_dark" style="color:red">${errorMsg}</h1>
    <form class="table_dark" style="height:600px; width:500px; margin: 0 auto; display: table;" method="post" action="${pageContext.request.contextPath}/login">
        <div style="display: table-cell; vertical-align: middle;">
            <label style="font-size: 20px;">Please enter your login:</label><br>
            <input class="table_dark" type="text" name="username" required style="font-size: 20px; width: 200px; margin-bottom: 20px;"><br>
            <label style="font-size: 20px;">Please enter your password:</label><br>
            <input class="table_dark" type="password" name="password" required style="font-size: 20px; width: 200px; margin-bottom: 20px;"><br>
            <button class="table_dark" type="submit" style="font-size: 20px; width: 150px; margin: 0 auto; display: block;">Login</button>
        </div>
    </form>
    <br><br><br>
    <h1><a href="${pageContext.request.contextPath}/drivers/add">Register</a></h1>
</body>
</html>