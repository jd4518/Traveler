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
<%@ include file="/WEB-INF/view/common.jspf"%>
<title>nameAndTel.jsp</title>

<c:url var="NAME_TEL_URL" value="/traveler/member/nameAndTel"></c:url>
<c:url var="RETRY_URL" value="/traveler/member/nameAndTel"></c:url>
<c:url var="REDIRECT_URL" value="/traveler/member/main.html"></c:url>

<script type="text/javascript">

	var deps = ['ngRoute',
	            'ngAnimate',
	            'ngTouch',
	            'angular-loading-bar'
	           ];

	var app = angular.module("travelerApp", deps);
	
	app.controller("mainController", function($scope, $http) {
		
		
		$scope.nameAndTel = {};
		$scope.member = {};
		
		$scope.submit = function() {
			
			console.log("submit()...");
			
			var ajax = $http.post("${NAME_TEL_URL}", {
				name : $scope.nameAndTel.name,
				tel : $scope.nameAndTel.tel
			});
			
			ajax.then(function(value) {
				console.dir(value);
				alert("id = " + $scope.member.id);
				location.href = "${REDIRECT_URL}";
			}, function(reason) {
				console.dir(reason);
				alert("없는 회원입니다");
				$scope.error = reason.data;
				
			});
			
			
		};
		
	});
	
</script>

</head>
<body data-ng-controller="mainController" class="container">
	<div class="row">
		<pre>{{nameAndTel}}</pre>
		<div class="col-md-4 col-md-offset-4">
			<div class="login-panel panel panel-success">
				<div class="panel-heading">
					<h5 class="panel-title">
						<b>아이디,비밀번호 찾기</b>
					</h5>
				</div>
				<div class="panel-body">
					<form role="form" name="loginForm" novalidate="novalidate"
						data-ng-submit="submit()"
						action="">
						<fieldset>
							<div class="form-group">
								<input class="form-control" placeholder="NAME" name="name"
									type="text" autofocus required="required"
									data-ng-model="nameAndTel.name">
								
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="Tel"
									name="tel" type="text" required="required"
									data-ng-model="nameAndTel.tel">
								
							</div>
							<button type="submit" class="btn btn-lg btn-success btn-block"
								data-ng-disabled="loginForm.$invalid">찾기</button>
							
						</fieldset>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>