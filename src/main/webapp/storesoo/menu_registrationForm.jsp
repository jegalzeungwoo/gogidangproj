<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="javax.naming.*"%>
<%@ page import="java.util.*"%>
<%@ page import="com.spring.gogidang.store.StoreVO"%>
<%@ page import="com.spring.gogidang.member.MemberVO"%>
<%
	StoreVO vo = (StoreVO)session.getAttribute("StoreVO");
	MemberVO memberVO = (MemberVO)session.getAttribute("MemberVO");	
	
%>
<html>
<head>
<title>판매자 마이페이지</title>
<script>

</script>
</head>
<body>
<header><%=memberVO.getU_id() %>님 </header>
<form name="menuform" action="./menuprocess.me" method="post">
<center>
<table border=1>
	<tr>
		<td colspan="2" align=center>
			<b><font size=5>상품등록</font></b>
		</td>
	</tr>
	<tr>
		<td>상품이름 : </td> 
		<td><input name="menu_name" type="text" /></td>
	</tr>
	<tr>
		<td>상품 사진 : </td> 
		<td><input name="img" type="file" /></td>
	</tr>
	<tr>
		<td>상품 금액 : </td> 
		<td><input name="price" type="text" /></td>
	</tr>
	<tr>
		<td>상품 그램 : </td> 
		<td><input name="gram" type="text" /></td>
	</tr>
	<tr>
		<td>상품 등급 : </td> 
		<td><input name="grade" type="text" /></td>
	</tr>
	<tr>
		<td><span><button type="button" name="menuInsertBtn">등록</button></span></td>
	</tr>
</table>
</center>
</form>
<!-- for 문으로 저장된 리스트 출력해주기 -->
<table border=1>
	<tr>
		<td colspan="2" align=center>
			<b><font size=5>등록 내역</font></b>
		</td>
	</tr>
	<tr>
		<td>상품이름 : </td> 
		<td><span name="menu_name" type="text" ></span></td>
	</tr>
	<tr>
		<td>상품 사진 : </td> 
		<td><span name="img" type="file" ></span></td>
	</tr>
	<tr>
		<td>상품 금액 : </td> 
		<td><span name="price" type="text" ></span></td>
	</tr>
	<tr>
		<td>상품 그램 : </td> 
		<td><input name="gram" type="text" ></span></td>
	</tr>
	<tr>
		<td>상품 등급 : </td> 
		<td><span name="grade" type="text" ></span></td>
	</tr>
</table>

</body>
</html>