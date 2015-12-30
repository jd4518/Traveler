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
<title>login.jsp</title>


<c:url var="LOGIN_URL" value="/traveler/member/login"></c:url>
<c:url var="REDIRECT_URL" value="/traveler/member/main.html"></c:url>

<script type="text/javascript">

	var LOGIN_URL = "${LOGIN_URL}";
	var REDIRECT_URL = "${REDIRECT_URL}";

	var deps = [ 'ngRoute', 
	             'ngAnimate', 
	             'ngTouch',
	             'angular-loading-bar' ];

	var app = angular.module("travelerApp", deps);

	app.controller("mainController", function($scope, $http) {
		console.log("mainController...");
		
		$scope.login = {};
		
		
		$scope.submit = function() {
			
			console.log("submit()...")
		
		
		var ajax = $http.post("${LOGIN_URL}",{
			id : $scope.login.id,
			password : $scope.login.password
			
		});
		
		ajax.then(function(value) {
			console.dir(value);
			location.href = "${REDIRECT_URL}";
			
		}, function(reason) {
			console.dir(reason);
			$scope.error = reason.data;
			alert("회원 정보를 확인하세요");
		});
		
	};
});

</script>

</head>
<body data-ng-controller="mainController" class="container">
        <div class="row">
        	{{login}}
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-success">
                    <div class="panel-heading">
                        <h5 class="panel-title"><b>로그인</b></h5>
                    </div>
                    <div class="panel-body">
                        <form role="form"
                        	  name="loginForm"
                        	  novalidate="novalidate"
							  data-ng-submit="submit()">
                            <fieldset>
                                <div class="form-group">
<<<<<<< HEAD
                                    <input 	class="form-control" 
                                    		placeholder="ID" 
                                    		name="id" 
                                    		type="text" 
                                    		autofocus
                                    		required="required"
                                    		data-ng-model="login.id"
                                    		>
                                    <div data-ng-show="loginForm.id.$dirty && loginForm.id.$invalid">
						       		
							       		<div data-ng-show="loginForm.id.$error.required">
							       			필수 입력 항목입니다
	                                	</div>
						       		</div>
						       	</div>
=======
                                    <input class="form-control" placeholder="ID" name="id" type="text" autofocus>
                                </div>
>>>>>>> 190b08a3af0f2306860d394baf0431f2e6ca81d2
                                <div class="form-group">
                                    <input 	class="form-control" 
                                    		placeholder="Password"
                                    		name="password" 
                                    		type="password"
                                    		required="required" 
                                    		data-ng-model="login.password">
                                   <div data-ng-show="loginForm.password.$dirty && loginForm.password.$invalid">
							       		<div data-ng-show="loginForm.password.$error.required">
							       			패스워드는 필수 입력 항목입니다
							       		</div>
						       	   </div>
                                </div>
                                <div class="form-group" align="right">
                                	 <a href="regist.html" class="btn btn-default btn-sm">
                                	 	<font color="#5cb85c"><b>회원가입</b></font></a>
                                	 <a href="" class="btn btn-default btn-sm">
                                	 	<font color="#5cb85c"><b>아이디 찾기</b></font></a>
                                	 <a href="" class="btn btn-default btn-sm">
                                	 	<font color="#5cb85c"><b>비밀번호 찾기</b></font></a>
                                </div>
                                <!-- Change this to a button or input when using this as a form -->
                                <button type="submit" 
								    class="btn btn-lg btn-success btn-block"
								    data-ng-disabled="loginForm.$invalid">Login</button>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>


</body>
</html>