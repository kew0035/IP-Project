<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Program</title>
</head>
<body>
	<form action="/admin/program/add" method="post">
    <input type="text" name="name" placeholder="Program Name" />
    <textarea name="description" placeholder="Description"></textarea>
    <button type="submit">Add Program</button>
    <c:if test="${not empty error}">
        <p>${error}</p>
    </c:if>
</form>
	
</body>
</html>