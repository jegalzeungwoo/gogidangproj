<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="com.spring.gogidang.store.*"%>
 
 
 <% ArrayList<StoreVO> storelist=(ArrayList<StoreVO>)request.getAttribute("storeList");
 %>

<!-- dohyeong start-->
<!-- dohyeong start-->
<!-- dohyeong start-->
<!-- dohyeong start-->
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>���� ��ü����</title>

 
   
</head>

<!-- <link rel="stylesheet" href="resources/css/storelist.css"> -->

<body>

<div id="card_row">

	<div class="card_store_box">
		<div class="card_store_addr" >
			<div class="text_left">
				<h4>���� ��ġ(��������)</h4>
			 <%=storelist.get(0).getS_addr()%> 
			</div>
		</div>
		<div class="card_store_img" >
			<div><img src="best-re-img5.jpg"></div>
		</div>
		<div class="card_store_name" >
			<div class="text_right">
			<a href="#">���� �̸�(������)</a>
			<%= storelist.get(0).getS_name() %>
			</div>
		</div>
		<div class="card_store_name" >
			<div class="text_right">
			���� ����(������)
			<!--storelist.get(0).getS_phone()  -->
			</div>
		</div>
		<div class="card_store_tag" >
			<div class="text_right">
			���� ����(������)
			<%= storelist.get(0).getConfirm()%>
			</div>
		</div>	
	</div>	
	
	
	
</div>
</card>
</body>
</html>