<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sitemesh" tagdir="/WEB-INF/tags/sitemesh" %>    
<!DOCTYPE html>
<html lang="ko" data-ng-app="travelerApp">
<head>
<title><sitemesh:write property='title'/></title>

<sitemesh:write property='head'/>

<style type="text/css">
	
footer{
	 clear: both;  bottom: 10px;  position: fixed;
}


</style>

</head>
<body data-ng-controller="mainController" class="container">
  <!-- Static navbar -->
    <nav class="navbar navbar-default {{staticOrFixed}}">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Traveler</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
            
            <li><a href="#">추천 여행지</a></li>
            
            <li class="dropdown">
            	<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">여행 친구 <span class="caret"></span> </a>
            	<ul class="dropdown-menu">
	                <li><a href="#">친구 모집</a></li>
	                <li><a href="#">~밥</a></li>
             	</ul>
            </li>
            
            <li class="dropdown">
            	<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">여행 정보<span class="caret"></span></a>
            	<ul class="dropdown-menu">
	                <li><a href="#">회원 추천 여행지</a></li>
	                <li><a href="#">여행 후기</a></li>
             	</ul>
            </li>
          </ul>
          
          <ul class="nav navbar-nav navbar-right">
            <li class="active"><a href="" data-ng-click="setMenuStyle('navbar-static-top')">Default</a></li>
            <li><a href="" data-ng-click="setMenuStyle('navbar-static-top')">Static top</a></li>
            <li><a href="" data-ng-click="setMenuStyle('navbar-fixed-top')">Fixed top</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div><!--/.container-fluid -->
    </nav>

<sitemesh:write property='body'/>

<sitemesh:write property='footer'/>
<footer>
		<div class="container">
				<div class="row" >
					<div class="col-sm-12" align="center">
						<h3>Traveler</h3>
						<p>여행 정보가 필요할떈 Traveler</p>
					</div>
				</div>
		</div>
</footer>

	<hr>
	<hr>
<hr>
<hr>

</body>
</html>