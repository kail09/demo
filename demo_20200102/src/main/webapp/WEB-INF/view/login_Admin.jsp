<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쇼핑</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="/ui/js/admin/common.js"></script>
<script>
	$(document).ready(function() {
		$("#btn_login").click(function(){
			var link = window.location.protocol + "//" + window.location.host;
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
			//formSubmit();
			
			$.ajax({
				url : link+"/api/member/login",
				type : "POST",
				data : {userId : "hong99i", userPw : "frhu78"}
				dataType: "json"
			})
			// HTTP 요청이 성공하면 요청한 데이터가 done() 메소드로 전달됨.
			.done(function(json) {
				alert("chk run : "+ JSON.stringify(json));
				
				//location.href="/ui/index_Admin?userId="+json.userId+"&userName="+encodeURI(encodeURIComponent(json.userName));
			});
			
			// 폼 내부의 데이터를 전송할 주소
//			document.form1.action = "${apiGw}/member/login"
 /*			var frm = document.form1;
			
			frm.action=link+"/api/member/login";
			frm.method="POST";
			frm.commandName="memberModel";
			frm.submit();  */
		});
		
	});
	
	function keyevent() {
		var keyCode = event.keyCode;
		console.log('event.keyCode : ' + event.keyCode);
		
		if (keyCode == 13) {
			
		}
		
	}
	
	function formSubmit() {

	}
	
	
</script>
</head>
<body>
<form name="form1">
	<div align="center">
		<input type="hidden" id="" name="userName" value="${userName}">
		<div style="border: 1px solid gray; padding:20px; border-radius:0.5em; align:center; margin-top: 8%; width:400px;">
			<img src="/ui/img/admin/loginLogo.jpg" height="200px" >
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
						<input type="image" value="로그인" id="btn_login" src="/ui/img/admin/btn_login.png" style="width:190px; height:30px; margin-top:5px;"> 
					</td>
				</tr>
			</table> 
		</div> 
	</div>
</form>
</body>
</html>