<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/header.css">	
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/hyperlink.css">
<title>header</title>
</head>
<body>
	<%
		String sessionId = (String)session.getAttribute("memberId");
	
	%>
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr class="headline01">
			<td width="65%" class="menu01">&nbsp;</td>	<!-- 공백이라도 넣지않으면 width가 안먹는다. -->
			<td width="5%" class="menu01"><a href="index">Home</a></td>									
			<td width="5%" class="menu01">
			<%
				if(sessionId == null) {
			%>
			<a href="login">Login</a>
			<%
				} else{
			%>
				<a href="logout">Logout</a>
			<%
				}
			%>
			</td>
			<td width="5%" class="menu01">
			<%
				if(sessionId == null) {
			%>
				<a href="join">Join</a>
			<%
				} else {
			%>
				<a href="memberModify">Modify</a>
			<%
				}
			%>
			</td>			
			<td width="5%" class="menu01"><a href="profile">Profile</a></td>			
			<td width="6%" class="menu01"><a href="question">Question</a></td>	
			<td width="5%" class="menu01"><a href="contact">Contact</a></td>	
			<td width="1%">&nbsp;</td>		
		</tr>
		<tr class="headline02">
		<td>&nbsp;</td>	<!-- td를 넣지않고 공백만 넣어버리면 위로올라가버린다. -->
		</tr>
	</table>
</body>
</html>