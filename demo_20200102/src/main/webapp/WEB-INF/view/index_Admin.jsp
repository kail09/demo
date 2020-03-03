<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% 
	String mode=request.getParameter("mode"); 
	String jsp=""; 
	
	if(mode==null) { mode="0"; } 
	
	int no = Integer.parseInt(mode); 
	
	switch(no) { 
		case 0: 
			jsp="index.jsp"; 
			break; 
		case 1: 
			jsp="request.jsp"; 
			break; 
		case 2: 
			jsp="response.jsp"; 
			break; 
	} 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>쇼핑</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>
<body>
	<div align="center">
		<table border=1 style="width:100% height:750px bordercolor:black">
			<tr> 
				<td colspan=2 style="width:100%; height:10px;">
					<div style="float:right;">
						<c:catch>
							<c:choose>
								<c:when test="${member.userName == null }">
									<p>
										<a href="login">로그인</a>
									</p>
								</c:when>
								<c:otherwise>
									<p>
										<a href="logoutBtn">로그아웃</a>
									</p>
								</c:otherwise>
							</c:choose>
						</c:catch>
					</div>
				</td> 
			</tr> 
			<tr> 
				<td colspan=2 style="width:100% height:150px"> <img src="/resources/img/cityphoto.jpg" width="100%" height="150px"> 
				</td> 
			</tr> 
			<tr> 
				<td width=200 height=600 align=center valign=top> 
					
					<p><br>${member.userName} 입니다.</p>
				</td> 
				<td width=800 height=600 align=center valign=top> 
				</td> 
			</tr>
		</table>
		<iframe src="/resources/ui/index_one.jsp" name="CommonView" width="1200" height="300" srcdoc="<p>iframe 에 의해 만들어진 창입니다.</p>">
			이 브라우저는 iframe 요소를 지원하지 않습니다.
		</iframe>
	</div>
</body>
<script>
	$(document).ready(function() {
		$("#logoutBtn").unbind("click")click(function(e) {
			e.preventDefault();
			fn_logout();
		});
	});
	
	functino fn_logout() {
		if (window.confirm("로그아웃 하시겠습니까?")) {
			window.location.href="/login_Admin";
		}
	};


</script>
</html>