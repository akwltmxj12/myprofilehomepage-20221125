<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/title.css">	
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/hyperlink.css">


<title>메인 화면</title>
</head>
<body>
	<%@ include file="include/header.jsp" %>
	<center>	<!-- center태그는 쓰면안되지만 디자인할건아니라서 쓴다. -->
	<table width="75%" border="0" cellspacing="0" cellpadding="20">	<!-- width빼고 나머지 3개가 0이면 투명표가 생성된다. -->
		<tr>
			<td class="titlebox">
				<span class="title01">DEVELLOPER TEST PEND PROFILE</span>	<!-- 나중에 css로 디자인하기쉽게 span태그를쓰고 클래스로 이름을 부여한다. -->
			</td>
		</tr>
		<tr>
			<td class="titlebox">
				<span class="title02">I'm pend, This homepage was created for personal use by me. Viewing is free. For inquiries, please contact us by email.</span>
			</td>
		</tr>	
		<tr>
			<td>
			<center>
				<table width="80%" border="0" cellspacing="0" cellpadding="15">
					<tr>
						<td class="skillbox"><span class="title03">W</span><span class="title04">ELL COME TEST</span></td>
						<td rowspan="6" class="picbox"><img src=${pageContext.request.contextPath}/resources/img/tests.jpg></td>		<!-- rowspan 6로 6줄을 병합한다면 그밑에 줄을 생성하는 구문들은 삭제해야한다. -->				
					</tr>
					<tr>
						<td class="skillbox"><span class="title03">J</span><span class="title04">AVA</span></td>		<!-- 레이아웃만 잡고 title03,title04 는 css에서 작업하게 여기서의 일은 끝난다. -->								
					</tr>
					<tr>
						<td class="skillbox"><span class="title03">S</span><span class="title04">PRING BOOT</span></td>									
					</tr>
					<tr>
						<td class="skillbox"><span class="title03">J</span><span class="title04">AVASCRIPT</span></td>										
					</tr>
					<tr>
						<td class="skillbox"><span class="title03">H</span><span class="title04">TML5</span></td>									
					</tr>
					<tr>
						<td class="skillbox"><span class="title03">D</span><span class="title04">ATABASE</span></td>											
					</tr>
				</table>
				</center>
			</td>
		</tr>		
	</table>
	</center>
	<%@ include file="include/footer.jsp" %>
</body>
</html>