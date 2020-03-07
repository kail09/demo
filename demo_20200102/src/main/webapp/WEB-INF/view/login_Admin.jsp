<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쇼핑</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
	$(document).ready(function() {
		$("#btn_login").click(function(){
			var userId = $("#userId").val();
			var userPw = $("#userPw").val();
			
			if ( userId == "" ) {
				alert("아이디를 입력하세요.");
				$("#userId").focus();
				return;
			}
			
			if ( userPw == "" ) {
				alert("비밀번호를 입력하세요.");
				$("#userPw").focus();
				return;
			}
			
			/*
			$.ajax({
				url : "test.jsp",
				type : "get",
				data : {t1 : "Hello", t2 : "World"},
				success : function (data) {
					alert(data);
				},
				error : function (data) {
					alert(data);
				}
			});
			*/
			
			// 폼 내부의 데이터를 전송할 주소
			document.form1.action = "${path}/login_Admin/login"
			// 제출
			document.form1.submit();
		});
		
	});
	
	function keyevent() {
		var keyCode = event.keyCode;
		console.log('event.keyCode : ' + event.keyCode);
		
		if (keyCode == 13) {
			
		}
		
	};
	
	
</script>
</head>
<body>
<form name="form1" method="post" >
	<div align="center">
		<div style="border: 1px solid gray; padding:20px; border-radius:0.5em; align:center; margin-top: 8%; width:400px;">
			<img src="/resources/img/admin/loginLogo.jpg" height="200px" >
			<h1>ADMIN LOGIN</h1>
			<table style="width:200px; margin-top:15px;"> 
				<tr> 
					<td width="170px" align=left>
						아이디
					</td> 
					<td width="200px" align=left> 
						<input type="text" name="userId" id="userId" size="15"> 
					</td>
				</tr> 
				<tr> 
					<td width="170px" align=left>
						비밀번호
					</td> 
					<td width="200px" align=left> 
						<input type=password name=userPw id="userPw" size=15 onkeydown="javascript:keyevent(this);"> 
					</td>
	
	
				</tr> 
				<tr>
					<td width="" colspan="2" >
						<input type="image" value="로그인" id="btn_login" src="/resources/img/admin/btn_login.png" style="width:190px; height:30px; margin-top:5px;"> 
					</td>
				</tr>
			</table> 
		</div> 
	</div>
</form>
</body>
</html>