<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>starbucks</title>
    <!-- 부트스트랩 -->
    <link href="/star/resources/css/bootstrap.min.css" rel="stylesheet">
	<link href="/star/resources/css/star.css" rel="stylesheet">
</head>
<body>
<!-- header link -->
    <%@ include file="/resources/templates/header.jsp" %>
   
   <!-- 여기부터 본문 -->
    <div class="container content">

		<div class="row">
		<!-- 여기부터 입력합니다 -->
			<h1>입력페이지</h1>
			<form action="/star/menu/insert" method="post" enctype="multipart/form-data">
				<p>
					<label for="title">title</label>
					<input type="text" name="title" id="title">
				</p>
				<p>
					<label for="kcal">kcal</label>
					<input type="text" name="kcal" id="kcal">
				</p>
				<p>
					<label for="sodium">sodium</label>
					<input type="text" name="sodium" id="sodium">
				</p>
				<p>
					<label for="fat">fat</label>
					<input type="text" name="fat" id="fat">
				</p>
				<p>
					<label for="saccharide">saccharide</label>
					<input type="text" name="saccharide" id="saccharide">
				</p>
				<p>
					<label for="protein">protein</label>
					<input type="text" name="protein" id="protein">
				</p>
				<p>
					<label for="caffeine">caffeine</label>
					<input type="text" name="caffeine" id="caffeine">
				</p>
				<p>
					<label for="content">content</label>
					<textarea rows="20" cols="80" name="content" id="content"></textarea>
				</p>
				<select name="category">
					<option value="">제품분류</option>
					<option value="커피">커피</option>
					<option value="음료">음료</option>
					<option value="음식">음식</option>
				</select>
				<p>
					<label for="파일첨부">파일첨부</label>
					<input type="file" name="file" id="file" />
				</p>
				<p>
					<button type="submit" >입력</button>
				</p>
			</form>
		<!-- 여기까지 입력합니다. -->
		</div><!-- /.row -->      
    </div><!-- /.container -->
    <!-- 여기까지 본문 -->


    
   
   <!-- footer link -->
   <jsp:include page="/resources/templates/footer.jsp"></jsp:include>
   
    <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
    <script src="/star/resources/js/bootstrap.min.js"></script>
    <script src="/star/resources/js/star.js"></script>
    <script></script>
</body>
</html>