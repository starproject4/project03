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
<style type="text/css">
	body {
		  padding-top: 200px;
		}
</style>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script type="text/javascript">

	$(document).ready(function(){
		
		$('form').on('submit',function(){
			$.ajax({
				url:"/star/members/login",
				type:'post',
				data: {
					id:$('#id').val()
					, pw:$('#pw').val()
					},
				success: function(data){
					if($.trim(data)==""){
						alert("다시한번 확인해 주세요.");
						$("#id").val("");
						$("#pw").val("");
					    return false;
					}else{
						alert("환영합니다!");
						window.location.replace("/star/");
					}
				}
			});
		    return false;
		});
		
		$("#findInfo").click(function(){
			
			return false;
		});
		
	});
</script>
</head>
<body>

    <!-- header link -->
    <%@ include file="/resources/templates/header.jsp" %>

    <div class="container">
      <div class="starter-template">
       <form class="form-horizontal" action="/star/" method="post">
       
		  <div class="form-group">
		    <label for="id" class="col-sm-4 control-label">아이디</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="id" name="id" />
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="pw" class="col-sm-4 control-label">비밀번호</label>
		    <div class="col-sm-4">
		      <input type="password" class="form-control" id="pw" name="pw" />
		    </div>
		  </div>
		  
		 
		  
		  <div class="form-group">
		    <div class="col-sm-offset-6 col-sm-5">	
		      <button type="button" class="btn btn-default" id="findInfo">ID / PW 찾기</button>
		      <button type="submit" class="btn btn-success">로그인</button>
		    </div>
		  </div>
		</form>
		
      </div>

    </div><!-- /.container -->
    
     
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