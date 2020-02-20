<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
</head>
<body>
	<div align="center">
		<table border=1 style="width:100% height:750px bordercolor:black">
			<tr> 
				<td colspan=2 style="width:100%; height:10px;">
					<div style="float:right;"><a href="login">로그인</a><a href="#">회원가입</a> </div>
				</td> 
			</tr> 
			<tr> 
				<td colspan=2 style="width:100% height:150px"> <img src="resources/img/cityphoto.jpg" width="100%" height="150px"> 
				</td> 
			</tr> 
			<tr> 
				<td width=200 height=600 align=center valign=top> 
					
					<p><br></p>
				</td> 
				<td width=800 height=600 align=center valign=top> 
				</td> 
			</tr>
		</table>
	</div>
</body>
</html>