<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1" align=center>
	<tr>
		<td rowspan=5>${store.getThumbnail()}</td>
		<td>${store.getS_addr()}</td>
	</tr>
	<tr>
		<td>${store.getS_phone()}</td>
	</tr>
	<tr>
		<td>${store.getS_hour()}</td>
	</tr>
	<tr>
		<td>${store.getDelibery()}</td>
	</tr>
	</table>
</body>
</html>