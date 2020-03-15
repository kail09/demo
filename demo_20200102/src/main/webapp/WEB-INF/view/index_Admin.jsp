<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>쇼핑</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="/resources/js/admin/common.js"></script>
<script>
	$(document).ready(function() {
		$("#logoutBtn").on("click", function(e) {
			// 로그아웃 기능 실행
			fn_logout();
		});
	});
	
	function fn_logout() {
		if (window.confirm("로그아웃 하시겠습니까?")) {
			window.location.href="/login_Admin/logout";
		}
	};
	
</script>
</head>

<body>
	<div align="center">
		<table border=1 style="width:100%; height:750px; border: 1px solid white; ">
			<tr> 
				<td colspan=3 style="width:100%; height:20px; background-color: #000;">
					<div style="float:left; margin-top:5px; margin-left:10px;">
						<img src="/resources/img/admin/logo.png" height="40px">
					</div>
					<div style="float:right;">
						<c:catch>
							<c:choose>
								<c:when test="${member.userName == null }">
									<p>
										<a href="login">로그인</a>
									</p>
								</c:when>
								<c:otherwise>
									<p style="">
										<div style="margin-right:10px; margin-top:-7px; color:white; border: 1px solid white; padding:5px; border-radius:0.5em; margin-right:5px; text-align:center; float:right; width:80px; cursor:pointer; "><span id="myInfoBtn" style="">내정보</span></div>
										<div style="margin-right:10px; margin-top:-7px; color:white; border: 1px solid white; padding:5px; border-radius:0.5em; margin-right:5px; text-align:center; float:right; width:80px; cursor:pointer; "><span id="logoutBtn" style="">로그아웃</span></div>
										<div style="color:white; float:right; margin-right:10px;"><span id="myInfoBtn" style="cursor:pointer; margin-right:5px;">${member.userName}</span><span style="margin-right:5px;">님</span></div>
									</p>
								</c:otherwise>
							</c:choose>
						</c:catch>
					</div>
				</td>
			</tr> 
			<tr>
				<td rowspan=2 width=200 height=600 align=center> 
					left menu
				</td>
				<td align=center>
					tab menu
				</td>
				<td rowspan="2" style="width:25px; ">
					알림창 
				</td>
			</tr>
			<tr> 
				<td colspan="1" width=800 height=600 align=center> 
					메뉴별 화면 노출
				</td> 
			</tr>
		</table>
		<iframe src="/resources/ui/index_one.jsp" name="CommonView" width="100%" height="300" srcdoc="<p>iframe 에 의해 만들어진 창입니다.</p>">
			이 브라우저는 iframe 요소를 지원하지 않습니다.
		</iframe>
	</div>
</body>
</html>