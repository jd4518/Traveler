<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html lang="ko" data-ng-app="travelerApp">

<%@ include file="/WEB-INF/view/common.jspf" %>
<head>

    <meta charset="UTF-8">
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Traveler</title>
    
    <script type="text/javascript">
	var deps = ['ngRoute',
	            'ngAnimate',
	            'ngTouch',
	            'angular-loading-bar',
	            'ui.bootstrap'
	           ];

	var app = angular.module("travelerApp", deps);
	
	app.controller("mainController", function($scope, $http) {
		
		console.log("mainController...");
		
		$scope.title = "main"
		
		
	});
	
	</script>
    <!-- Bootstrap Core CSS -->
    <link href="/Traveler/mainbootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="/Traveler/mainbootstrap/css/stylish-portfolio.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="/Traveler/mainbootstrap/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body data-ng-controller="mainController">

<!--     Navigation -->
<!--     <a id="menu-toggle" href="#" class="btn btn-dark btn-lg toggle"><i class="fa fa-bars"></i></a> -->
<!--     <nav id="sidebar-wrapper"> -->
<!--         <ul class="sidebar-nav"> -->
<!--             <a id="menu-close" href="#" class="btn btn-light btn-lg pull-right toggle"><i class="fa fa-times"></i></a> -->
<!--             <li class="sidebar-brand"> -->
<!--                 <a href="#top"  onclick = $("#menu-close").click(); >Start Bootstrap</a> -->
<!--             </li> -->
<!--             <li> -->
<!--                 <a href="/Traveler/traveler/member/main.html" onclick = $("#menu-close").click(); >Home</a> -->
<!--             </li> -->
<!--             <li> -->
<!--                 <a href="#services" onclick = $("#menu-close").click(); >Services</a> -->
<!--             </li> -->
<!--             <li> -->
<!--                 <a href="#portfolio" onclick = $("#menu-close").click(); >Portfolio</a> -->
<!--             </li> -->
<!--             <li> -->
<!--                 <a href="/Traveler/traveler/member/login.html" onclick = $("#menu-close").click(); >Login</a> -->
<!--             </li> -->
<!--         </ul> -->
<!--     </nav> -->

    <!-- Header -->
    <header id="top" class="header">
        <div class="text-vertical-center">
            <h1>Traveler</h1>
            <h3></h3>
            <br>
            <a href="#about" class="btn btn-dark btn-lg">Find Out More</a>
        </div>
    </header>

    <!-- About -->
    <section id="about" class="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                </div>
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container -->
    </section>

    <!-- Services -->
    <!-- The circle icons use Font Awesome's stacked icon classes. For more information, visit http://fontawesome.io/examples/ -->
    <section id="services" class="services bg-primary">
        <div class="container">
            <div class="row text-center">
                <div class="col-lg-10 col-lg-offset-1">
                    <h2>Our Services</h2>
                    <hr class="small">
                    <div class="row">
                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                                <span class="fa-stack fa-4x">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-cloud fa-stack-1x text-primary"></i>
                            </span>
                                <h4>
                                    <strong>추천 여행지</strong>
                                </h4>
                                <p>사이트에서 추천하는 여행지</p>
                                <a href="#" class="btn btn-light">추천 여행지 게시판</a>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                                <span class="fa-stack fa-4x">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-compass fa-stack-1x text-primary"></i>
                            </span>
                                <h4>
                                    <strong>여행 정보 공유</strong>
                                </h4>
                                <p>여행 정보를 공유해보세요</p>
                                <a href="/shareList.html" class="btn btn-light">여행 정보 공유 게시판</a>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                                <span class="fa-stack fa-4x">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-child fa-stack-1x text-primary"></i>
                            </span>
                                <h4>
                                    <strong>여행 멤버 모집</strong>
                                </h4>
                                <p>같이 여행 갈 친구를 구해보세요!</p>
                                <a href="#" class="btn btn-light">여행 멤버 모집 게시판</a>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                                <span class="fa-stack fa-4x">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-comment fa-stack-1x text-primary"></i>
                            </span>
                                <h4>
                                    <strong>실시간 게시판</strong>
                                </h4>
                                <p>여행 실시간 게시판</p>
                                <a href="#" class="btn btn-light">실시간 게시판</a>
                            </div>
                        </div>
                    </div>
                    <!-- /.row (nested) -->
                </div>
                <!-- /.col-lg-10 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container -->
    </section>

    <!-- Callout -->
    <aside class="">
        <div class="text-vertical-center">
            <img alt="" src="/Traveler/img/풍경.jpg" class="img-responsive" width="1500">
        </div>
    </aside>

    <!-- Portfolio -->
    <section id="portfolio" class="portfolio">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 col-lg-offset-1 text-center">
                    <h2 class="btn btn-success">추천 여행지</h2>
                    <hr class="small">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="portfolio-item">
                                <a href="#">
                                    <img class="img-portfolio img-responsive" src="/Traveler/img/제주도_마방목지.jpg" data-toggle="tooltip" title="제주도 마방목지" data-placement="top">
                                </a>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="portfolio-item">
                                <a href="#">
                                    <img class="img-portfolio img-responsive" src="/Traveler/img/수월봉_001.png" data-toggle="tooltip" title="제주도 수월봉" data-placement="top">
                                </a>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="portfolio-item">
                                <a href="#">
                                    <img class="img-portfolio img-responsive" src="/Traveler/img/전라남도_영암군.jpg" data-toggle="tooltip" title="전라남도 월출봉" data-placement="top">
                                </a>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="portfolio-item">
                                <a href="#">
                                    <img class="img-portfolio img-responsive" src="/Traveler/img/경기도_양평군_두물머리.png" data-toggle="tooltip" title="경기도 양평군 두물머리" data-placement="top">
                                </a>
                            </div>
                        </div>
                    </div>
                    <!-- /.row (nested) -->
                    
                </div>
                <!-- /.col-lg-10 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container -->
    </section>

    

   

<!--     jQuery -->
<!--     <script src="js/jquery.js"></script> -->

<!--     Bootstrap Core JavaScript -->
<!--     <script src="js/bootstrap.min.js"></script> -->

<!--     Custom Theme JavaScript -->
<!--     <script>
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
    </script> -->

</body>

</html>
