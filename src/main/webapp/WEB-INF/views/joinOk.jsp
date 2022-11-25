<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/title.css">	
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/content.css">	
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/hyperlink.css">	

<title>메인 화면</title>
</head>
<body>
	<%@ include file="include/header.jsp" %>
	<center>	<!-- center태그는 쓰면안되지만 디자인할건아니라서 쓴다. -->
	<table width="75%" border="0" cellspacing="0" cellpadding="15">	<!-- width빼고 나머지 3개가 0이면 투명표가 생성된다. -->
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
					<tr class="contentbox">
						<td class="content">
							<u>${mname }</u>님 회원 가입을 축하드립니다!<br>
							가입하신 아이디는 <u>${mid }</u>입니다.						
						</td>				
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