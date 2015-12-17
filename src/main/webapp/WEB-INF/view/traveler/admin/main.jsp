<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html lang="ko" data-ng-app="travelerApp">
<head>
<meta charset="UTF-8">
<%@ include file="/WEB-INF/view/common.jspf" %>
<title>Main.jsp</title>

<c:url var="URL_GET_LIST"					value="/traveler/admin/"/>

<script type="text/javascript">

	var urls = {
		GET_LIST : 					"${URL_GET_LIST}"
	};	
		
	var deps = ['ngRoute',
	            'ngAnimate',
	            'ngTouch',
	            'angular-loading-bar'
	           ];

	var app = angular.module("travelerApp", deps);
	
	app.constant("URL", urls);
	
	app.controller("memberListController", function($scope, $http, $location) {
		
		console.log("memberListController...");
		
		
	});
	
</script>

<c:url var="memberListController" value="/js/traveler/admin/listController.js"/>

<script type="text/javascript" src="${memberListController}"></script>

</head>
<body data-ng-controller="memberListController" class="container">
<h1>{{title}}</h1>
<div data-ng-view>
 asd
</div>
</body>
</html>