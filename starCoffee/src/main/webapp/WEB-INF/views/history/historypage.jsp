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

$(document).ready(function(){
	
	$('#delh').on('click',function(){
		var res = confirm("삭제 하시겠습니까?");
		if(res==true){
			alert("삭제되었습니다.");
			window.location.replace("/star/history/historypage");
		}else{
			alert("취소되셨습니다.");
			return false;
		}
		
	});
});
</script>
</head>
<body>

    <!-- header link -->
    <%@ include file="/resources/templates/header.jsp" %>

    <!-- 여기부터 본문 -->
    <div class="container content">
		<ul class="nav nav-tabs">
		  <li role="presentation"><a href="/star/order/orderpage"><strong>주문하기</strong></a></li>
		  <li role="presentation"><a href="/star/order/mycoffeepage"><strong>나만의 메뉴</strong></a></li>
		  <li role="presentation" class="active"><a href="/star/history/historypage"><strong>히스토리</strong></a></li>
		</ul>
		<hr/>
	   
	   	<table class="table table-striped">
	   	<tr>
			<th></th>
			<th>이름</th>
			<th>가격</th>
			<th>구매 날짜</th>
			<th></th>
		</tr>
		<c:forEach items="${alist }" var="bean">
		<tr>
			<td>●</td>
			<td>${bean.name }</td>
			<td>${bean.price }</td>
			<td>${bean.nalja }</td>
			<td><a href="/star/history/historydel?no=${bean.no }" class="btn btn-danger btn-xs btn-block" id="delh">삭제하기</a></td>
		</tr>
		        
		
		</c:forEach>
		</table>
		<input type="hidden" id="no" name="no" value="${bean.no }">
		
		
		
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