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
<title>recommandList.jsp</title>
<script type="text/javascript">
	var deps = ['ngRoute',
	            'ngAnimate',
	            'ngTouch',
	            'angular-loading-bar'
	           ];

	var app = angular.module("travelerApp", deps);
	
	app.controller("recommandController", function($scope, $http) {
		
		console.log("recommandController...");
		
		$scope.title = "recommandList"
		
		
	});
	
</script>
</head>
<body data-ng-controller="recommandController" class="container">
<h1><a href="#" class="btn btn-primary">{{title}}</a></h1>
<input type="text">
<input type="text">
<input type="text">
<textarea rows="50" cols="100">

</textarea>
</body>
</html>