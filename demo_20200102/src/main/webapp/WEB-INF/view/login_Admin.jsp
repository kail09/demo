<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>쇼핑</title>
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
			
			// 폼 내부의 데이터를 전송할 주소
			document.form1.action = "${path}/member/login"
			// 제출
			document.form1.submit();
			
		});
	});
</script>
</head>
<body>
<form name="form1" method="post">
	<div align="center">
		<table style="width:200px"> 
			<tr> 
				<td width=30% align=right>
					ID
				</td> 
				<td width=70% align=left> 
					<input type=text name=id id="userId" size=15> 
				</td> 
			</tr> 
			<tr> 
				<td width=30% align=right>
					Password
				</td> 
				<td width=70% align=left> 
					<input type=password name=pwd id="userPw" size=15> 
				</td> 
			</tr> 
			<tr> 
				<td align=right colspan=2> 
					<button type=button id="btn_login">로그인</button>
				</td>
			</tr> 
		</table> 
	</div> 
</form>
</body>
</html>