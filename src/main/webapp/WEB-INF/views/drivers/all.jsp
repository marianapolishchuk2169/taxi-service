<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>All drivers</title>
</head>
<body>
<%@include file="/WEB-INF/views/header.jsp"%>
<a href="${pageContext.request.contextPath}/index">
    <input class="table_dark" type="button" value="Homepage" style="font-size: 16px; width: 120px;" />
    <br><br>
</a>
<h1 class="table_dark">All drivers:</h1>
<table border="1" class="table_dark">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Username</th>
        <th>License number</th>
        <th>Delete</th>
    </tr>
    <c:forEach var="driver" items="${drivers}">
        <tr>
            <td>
                <c:out value="${driver.id}"/>
            </td>
            <td>
                <c:out value="${driver.name}"/>
            </td>
            <td>
                <c:out value="${driver.username}"/>
            </td>
            <td>
                <c:out value="${driver.licenseNumber}"/>
            </td>
            <td>
                <a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">DELETE</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
