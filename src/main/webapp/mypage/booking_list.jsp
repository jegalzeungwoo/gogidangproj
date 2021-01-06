<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.spring.gogidang.booking.*" %>
<%@ page import="com.spring.gogidang.member.*" %>
<% 
	String u_id =(String)session.getAttribute("u_id");

	MemberVO memberVO = (MemberVO)request.getAttribute("memberVO");
	ArrayList<BookingVO> booking_list = (ArrayList<BookingVO>)request.getAttribute("booking_list");
%>
<html>
<head>
<title>내예약</title>
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
	</table>
	</div>
	<br><br>
	<div>
	<h1 align="left">예약현황</h1>
	<br>
	<table border="1">
	<tr align=center>
	<td>가게명</td>
	<td>예약일자</td>
	<td>예약시간</td>
	<td>인원수</td>
	<td colspan="2">예약승인상태</td>
	</tr>
	<%
	for(int i=0;i<booking_list.size();i++)
	{
		BookingVO booking=(BookingVO)booking_list.get(i);
	%>
	<tr>
	<td><%=booking.getS_name() %>df
	</td>
	<td>
	<%=booking.getB_date()%>
	<td>
	<%=booking.getTime()%>
	</td>
	<td>
	<%=booking.getHead_count()%>
	</td>t
	<%
	if(booking.getBooking_state()==0){
	%>
	<td><input type="hidden" name="booking_state" value="<%=booking.getBooking_state()%>">대기중</td>
	<td><a href="bookingCancelForm.bo?getBooking_num()=<%=booking.getBooking_num() %>">예약취소</a></td>
	<% } else {%>
	<td><input type="hidden" name="booking_state" value="<%=booking.getBooking_state()%>">예약완료</td>
	<%} %>
	</tr>
	<%}%>
	</table>
	</div>
	</center>
</body>
</html>