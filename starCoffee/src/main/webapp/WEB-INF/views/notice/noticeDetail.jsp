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

			<h1>상세페이지</h1>
			<form action="/star/notice/delete">
			<input type="hidden" name="no" value="${bean.no }">
				<table>
					<tr>
						<td>
							<label for="title">title</label>
							<input type="text" name="title" id="title" value="${bean.title }" readonly="readonly" />
						</td>
					</tr>
					<tr>
						<td>
							<label for="content">content</label>
							<textarea rows="20" cols="80" name="content" id="content" readonly="readonly">${bean.content }</textarea>
						</td>
					</tr>
				</table>
				<p>
					<input type="button" id="edit" value="수정">
					<input type="submit" id="del" value="삭제">
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
    <script type="text/javascript">
		$(document).ready(function(){
			$("#edit").click(function(){
				if($(this).attr("type")=="button"){
				$("h1").text("수정페이지");
				$("input").removeAttr("readonly");
				$("textarea").removeAttr("readonly");
				$(this).attr("type","submit");
				$("#del").remove();
				$("form").attr("action","/star/notice/update?no=${bean.no}");
				return false;				
				}
			});
		});
	</script> 
</body>
</html>