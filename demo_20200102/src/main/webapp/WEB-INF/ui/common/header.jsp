<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div style="width:100%; height:50px; background-color: #000;">
	<div style="float:left; margin-top:5px; margin-left:10px;">
		<img src="/ui/img/admin/logo.png" height="40px">
	</div>
	<div style="float:right;">
		<c:catch>
			<c:choose>
				<c:when test="${userName == null }">
					<p>
						<a href="login">로그인</a>
					</p>
				</c:when>
				<c:otherwise>
					<p style="">
						<div style="margin-right:10px; margin-top:-7px; color:white; border: 1px solid white; padding:5px; border-radius:0.5em; margin-right:5px; text-align:center; float:right; width:80px; cursor:pointer; "><span id="myInfoBtn" style="">내정보</span></div>
						<div style="margin-right:10px; margin-top:-7px; color:white; border: 1px solid white; padding:5px; border-radius:0.5em; margin-right:5px; text-align:center; float:right; width:80px; cursor:pointer; "><span id="logoutBtn" style="">로그아웃</span></div>
						<div style="color:white; float:right; margin-right:10px;"><span id="myInfoBtn" style="cursor:pointer; margin-right:5px;">${member.userName}</span><span style="margin-right:5px;">${userName}님</span></div>
					</p>
				</c:otherwise>
			</c:choose>
		</c:catch>
	</div>
</div>
