<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>starbucks</title>

    <!-- 부트스트랩 -->
    <link href="/star/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="/star/resources/css/star.css" rel="stylesheet">

    <!-- IE8 에서 HTML5 요소와 미디어 쿼리를 위한 HTML5 shim 와 Respond.js -->
    <!-- WARNING: Respond.js 는 당신이 file:// 을 통해 페이지를 볼 때는 동작하지 않습니다. -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <style type="text/css">
    	.user-main-visual{ /* 본문 메인 이미지 */
            height:700px;
            background-image: url('/star/resources/imgs/win2_emblem.png'), 
                url('/star/resources/imgs/bev1_cup.png'), url('/star/resources/imgs/bev4_leaf.png'), url('/star/resources/imgs/bev1_ttl.png'), url('/star/resources/imgs/bev2_cup.png'), url('/star/resources/imgs/bev1_leaf.png'), url('/star/resources/imgs/bev2_ttl.png'), url('/star/resources/imgs/bev4_cup.png'), url('/star/resources/imgs/bev4_leaf.png'), url('/star/resources/imgs/bev3_txt.png'),
                url('/star/resources/imgs/bev3_cup.png'), url('/star/resources/imgs/bev3_leaf.png'), url('/star/resources/imgs/bev3_ttl.png');
            background-position:0 45%, 
                30% 0%, 16% 6%, 1% 15%,
                100% 20%, 72% 10%, 55% 35%,
                100% 100%, 67% 90%, 90% 55%,
                2% 100%, 27% 76%, 28% 90% /*right bottom, left top*/;
            background-size:30%,
                43%, 13%, 20%,
                35%, 10%, 18%,
                35%, 16%, 26%,
                36%, 15%, 20%;
            background-repeat: no-repeat;
        }
            
    @media (max-width: @screen-xs-max) { ... }
    @media (min-width: @screen-sm-min) and (max-width: @screen-sm-max) { ... }
    @media (min-width: @screen-md-min) and (max-width: @screen-md-max) { ... }
    @media (min-width: @screen-lg-min) { ... }  
        
    /* 매우 작은 기기들 (모바일폰, 768px 보다 작은) */
    /* 부트스트랩에서 이것은 기본이므로 미디어쿼리가 없습니다. */
    /* 작은 기기들 (태블릿, 768px 이상) */
    @media (min-width: @screen-sm-min) {
        .user-main-visual{ /* 본문 메인 이미지 */
            height:700px;
            background-image: url('/star/resources/imgs/win2_emblem.png'), 
                url('/star/resources/imgs/bev1_cup.png'), url('/star/resources/imgs/bev4_leaf.png'), url('/star/resources/imgs/bev1_ttl.png'), url('/star/resources/imgs/bev2_cup.png'), url('/star/resources/imgs/bev1_leaf.png'), url('/star/resources/imgs/bev2_ttl.png'), url('/star/resources/imgs/bev4_cup.png'), url('/star/resources/imgs/bev4_leaf.png'), url('/star/resources/imgs/bev3_txt.png'),
                url('/star/resources/imgs/bev3_cup.png'), url('/star/resources/imgs/bev3_leaf.png'), url('/star/resources/imgs/bev3_ttl.png');
            background-position:0 45%, 
                30% 0%, 16% 6%, 1% 15%,
                100% 20%, 72% 10%, 55% 35%,
                100% 100%, 67% 90%, 90% 55%,
                2% 100%, 27% 76%, 28% 90% /*right bottom, left top*/;
            background-size:30%,
                43%, 13%, 20%,
                35%, 10%, 18%,
                35%, 16%, 26%,
                36%, 15%, 20%;
            background-repeat: no-repeat;
        }
        
        }
    /* 중간 기기들 (데스크탑, 992px 이상) */
    @media (min-width: @screen-md-min) { 
        
        }
    /* 큰 기기들 (큰 데스크탑, 1200px 이상) */
        
    @media (min-width: @screen-lg-min) { 
        
        }
    </style>
  </head>
  <body>
    <!-- header link -->
    <%@ include file="/resources/templates/header.jsp" %>
   
    
    
    <!-- 여기부터 본문 -->
    <div class="container content">
      <div class="row">
              <div class="col-sm-8 text-center user-main-visual">
                    <p class="lead"></p>
                    
              </div>
              <div class="col-sm-4 text-center user-side">
                  <div class="row">
                      <div class="col-sm-12">
                          공지사항
                      </div>
                  </div>
                  <div class="row">
                      <p class="col-sm-12">
                          <a href="" title=""><img src="/star/resources/imgs/bnr_redcup_teasing2.png" alt=""/></a>
                      </p>
                  </div>
              </div>
      </div>
      <!-- /.row -->
      
    </div><!-- /.container -->
    <!-- 여기까지 본문 -->
    
   
   <!-- footer link -->
   <jsp:include page="/resources/templates/footer.jsp"></jsp:include>
   
    <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
    <script src="/star/resources/js/bootstrap.min.js"></script>
    <script src="/star/resources/js/star.js"></script>
  </body>
</html>