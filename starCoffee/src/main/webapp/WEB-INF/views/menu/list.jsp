<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<!-- 부트스트랩 -->
<link href="/star/resources/css/bootstrap.min.css" rel="stylesheet">
<link href="/star/resources/css/star.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
</head>
<body>
	<div class="s_title"><h4><strong>${title }</strong></h4></div>
	<c:forEach items="${alist}" var="bean">
		<div class="col-sm-12 col-xs-12 s_menu con">
			<div>
				<input type="checkbox" name="delchk" value="${bean.no }">
			</div>
			<div><a href="/star/menu/detail?no=${bean.no }">
				<img src="/star/resources/imgs/upload/${bean.newfilename }">
			</a></div>
				<div class="text-center">${bean.title }</div>
		</div>
	</c:forEach>
</body>
</html>