<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/title.css">	
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/content.css">	
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/board.css">	


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
				<table width="80%" border="0" cellspacing="0" cellpadding="10">
					<tr class="contentbox">
						<td class="content">
							<br><br>
							<center>
							<table width="80%" border="0" cellspacing="0" cellpadding="10">
								<tr>
									<th class="board_title">번호</th>
									<th class="board_title">아이디</th>
									<th class="board_title" width="50%">질문내용</th>
									<th class="board_title">글쓴이</th>
									<th class="board_title">등록일</th>
								</tr>
								<c:forEach items="${qdtos }" var="qdto">
								<tr>
									<td class="board_content01">${qdto.qnum }</td>
									<td class="board_content01">${qdto.qid }</td>
									<td class="board_content02">
									<a href="questionView?qnum=${qdto.qnum }">
									<c:choose>
										<c:when test="${fn:length(qdto.qcontent) > 23 }">
											<c:out value="${fn:substring(qdto.qcontent,0,22) }"></c:out>...
										</c:when>
										<c:otherwise>
											<c:out value="${qdto.qcontent }"></c:out>
										</c:otherwise>
									</c:choose>
									</a>
									</td>
									<td class="board_content01">${qdto.qname }</td>
									<td class="board_content01">
										<c:out value="${fn:substring(qdto.qdate,0,10) }"></c:out>										
									</td>
								</tr>						
								</c:forEach>	
								<tr>
									<td colspan="5" align="right">
										<input type="button" value="질문하기" class="button_type01" onclick="script:window.location='question'">
									</td>
								</tr>
								
							</table>
							</center>
							<br>						
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