<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>starbucks</title>
</head>
<body>
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <a class="navbar-brand" href="/star/"><img src="/star/resources/imgs/logo.png" alt=""/></a> 
          <!-- 내가 만든 div : login-bar-md -->
          <div class="login-bar">
              <!-- 내가 만든 클래스 : loggedOut -->
              <div class="loggedOut">
              <%
	            String id = (String)session.getAttribute("id");
	            
	            if(session.getAttribute("id")!=null){ 	//id값이 널이 아니면(로그인중이면)
	    			if((Boolean)session.getAttribute("result")){ 
	          %>
                  <a class="btn btn-default" role="button" href="/star/members/logout" title="">Log-out</a>
                  <a class="btn btn-default" role="button" href="/star/members/mypage" title="">My Page</a>
                  <a class="btn btn-default" role="button" href="/star/order/orderpage" title="">Siren order</a>
	            <%
	    			}
	            }else{
	            %>
                  <a class="btn btn-default" role="button" href="/star/members/login" title="">Log-in</a>
                  <a class="btn btn-default" role="button" href="/star/members/joinform" title="">Sign-up</a>
	            <%
	            }
	            %>
              </div>
            </div>
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
            
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
                   
        </div>
        
        
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <!-- 내가 만든 div : login-bar -->
          <div class="login-bar">
          <!-- 내가 만든 클래스 : loggedOut -->
          <div class="loggedOut">
            <%
            if(session.getAttribute("id")!=null){ 	//id값이 널이 아니면(로그인중이면)
    			if((Boolean)session.getAttribute("result")){ 
          	%>
                 <a class="btn btn-default" role="button" href="/star/members/logout" title="">Log-out</a>
                 <a class="btn btn-default" role="button" href="/star/members/mypage" title="">My Page</a>
                 <a class="btn btn-default" role="button" href="/star/order/orderpage" title="">Siren order</a>
            <%
    			}
            }else{
            %>
                 <a class="btn btn-default" role="button" href="/star/members/login" title="">Log-in</a>
                 <a class="btn btn-default" role="button" href="/star/members/joinform" title="">Sign-up</a>
            <%
            }
            %>
          </div>
        </div>
          <ul class="nav navbar-nav"> 
           <!-- 클릭하면 메뉴 나옴 -> 메뉴 마우스 오버시 서브 메뉴 나오게 수정하기 -->
           <%
            if(session.getAttribute("id")!=null){ 	//id값이 널이 아니면(로그인중이면)
    			if((Boolean)session.getAttribute("result")){ 
          	%>
            <li><a href="/star/order/orderpage">Siren order</a></li>
            <%
    			}
            }else{
            %>
            <li><a href="/star/members/login">Siren order</a></li>
            <%
            }
            %>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Menu<span>▼</span></a>
              <ul class="dropdown-menu">
                <li><a href="/star/menu/">see all</a></li>
                <li><a href="/star/menu/coffee">coffee</a></li>
                <li><a href="/star/menu/drink">drink</a></li>
                <li><a href="/star/menu/food">food</a></li>            
              </ul>
            </li>        
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Product<span>▼</span></a>
              <ul class="dropdown-menu">
                <li><a href="/star/product/">see all</a></li>
                <li><a href="/star/product/cup">cup</a></li>
                <li><a href="/star/product/card">card</a></li>
                <li><a href="/star/product/others">others</a></li>            
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">News<span>▼</span></a>
              <ul class="dropdown-menu">
                <li><a href="/star/event">event</a></li>
                <li><a href="/star/notice">notice</a></li>            
              </ul>
            </li>
            <li><a href="/star/subs/store">find a store</a></li>
          </ul>
            
          
        </div><!-- nav-collapse -->
      </div>
    </nav>
</body>
</html>