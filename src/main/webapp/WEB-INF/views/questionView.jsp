<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/title.css">	
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/content.css">	
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/board.css">	
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/board.js"></script>	

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
				<table width="80%" border="0" cellspacing="0" cellpadding="15" >
					<tr class="contentbox">
						<td class="content">
						<center>
							<table border="0" cellspacing="0" cellpadding="10">
								<form action="questionModify" method="post" name="board_frm">
									<tr>
										<td><span class="content_text01">아 이 디 &nbsp;: </span></td>
										<td><input class="input_type01" type="text" name="qid" value="${qdto.qid }" readonly="readonly"></td>
									<tr>
										<td><span class="content_text01">글 쓴 이 : </span></td>
										<td><input class="input_type01" type="text" name="qname" value="${qdto.qname }" readonly="readonly"></td>
									</tr>
									<tr>
										<td><span class="content_text01">질문내용 : </span></td>
										<td><textarea class="textarea_type01" rows="5" cols="30" name="qcontent" readonly="readonly">${qdto.qcontent}</textarea></td>
									</tr>								
									<tr>
										<td><span class="content_text01">이메일 &nbsp;&nbsp;: </span></td>
										<td><input class="input_type01" type="text" name="qemail" value="${qdto.qemail }" readonly="readonly"></td>
									</tr>
									<tr>
										<td><span class="content_text01">등록일 &nbsp;&nbsp;: </span></td>
										<td><input class="input_type01" type="text" name="qdate" value="${qdto.qdate }" readonly="readonly"></td>
									</tr>																	
									<tr>
										<td colspan="2">
										<%
											String boardId = (String) request.getAttribute("qid");
										
											if(boardId.equals("GUEST")) {
										%>
										<input class="button_type01" type="submit" value="수정">&nbsp;&nbsp;										
										<input class="button_type01" type="button" value="삭제" onclick="script:window.location='questionDelete?qnum=${qdto.qnum}'">
										<input class="button_type01" type="button" value="글목록" onclick="script:window.location='list'">
										<%
											} else if((sessionId != null ) && (sessionId.equals(boardId))) {
										%>
											<input class="button_type01" type="submit" value="수정">&nbsp;&nbsp;
											<input class="button_type01" type="button" value="삭제" onclick="script:window.location='questionDelete?qnum=${qdto.qnum}'">
											<input class="button_type01" type="button" value="글목록" onclick="script:window.location='list'">
										<%
											} else {
										%>
											<input class="button_type01" type="button" value="글목록" onclick="script:window.location='list'">
										<%
											}
										%>

										</td>
									</tr>
								</form>
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