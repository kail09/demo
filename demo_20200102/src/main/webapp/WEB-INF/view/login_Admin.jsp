<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>����</title>
<script>
	$(document).ready(function() {
		$("#btn_login").click(function(){
			var userId = $("#userId").val();
			var userPw = $("#userPw").val();
			
			if ( userId == "" ) {
				alert("���̵� �Է��ϼ���.");
				$("#userId").focus();
				return;
			}
			
			if ( userPw == "" ) {
				alert("��й�ȣ�� �Է��ϼ���.");
				$("#userPw").focus();
				return;
			}
			
			// �� ������ �����͸� ������ �ּ�
			document.form1.action = "${path}/member/login"
			// ����
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
					<button type=button id="btn_login">�α���</button>
				</td>
			</tr> 
		</table> 
	</div> 
</form>
</body>
</html>