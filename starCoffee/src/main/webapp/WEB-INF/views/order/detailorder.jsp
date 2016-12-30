<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>로그인</title>
<!-- 부트스트랩 -->
    <link href="/star/resources/css/bootstrap.min.css" rel="stylesheet">
	<link href="/star/resources/css/star.css" rel="stylesheet">

<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script type="text/javascript">
</script>
</head>
<body>

    <!-- header link -->
    <%@ include file="/resources/templates/header.jsp" %>

    <!-- 여기부터 본문 -->
    
	<div class="container content">
		<ul class="nav nav-tabs">
		  <li role="presentation" class="active"><a href="/star/order/orderpage">주문하기</a></li>
		  <li role="presentation"><a href="#">나만의 메뉴</a></li>
		  <li role="presentation"><a href="#">히스토리</a></li>
		</ul>
		<hr/>
		<div class="row">
		  <div class="col-md-4">
		      <img src="/star/resources/imgs/coffee/${bean.newfilename }">
		  </div>
		  <div class="col-md-8">
		      <h3>${bean.title }</h3>
		      <h3>${bean.price }</h3>
		  </div>
		</div>
		
	<!-- /.container -->
	<!-- 여기까지 본문 -->
     
	<ul class="pager">
	    <li><a href="#">Previous</a></li>
	    <li><a href="#">Next</a></li>
	</ul>
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