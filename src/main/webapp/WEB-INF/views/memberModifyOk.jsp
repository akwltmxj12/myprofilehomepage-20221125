<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/title.css">	
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/content.css">	
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/join.js"></script>
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
				<table width="80%" border="0" cellspacing="0" cellpadding="15" >
					<tr class="contentbox">
						<td class="memberModifyOk">
						<center>
							<table border="0" cellspacing="0" cellpadding="15">
								<tr>
									<td colspan="2">회원 정보 수정 완료</td>
								</tr>
									<tr>
										<td><span class="content_text01">아 이 디 &nbsp;: </span></td>
										<td>${memberDto.mid  }</td>
									<tr>
										<td><span class="content_text01">비밀번호 : </span></td>
										<td>${memberDto.mpw }</td>
									</tr>								
									<tr>
										<td><span class="content_text01">이&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;름 : </span></td>
										<td>${memberDto.mname  }</td>
									</tr>
									<tr>
										<td><span class="content_text01">이메일 &nbsp;&nbsp;: </span></td>
										<td>${memberDto.memail  }</td>
									</tr>																	
									<tr>
										<td colspan="2">
											<input class="button_type01" type="button" value="정보수정" onclick="script:window.location='memberModify'">&nbsp;&nbsp;
											<input class="button_type01" type="button" value="수정취소" onclick="script:window.location='index'">
										</td>
									</tr>
							</table>
							<center>
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