<%@ page language="java" contentType="text/html; charset=EUC-KR"pageEncoding="EUC-KR"%>
<%@ page import="com.spring.gogidang.member.*" %>
<%@ page import="com.spring.gogidang.booking.*" %>
<% 
	String id = (String)session.getAttribute("id");
	BookingVO bookingVO=(BookingVO)request.getAttribute("bookingVO");
 %>
<html>
<head>
<title>����������</title>
</head>
<body>
	<div>
	<form name="bookingform" action="./booking.bo" method="post">
	<center>
	<table border=1>
	<tr>
	<td colspan="2" align="center">
	<b><font size=7>���� ����</font></b>
	</td>
	</tr>
	<tr><td>���̵� : </td>
	<td><input type="hidden" name="u_id" value="<%=id%>"><%=id%>
	</td></tr>
	<tr>
	<td>����ð� : </td>
	<td><input type="text" name="time">
	</td>
	</tr>
	<tr>
	<td>�ο��� : </td>
	<td>
	<select id="head_count" name="head_count">
	<option value="1">1</option>
	<option value="2">2</option>
	<option value="3">3</option>
	<option value="4">4</option>
	<option value="5">5</option>
	<option value="6">6</option>
	<option value="7">7</option>
	<option value="8">8</option>
	</select>
	</td></tr>
	<tr>
	<td>�������� : </td>
	<td><input type="text" name="table_charge"></td>
	</tr>
	<tr>
	<td>�Ѿ� : </td>
	<td><input type="text" name="pay_price" value="<%=bookingVO.getPay_price()%>"></td>
	</tr>
	<tr>
	<td colspan="2" align="center">
	<a href="javascript:bookingform.submit()">����</a>
	<a href="jabascript:bookingform.reset()">�ٽÿ����ϱ�</a>
	</td>
	</tr>
	</table>
	</center>
	</form>
	</div>
</body>
</html>