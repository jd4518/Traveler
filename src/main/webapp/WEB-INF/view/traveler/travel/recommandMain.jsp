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
<%@ include file="/WEB-INF/view/common.jspf" %>
<title>template.jsp</title>

<c:url var="URL_GET_LIST"					value="/traveler/"/>
<c:url var="URL_GET_ITEM_BASE" 				value="/traveler/"/>		<%-- /city/{id} --%>
<c:url var="URL_GET_PAGE_BASE" 				value="/traveler/page/"/>	<%-- /city/page/{pageNo} --%>

<script type="text/javascript">
	var urls = {
			GET_LIST : 					"${URL_GET_LIST}",
			GET_PAGE_BASE : 			"${URL_GET_PAGE_BASE}",
			GET_ITEM_BASE :				"${URL_GET_ITEM_BASE}"
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
			redirectTo: "/list"
		});
	});
	
	app.constant("URL", urls);
	
	app.controller("mainController", function($scope, $http) {
		
		console.log("mainController...");
		
		
		
	});
	
</script>

<c:url var="recommandListController" value="/js/traveler/travel/recommandListController.js"/>

<script type="text/javascript" src="${recommandListController}"></script>

</head>
<body data-ng-controller="mainController" class="container">
<h1><a href="" class="btn btn-primary">{{title}}</a></h1>
<div data-ng-view>
</div>
</body>
</html>