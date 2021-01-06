<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.spring.gogidang.likestore.*" %>
<%@ page import="com.spring.gogidang.member.*" %>
<% 
	String u_id =(String)session.getAttribute("u_id");

	MemberVO memberVO = (MemberVO)request.getAttribute("memberVO");
	
	ArrayList<LikeStoreVO>likestore_list = (ArrayList<LikeStoreVO>)request.getAttribute("likestore_list");
	%>
<html>
<head>
<title>내 찜</title>
</head>
<body>
	<center>
	<div>
	<table border="1">
		<tr>
			<td><a href="./memberinfo.me?u_id=<%=memberVO.getU_id()%>">내정보</a></td>
			<td><a href="./bookinglist.bo?u_id=<%=memberVO.getU_id()%>">내예약확인</a></td>
			<td><a href="./likestorelist.li?u_id=<%=memberVO.getU_id()%>">찜목록</a></td>
			<td><a href="./myreviewlist.re?u_id=<%=memberVO.getU_id()%>">내가 작성한 후기</a></td>
		</tr>
		</tr>
	</table>
	</div>
	<br><br>
	<div>
	<h1 align="left">찜한가게</h1>
	<br>
	<table border="1">
	<%
	for(int i=0;i<likestore_list.size();i++)
	{
		LikeStoreVO likestore=(LikeStoreVO)likestore_list.get(i);
	%>
	<tr>
	<td><%=likestore.getThumbnail()%>
	</td>
	<td>
	가게명 : <%=likestore.getS_name()%>
	<br>
	주소 : <%=likestore.getS_addr()%>
	<br>
	영업시간 : <%=likestore.getS_hour()%>
	<br>
	전화번호 : <%=likestore.getS_phone()%>
	<br>
	</td>
	</tr>
	<%} %>
	</table>
	</div>
	</center>
</body>
</html>