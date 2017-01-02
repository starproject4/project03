<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>결제하기</title>
<!-- 부트스트랩 -->
    <link href="/star/resources/css/bootstrap.min.css" rel="stylesheet">
	<link href="/star/resources/css/star.css" rel="stylesheet">

<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	var poi = ${bean2.point };
	var price = ${bean.price };
	var cnt = ${cnt };
	
	var star = ${bean2.star };
	var s = parseInt(star)+1;
	
	var mypoint = parseInt(poi);
	var p = parseInt(price);
	var c = parseInt(cnt);
	
	$("#usepoi").on('click',function(){
		
		var res = confirm("포인트로 결제 하시겠습니까?");
		if(res==true){
			price = p*c;
			mypoint = mypoint-price;
			if(mypoint<0){
				alert("포인트가 부족합니다.");
				return false;
			}else{
				alert("잔액은"+mypoint+"입니다.");
				$('#point').val(mypoint)
				$('#star').val(s)
				
				$.ajax({
					url:"/star/order/usepoint",
					type:'post',
					data: {
						id:$('#id').val()
						, point:$('#point').val()
						, star:$('#star').val()
						, name:$('#name').val()
						, price:$('#price').val()
						},
					success: function(data){
					}
				});
				alert("구매되셨습니다.\n 주문하기 페이지로 이동합니다.");
				window.location.replace("/star/order/orderpage");
				
			}
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
		  <li role="presentation" class="active"><a href="/star/order/orderpage"><strong>주문하기</strong></a></li>
		  <li role="presentation"><a href="/star/order/mycoffeepage"><strong>나만의 메뉴</strong></a></li>
		  <li role="presentation"><a href="/star/history/historypage"><strong>히스토리</strong></a></li>
		</ul>
		<hr/>
		
		<div class="row">
		  <div class="col-md-4">
				<img src="/star/resources/imgs/coffee/${bean.newfilename }">
		  </div><!-- col-md-4 -->
		  <div class="col-md-5">
		      <h2><strong>${bean.name }</strong></h2>
		      <h3>${bean.price } 원</h3>
		      
		      <input type="hidden" id="name" name="name" value="${bean.name }">
		      <input type="hidden" id="price" name="price" value="${bean.price }">
		      
			  <p class="text-left">수량 : ${cnt }</p>
		      <p class="text-left">얼음 : ${bean.ice }</p>
		      <p class="text-left">컵 사이즈 : ${bean.cupsize }</p>
				
		      <hr/>
		      <div class="col-md-12">
			      <label>결제 방법 선택</label>
					 
					 <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
					  <div class="panel panel-default">
					    <div class="panel-heading" role="tab" id="headingOne">
					      <h4 class="panel-title">
					        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
					          <span class="glyphicon glyphicon-certificate"></span> 포인트로 결제
					        </a>
					      </h4>
					    </div>
					    <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
					      <div class="panel-body">
					        
					        <p id="mypoi">나의 포인트는  ${bean2.point }</p>
					        <button class="btn btn-default" id="usepoi">사용하기</button>
					        <button class="btn btn-default" id="charge">충전하기</button>
					        
					        <input type="hidden" name="id" id="id" value="${bean2.id}">
					        <input type="hidden" name="point" id="point" value="${bean2.point }">
					        <input type="hidden" name="star" id="star" value="${bean2.star }">
					      </div>
					    </div>
					  </div>
					  <div class="panel panel-default">
					    <div class="panel-heading" role="tab" id="headingTwo">
					      <h4 class="panel-title">
					        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
					          <span class="glyphicon glyphicon-certificate"></span> 쿠폰으로 결제
					        </a>
					      </h4>
					    </div>
					    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
					      <div class="panel-body">
					      
					      //쿠폰
					      </div>
					    </div>
					  </div>
					</div>
					 
				</div> 
		      
		      
			</div><!-- col-md-5 -->
		      
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