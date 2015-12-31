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
<!-- Bootstrap Core CSS -->
    <link href="/Traveler/mainbootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="/Traveler/mainbootstrap/css/stylish-portfolio.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="/Traveler/mainbootstrap/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
<script type="text/javascript">
	app.controller("navController", function($scope, $http){
		
		var ajax = $http.get("<c:url value="/traveler/member/logincheck"/>");
		ajax.then(function(value) {
			$scope.$parent.loginstatus = value.data.login;
		});
	});
</script>
</head>
<body data-ng-controller="mainController" class="container">
  <!-- Navigation -->
    <a id="menu-toggle" href="#" class="btn btn-dark btn-lg toggle"><i class="fa fa-bars"></i></a>
    <nav id="sidebar-wrapper" data-ng-controller="navController">
        <ul class="sidebar-nav">
            <a id="menu-close" href="#" class="btn btn-light btn-lg pull-right toggle"><i class="fa fa-times"></i></a>
            <li class="sidebar-brand">
                <a href="#top"  onclick = $("#menu-close").click(); >Traveler</a>
            </li>
            <li>
                <a href="/Traveler/traveler/member/main.html" onclick = $("#menu-close").click(); >Home</a>
            </li>
            <li>
            	<a href="#">Service <span class="caret"></span> </a>
            	<ul>
	                <li><a href="#" onclick = $("#menu-close").click();>추천 여행지</a></li>
	                <li><a href="#" onclick = $("#menu-close").click();>여행 정보 공유</a></li>
	                <li><a href="#" onclick = $("#menu-close").click();>여행 멤버 모집</a></li>
	                <li><a href="#" onclick = $("#menu-close").click();>실시간 게시판</a></li>
             	</ul>
            </li>
            <li>
                <a href="/Traveler/traveler/admin/memberappend.html" onclick = $("#menu-close").click(); >SignUp</a>
            </li>
            
            <li data-ng-hide="loginstatus">{{loginstatus}}<a href="<c:url value="/traveler/member/login.html"/>">
                <a href="/Traveler/traveler/member/login.html" onclick = $("#menu-close").click(); >Login</a>
            </li>
            
            <li data-ng-show="loginstatus">{{loginstatus}}<a href="<c:url value="/traveler/member/logout"/>">
                <a href="/Traveler/traveler/member/login.html" onclick = $("#menu-close").click(); >Logout</a>
            </li>
        </ul>
    </nav>
    <!-- jQuery -->
    <script src="/Traveler/jquery/dist/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="/Traveler/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script>
    // Closes the sidebar menu
    $("#menu-close").click(function(e) {
        e.preventDefault();
        $("#sidebar-wrapper").toggleClass("active");
    });

    // Opens the sidebar menu
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#sidebar-wrapper").toggleClass("active");
    });

    // Scrolls to the selected menu item on the page
    $(function() {
        $('a[href*=#]:not([href=#])').click(function() {
            if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') || location.hostname == this.hostname) {

                var target = $(this.hash);
                target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
                if (target.length) {
                    $('html,body').animate({
                        scrollTop: target.offset().top
                    }, 1000);
                    return false;
                }
            }
        });
    });
    </script>

<sitemesh:write property='body'/>



</body>
</html>