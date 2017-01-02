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

<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	var c = $('#cnt').val();
	var cnt = parseInt(c);
	$('#sub').on('click',function(){
		cnt = cnt-1;
		if(cnt==0||cnt<0){
			cnt=0;
			return false;
		}else{
			$('#cnt').val(cnt);
			return false;
		}
	});
	$('#add').on('click',function(){
		cnt = cnt+1;
		$('#cnt').val(cnt);
		return false;
	});
	
	 $("#myfavorites").click(function(){
		var rcup = $('input[name=rcupsize]:checked').val();
		$('#cupsize').val(rcup);
		var r = $('input[name=rice]:checked').val();
		$('#ice').val(r);
		
		$.ajax({
			url:"/star/order/myCoffeeInsert",
			type:'post',
			data: {
				no:$('#no').val()
				, name:$('#name').val()
				, price:$('#price').val()
				, cupsize:$('#cupsize').val()
				, ice:$('#ice').val()
				},
			success: function(){
				/* alert("ah");
				 if($.trim(data)==""){
					alert("다시한번 확인해 주세요.");
					$("#id").val("");
					$("#pw").val("");
				    return false;
				}else{
					alert("환영합니다!");
					window.location.replace("/star/order/detailorder?no=");
				}  */
			//window.location.replace("/star/order/detailorder?no="+$('#no').val());
				return false;
			}
		});
	    return false;
		
	});
	
	
	
var prebtn = ${bean.no}-1;
var nextbtn = ${bean.no}+1;

	$('#prea').on('click',function(){
		if(prebtn==0){			
			alert("첫메뉴입니다.");
			return false;
		}else{
			window.location.replace("/star/order/detailorder?no="+prebtn);
		}
	});
	
	$('#nexa').on('click',function(){
		//if(n==""||n==null){
		//	alert("마지막메뉴입니다.");
		//	return false;
		//}else{
			window.location.replace("/star/order/detailorder?no="+nextbtn);
		//}
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
		  <li role="presentation"><a href="#"><strong>나만의 메뉴</strong></a></li>
		  <li role="presentation"><a href="#"><strong>히스토리</strong></a></li>
		</ul>
		<hr/>
	    <form action="/star/order/myfavorites">
		<div class="row">
		  <div class="col-md-4">
		  	<a href="/star/menu/detail?no=${bean.no }">
				<img src="/star/resources/imgs/coffee/${bean.newfilename }">
			</a>
			<p class="text-center"><small>(영양정보 확인하기 사진클릭)</small></p>
		  </div><!-- col-md-5 -->
		  <div class="col-md-5">
		      <h1><strong>${bean.title }</strong></h1>
		      <h2><p class="text-right">${bean.price } 원</p></h2>
		      
			  
		      <div class="col-md-6">	
		      <!-- Split button -->
				  <div class="col-lg-9">
			      <label>수량</label>	      
				    <div class="input-group">
				      <span class="input-group-btn">
				        <button class="btn btn-default" type="button" id="sub"><strong>-</strong></button>
				      </span>
				      <input type="text" class="form-control" id="cnt" name="cnt" value="1">
				      <span class="input-group-btn">
				        <button class="btn btn-default" type="button" id="add"><strong>+</strong></button>
				      </span>
				    </div><!-- /input-group -->
				  </div><!-- /.col-lg-6 -->
			  </div>
			      
			  <hr/>
		      <div class="col-md-12">
			      <label>컵 사이즈</label>	 
			      <div class="btn-group" data-toggle="buttons" id="one">
					  <label class="btn btn-default active">
					    <input type="radio" name="rcupsize" id="tall" value="tall" autocomplete="off" checked>Tall
					  </label>
					  <label class="btn btn-default">
					    <input type="radio" name="rcupsize" id="grande" value="grande" autocomplete="off">Grande
					  </label>
					  <label class="btn btn-default">
					    <input type="radio" name="rcupsize" id="venti" value="venti" autocomplete="off">Venti
					  </label>
					</div>
				</div>  
		      
		      <hr/>
		      <div class="col-md-12">
			      <label>얼음 양</label>	 
			      <div class="btn-group" data-toggle="buttons">
			      	  <label class="btn btn-default">
					    <input type="radio" name="rice" id="icea" value="없이" autocomplete="off">없이
					  </label>
					  <label class="btn btn-default">
					    <input type="radio" name="rice" id="iceb" value="적게" autocomplete="off">적게
					  </label>
					  <label class="btn btn-default	">
					    <input type="radio" name="rice" id="icec" value="보통" autocomplete="off">보통
					  </label>
					  <label class="btn btn-default">
					    <input type="radio" name="rice" id="iced" value="많이" autocomplete="off">많이
					  </label>
					</div>
				</div> 
				
				
			  <input type="hidden" name="no" id="no" value="${bean.no }">
			  <input type="hidden" name="name" id="name" value="${bean.title }">
			  <input type="hidden" name="price" id="price" value="${bean.price }">
			  <input type="hidden" name="cupsize" id="cupsize" value="tall">
			  <input type="hidden" name="ice" id="ice" value="">
				
		      <hr/><hr/><hr/>
		      <div class="col-md-6">
			      <button type="submit" class="btn btn-default btn-lg btn-block" id="myfavorites">나만의메뉴 담기</button>
			  </div>
		      <div class="col-md-6">
			      <button type="button" class="btn btn-success btn-lg btn-block">주문하기</button>
			  </div>
		      
			</div><!-- col-md-5 -->
		      
		  </div>
		</form>
		</div>
	<!-- /.container -->
	<!-- 여기까지 본문 -->
     
	<ul class="pager">
	    <li><a href="#" id="prea">Previous</a></li>
	    <li><a href="#" id="nexa">Next</a></li>
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