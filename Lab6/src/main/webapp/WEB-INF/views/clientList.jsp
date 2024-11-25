<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Client List</title>
</head>
<body>
	<table>
    <tr>
        <th>Name</th>
        <th>Email</th>
    </tr>
    <c:forEach var="client" items="${clients}">
        <tr>
            <td>${client.name}</td>
            <td>${client.email}</td>
        </tr>
    </c:forEach>
</table>
	
</body>
</html>