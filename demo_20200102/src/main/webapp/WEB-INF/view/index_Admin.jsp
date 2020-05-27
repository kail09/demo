<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="io.micrometer.core.instrument.util.IOUtils, java.net.URLDecoder" %>  
<%
    String userId = request.getParameter("userId");
    String userName = request.getParameter("userName");
    pageContext.setAttribute("userId", userId);
    pageContext.setAttribute("userName", URLDecoder.decode(userName, "UTF-8"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쇼핑</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="/ui/js/admin/common.js"></script>
<script>

	$(document).ready(function() {

		$("#logoutBtn").on("click", function(e) {
			// 로그아웃 기능 실행
			fn_logout();
		});
	});

	function fn_logout() {

		if (window.confirm("로그아웃 하시겠습니까?"+url)) {
			window.location.href="/login_Admin/logout";
		}
	};

	function loadPage(){

		let chk = 'asd';
		alert("chk ${userId}");
		//window.frames["#fra"].location="/ui/contract/entrySeller.jsp";
		
	}
	
	
	
	/*
	test = function(e) {

	    // Create sidebar from category
	    $.ajax({
	        method : 'GET',
	        url: apiGw + '/member/test',
	        type: 'jsonp'
	    }).done(function(result){
	        // Append tag
	        var list = '';
	        var class_name = 'nav-link';
	        console.log('chk : '+JSON.stringify(result));
/*	        $.each(result, function(i, category){
	            list += '<li><a href="'+BASE_CONTEXT_PATH+'main?categoryNm='+category.nm+'&categoryLabelNm='+category.labelNm+'">'+category.labelNm+'</a></li>';
	        });
	        $('#category').html(list);
	    }).fail(function(xhr, ajaxOptions, thrownError){
	        alert(xhr);
	    });
	};*/

	

</script>
</head>

<body onload="loadPage()" >
	<div align="center">
		<table border=1 style="width:100%; height:750px; border: 1px solid white; ">
			<tr> 
				<td colspan=3 style="width:100%; height:20px; background-color: #000;">
					<%@include file="../ui/common/header.jsp"%>
					
				</td>
			</tr> 
			<tr>
				<td rowspan=2 width=200 height=600 align=center> 
					left menu
					<button value=“button” onClick="test()">클릭</button>
				</td>
				<td align=center>
					tab menu
				</td>
				<td rowspan="2" style="width:25px;">
					알림창 
				</td>
			</tr>
			<tr> 
				<td colspan="1" width=800 height=600 align=center> 
					메뉴별 화면 노출
				</td> 
			</tr>
		</table>
	</div>
</body>
</html>