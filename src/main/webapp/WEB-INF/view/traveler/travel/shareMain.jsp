<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html lang="ko" data-ng-app="travelerApp">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
<%@include file="/WEB-INF/view/common.jspf" %>
<title>shareList.jsp</title>
<!-- URL 결정 Resolve -->
<c:url var="URL_GET_LIST" 					value="/traveler/travel/"/>
<c:url var="URL_GET_ITEM_BASE" 				value="/traveler/travel/"/> 		<!-- /share/{id} -->
<c:url var="URL_GET_PAGE_BASE" 				value="/traveler/travel/page/"/>	<!-- /share/page/{pageNo} -->


<c:url var="URL_POST_LIST_APPEND"			value="/traveler/travel/"/>
<c:url var="URL_POST_ITEM_APPEND"			value="/traveler/travel/"/>

<c:url var="URL_PUT_LIST_MODIFY"			value="/traveler/travel/"/>
<c:url var="URL_PUT_ITEM_MODIFY_BASE"		value="/traveler/travel/"/>

<c:url var="URL_DELETE_ITEM_DELETE_BASE"	value="/traveler/travel/"/>
<script type="text/javascript">
	var urls = {
		GET_LIST	 : 				"${URL_GET_LIST}",	
		GET_PAGE_BASE: 				"${URL_GET_PAGE_BASE}",
		GET_ITEM_BASE: 				"${URL_GET_ITEM_BASE}",
		
		POST_LIST_APPEND: 			"${URL_POST_LIST_APPEND}",
		POST_ITEM_APPEND: 			"${URL_POST_ITEM_APPEND}",
		
		PUT_LIST_MODIFY: 			"${URL_PUT_LIST_MODIFY}",
		PUT_ITEM_MODIFY_BASE:		"${URL_PUT_ITEM_MODIFY_BASE}",
		
		DELETE_ITEM_DELETE_BASE:	"${URL_DELETE_ITEM_DELETE_BASE}"
	};
	
	var deps = ['ngRoute',
	            'ngAnimate',
	            'ngTouch',
	            'angular-loading-bar',
	            'ui.bootstrap'
	           ];
	
	var app = angular.module("travelerApp", deps);
	
	app.config(function($routeProvider) {
		$routeProvider.otherwise({
			redirectTo: "/shareList"
		});
	});

	app.constant("URL", urls);
	
	app.controller("mainController", function($scope, $http, $location) {
		console.log("mainController...");
		
	});
	
</script>
<c:url var="listController" value="/js/traveler/travel/listController.js"/>
<c:url var="detailController" value="/js/traveler/travel/detailController.js"/>
<c:url var="insertController" value="/js/traveler/travel/insertController.js"/>
<c:url var="modifyController" value="/js/traveler/travel/modifyController.js"/>
<c:url var="deleteController" value="/js/traveler/travel/deleteController.js"/>

<script type="text/javascript" src="${listController}"></script>
<script type="text/javascript" src="${detailController}"></script>
<script type="text/javascript" src="${insertController}"></script>
<script type="text/javascript" src="${modifyController}"></script>
<script type="text/javascript" src="${deleteController}"></script>
</head>

<body data-ng-controller="mainController" class="container">
 <h1><i class="fa fa-share-alt"></i> {{title}}</h1>
<div data-ng-view>
</div>

 <!-- Footer -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-10 col-lg-offset-1 text-center">
                    <h4><strong>Traveler</strong>
                    </h4>
                    <p>서울특별시 강남구 테헤란로 7길 7<br>(역삼동 에스코빌딩 6층)</p>
                    <ul class="list-unstyled">
                        <li><i class="fa fa-phone fa-fw"></i> (02) 561-1911</li>
                        <li><i class="fa fa-envelope-o fa-fw"></i>  <a href="mailto:infoprotect@choongang.co.kr">infoprotect@choongang.co.kr</a>
                        </li>
                    </ul>
                    <br>
                    <ul class="list-inline">
                        <li>
                            <a href="#"><i class="fa fa-facebook fa-fw fa-3x"></i></a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-twitter fa-fw fa-3x"></i></a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-dribbble fa-fw fa-3x"></i></a>
                        </li>
                    </ul>
                    <hr class="small">
                    <p class="text-muted">Copyright &copy; Your Website 2016</p>
                </div>
            </div>
        </div>
    </footer>
</body>
</html>