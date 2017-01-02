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
		  <li role="presentation" class="active"><a href="/star/order/orderpage"><strong>주문하기</strong></a></li>
		  <li role="presentation"><a href="/star/order/mycoffeepage"><strong>나만의 메뉴</strong></a></li>
		  <li role="presentation"><a href="/star/history/historypage"><strong>히스토리</strong></a></li>
		</ul>
		<hr/>
		<div class="row">
		<c:forEach items="${alist}" var="bean">
		  <div class="col-sm-6 col-md-3">
		    <div class="thumbnail">
		      <img src="/star/resources/imgs/coffee/${bean.newfilename }">
		      <div class="caption">
		        <h3>${bean.title }</h3>
		        <p><a href="/star/order/detailorder?no=${bean.no }" class="btn btn-info" role="button">주문하러가기</a></p>
		      </div>
		    </div>
		  </div>
		</c:forEach>
		</div>
	</div>
		
	<!-- /.container -->
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