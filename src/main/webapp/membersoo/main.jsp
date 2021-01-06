<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="com.spring.gogidang.member.MemberVO"%>
<html>
<head>
<title></title>
<% 

	MemberVO vo = (MemberVO)session.getAttribute("MemberVO"); 

%>
</head>
<body>
<h2>로그인 닉네임 : <%=vo.getU_nick() %></h2><!-- 로그인 완료 했을때 session에 들어있는 아이디 가지고옴 페이지마다 적용시키자 -->
<%
if(vo.getSeller_key() == 1){
%>
<center>
<table border=1>
	<tr><td><a href="./sellerupdateform.me">판매자 회원정보 수정</a></td></tr>
	<tr><td><a href="./storeregistrationform.me">판매자 가게정보 등록</a></td></tr>
	<tr><td><a href="./menugistrationform.me">판매자 상품정보 등록</a></td></tr>
</table>
</center>
<%
}else if(vo.getSeller_key() == 0){
%>
<center>
<table border=1>
	<tr><td><a href="./main.me">소비자 회원정보 수정</a></td></tr>
	<tr><td><a href="./main.me">소비자 예약현황 조회</a></td></tr>
</table>
</center>
<%
}else{
%>
<center>
<table border=1>
	<tr><td><a href="./login.me">로그인을 하시겠습니까?</a></td></tr>
</table>
</center>
<%
}
%>
</body>
</html>