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
							<%
								int checkIdFlag = Integer.parseInt(request.getAttribute("checkIdFlag").toString());
								int checkIdPwFlag = Integer.parseInt(request.getAttribute("checkIdPwFlag").toString());
								if(checkIdFlag  == 0) {
							%>
								<script type="text/javascript">
									alert("입력하신 아이디는 존재하지 않습니다. 다시 확인해 주세요.");
									history.go(-1);
								</script>						
								<%
									} else if(checkIdPwFlag == 0) {
								%>
								<script type="text/javascript">
									alert("입력하신 아이디의 비밀번호가 일치하지 않습니다. 다시 확인해 주세요.");
									history.go(-1);
								</script>
								<%
									}
								%>
							${mid }님 로그인 하셨습니다. 반갑습니다!<br>		
						    ${memberDto.mname }님의 가입일은 [${memberDto.mdate }]입니다.										
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