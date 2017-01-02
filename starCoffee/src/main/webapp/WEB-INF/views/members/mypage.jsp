<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>My Page</title>
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
		
		$("#delUser").click(function() {
			var result = confirm("정말 탈퇴하시겠습니까?");
			if( result == true ){
				$.post(
						"/star/members/delete"
						,{'idx':'${bean.id }'}
						,function(){
							      alert("탈퇴되셨습니다.");
							      window.location.replace("/star/");
							}
					);
		   }else{
			   window.location.replace("/star/members/mypage");
		   }
		}); 
	});
</script>
</head>
<body>

    <!-- header link -->
    <%@ include file="/resources/templates/header.jsp" %>

    <div class="container">
      <div class="starter-template">
       <form class="form-horizontal" action="/star/members/updateform" method="post">
       
		  <div class="form-group">
		    <label for="id" class="col-sm-5 control-label">아이디</label>
		    <div class="col-sm-6">
		      <label for="id" class="control-label" >${bean.id }</label>
		    </div>
		  </div>
		  		  
		  <div class="form-group">
		    <label for="name" class="col-sm-5 control-label">이름</label>
		    <div class="col-sm-6">
		      <label for="name" class="control-label" >${bean.name }</label>
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="birth" class="col-sm-5 control-label">생년월일</label>
		    <div class="col-sm-6">
		      <label for="birth" class="control-label" >${bean.birth }</label>
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="phone" class="col-sm-5 control-label">전화번호</label>
		    <div class="col-sm-6">
		      <label for="phone" class="control-label" >${bean.phone }</label>
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="email" class="col-sm-5 control-label">이메일</label>
		    <div class="col-sm-6">
		      <label for="email" class="control-label" >${bean.email }</label>
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="addr" class="col-sm-5 control-label">주소</label>
		    <div class="col-sm-6">
		      <label for="addr" class="control-label" >${bean.addr }</label>
		    </div>
		  </div>
		  
		  <div class="form-group star">
		    <label for="star" class="col-sm-5 control-label">★</label>
		    <div class="col-sm-6">
		      <label for="star" class="control-label" >${bean.star }</label>
		    </div>
		  </div>
		  
		  <div class="form-group grade">
		    <label for="grade" class="col-sm-5 control-label">등급</label>
		    <div class="col-sm-6">
		      <label for="grade" class="control-label" >${bean.grade }</label>
		    </div>
		  </div>
		  
		  <div class="form-group grade">
		    <label for="grade" class="col-sm-5 control-label">포인트</label>
		    <div class="col-sm-6">
		      <label for="grade" class="control-label" >${bean.point }</label>
		    </div>
		  </div>
		  
		 
		  
		  <div class="form-group">
		    <div class="col-sm-offset-5 col-sm-5">	
		      <button type="submit" class="btn btn-success">회원 정보 수정</button>
		      <button type="button" class="btn btn-danger" id="delUser">회원 탈퇴</button>
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