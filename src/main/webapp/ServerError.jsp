<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
*{
    margin: 0;
    padding: 0;
    scroll-behavior: smooth;
    background-color:#DBD8E3; 
}
</style>
<meta charset="ISO-8859-1">
<title>Error</title>
</head>
<body>
<%=exception.getMessage() %>
<br>
<br>
<h1>Please try again later</h1>
<h2>Click the buttton below to go back</h2>
<form action="index1.jsp">
<input type="submit" value="Back">
</form>
</body>
</html>