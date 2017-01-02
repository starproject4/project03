<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>주문하기</title>
<!-- 부트스트랩 -->
    <link href="/star/resources/css/bootstrap.min.css" rel="stylesheet">
	<link href="/star/resources/css/star.css" rel="stylesheet">
<style type="text/css">
	.img-responsive{
		max-width: 50px;, height: auto; , display: block;
	}
</style>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	/* $("#myoder").on('click',function(){
		var p = ${bean.price };
		var price = parseFloat(p);
		$("#price").val(price);
		
	}); */
	
	$("#delmy").on('click',function(){
		var res = confirm("삭제 하시겠습니까?");
		if(res==true){
			alert("삭제되었습니다.");
			window.location.replace("/star/order/mycoffeepage");
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
		  <li role="presentation" class="active"><a href="/star/order/mycoffeepage"><strong>나만의 메뉴</strong></a></li>
		  <li role="presentation"><a href="/star/history/historypage"><strong>히스토리</strong></a></li>
		</ul>
		<hr/>
	   
	 
	   	<table class="table table-striped">
	   	<tr>
			<th></th>
			<th>이름</th>
			<th>가격</th>
			<th>컵 사이즈</th>
			<th>얼음</th>
			<th></th>
		</tr>
		<c:forEach items="${alist }" var="bean">
		<tr >
			<td>
				<img src="/star/resources/imgs/coffee/${bean.newfilename }" class="img-circle img-responsive center-block">
			</td>
			<td>${bean.name }</td>
			<td>${bean.price }</td>
			<td>${bean.cupsize }</td>
			<td>${bean.ice }</td>
			<td>
			<a class="btn btn-success btn-xs btn-block" href="/star/order/mycoffeepay?name=${bean.name }&price=${bean.price }&ice=${bean.ice }&cupsize=${bean.cupsize }&newfilename=${bean.newfilename }">
			주문하기
			</a>
			<a class="btn btn-danger btn-xs btn-block" id="delmy" href="/star/order/mycoffeedel?no=${bean.mypk }">
			삭제하기
			</a>
			</td>
		</tr>
		        
		
		</c:forEach>
		</table>
	   
		<!-- </form> -->
	</div>
	<!-- /.container -->
	<!-- 여기까지 본문 -->
 
 
	<hr/><hr/>
 
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