<%@ page language="java" contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>회원가입 페이지</title>
</head>
<body>
<form name="joinform" action="./joinprocess.me" method="post">
<center>
<table border=1>
	<tr>
		<td colspan="2" align=center>
			<b><font size=5>회원가입 페이지</font></b>
		</td>
	</tr>
	<tr>
		<td>회원 구분 : </td>
		<td>
			<input type="radio" name="seller_key" value="0" checked/>소비자
			<input type="radio" name="seller_key" value="1"/>판매자
		</td>
	</tr>
	<tr><td>아이디 : </td><td><input type="text" name="u_id"/></td></tr>
	<tr><td>비밀번호 : </td><td><input type="password" name="u_pw"/></td></tr>
	<tr><td>닉네임 : </td><td><input type="text" name="u_nick"/></td></tr>
	<tr><td>이름 : </td><td><input type="text" name="u_name"/></td></tr>
	<tr><td>생년월일 : </td><td><input type="text" name="u_birth"/></td></tr>
	<tr><td>주소 : </td><td><input type="text" name="u_addr"/></td></tr>
	<tr><td>이메일 주소 : </td><td><input type="text" name="u_email" size=30/></td></tr>
	<tr><td>핸드폰 번호 : </td><td><input type="text" name="u_phone"/></td></tr>
	<tr>
		<td colspan="2">
		롸롸롸롸롸약관동의롸롸롸롸롸약관동의<br>롸롸롸롸롸약관동의롸롸롸롸롸약관동의<br>롸롸롸롸롸약관동의
		롸롸롸롸롸약관동의<br>롸롸롸롸롸약관동의롸롸롸롸롸약관동의<br>롸롸롸롸롸약관동의롸롸롸롸롸약관동의
		<br><br>동의 하시겠습니까?
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="radio" name="classification" checked/>동의
			<input type="radio" name="classification"/>미동의
		</td>
	</tr>
	<tr>
		<td colspan="2" align=center>
			<a href="javascript:joinform.submit()">회원가입</a>&nbsp;&nbsp;
			<a href="javascript:joinform.reset()">다시작성</a>
		</td>
	</tr>
</table>
</center>
</form>
</body>
</html>