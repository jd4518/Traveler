<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>   
<!DOCTYPE html>
<html lang="ko" data-ng-app="travelerApp">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
<script src="http://maps.google.com/maps/api/js"></script>
<title>shareList.jsp</title>
<%@ include file="/WEB-INF/view/common.jspf" %>
<script type="text/javascript">
		var deps = ['ngRoute',
		            'ngAnimate',
		            'ngTouch',
		            'angular-loading-bar',
		            'ngMap'
		           ];
		var app = angular.module("travelerApp", deps);
		
		app.controller("shareController", function($scope, $http) {
			
			console.log("shareController...");
			
			$scope.title = "shareList"
		});


</script>
</head>
<body  data-ng-controller="shareController"  class="container">
<a class="btn btn-primary" href="#/main">main...</a>
<h2>공유 게시판</h2>
<hr>
<div class="row">
	<div class="col-sm-8 col-sm-offset-3">
		<div class="panel panel-default">
		<div class="panel-body">
			<form class="form-horizontal" name="shareForm" novalidate="novalidate" data-ng-submit="submit()">
				
				<div class="form-group">
					<!-- title -->
					<label class="col-sm-2 control-label" for="title">제목 :</label>
					<div class="col-sm-8">
					<input id="title"
						   name="title"
						   type="text"
						   class="form-control"
						   required="required"
						   data-ng-maxlength="15"
					/>
					</div>
					<div  data-ng-show="shareForm.title.$dirty">
						   <div class="alert alert-warning" data-ng-show="shareForm.title.$error.required">필수 입력 항목입니다.</div>
						   <div class="alert alert-warning" data-ng-show="shareForm.title.$error.maxlength">15자리까지 입력가능합니다.</div>
					   </div>
				</div>
				<div class="form-group">
					<!-- term -->
					<label class="col-sm-2 control-label" for="term">기간 :</label>
					<div class="col-sm-8">
					<input id="term"
						   name="term"
						   type="text"
						   class="form-control"
						   required="required"
						   data-ng-maxlength="15"
					/>
					</div>
					<div data-ng-show="shareForm.term.$dirty">
						   <div class="alert alert-warning" data-ng-show="shareForm.term.$error.required">필수 입력 항목입니다.</div>
					   </div>
				</div>
				<div class="form-group">
					<!-- number -->
					<label class="col-sm-2 control-label" for="number">인원 :</label>
					<div class="col-sm-8">
					<input id="number"
						   name="number"
						   type="number"
						   class="form-control"
						   required="required"
						   data-ng-maxlength="15"
					/>
					</div>
					<div data-ng-show="shareForm.number.$dirty">
						   <div class="alert alert-warning" data-ng-show="shareForm.number.$error.required">필수 입력 항목입니다.</div>
					   </div>
				</div>
				
				<div class="form-group">
					<!-- cost -->
					<label class="col-sm-2 control-label" for="cost">비용 :</label>
					<div class="col-sm-8">
					<input id="cost"
						   name="cost"
						   type="text"
						   class="form-control"
						   required="required"
						   data-ng-maxlength="15"
						   placeholder="교통비:"
					/>
					<input id="cost"
						   name="cost"
						   type="text"
						   class="form-control"
						   required="required"
						   data-ng-maxlength="15"
						   placeholder="숙박비:"
					/>
					<input id="cost"
						   name="cost"
						   type="text"
						   class="form-control"
						   required="required"
						   data-ng-maxlength="15"
						   placeholder="식비:"
					/>
					<input id="cost"
						   name="cost"
						   type="text"
						   class="form-control"
						   required="required"
						   data-ng-maxlength="15"
						   placeholder="Total:"
					/>
					</div>
					<div data-ng-show="shareForm.cost.$dirty">
						   <div class="alert alert-warning" data-ng-show="shareForm.cost.$error.required">필수 입력 항목입니다.</div>
					   </div>
					</div>
					
					
					<div class="form-group">
						<!-- content -->
						<label class="col-sm-2 control-label" for="comment">내용 :</label>
						<div class="col-sm-8">
							<textarea class="form-control" rows="5" id="comment"></textarea>
						</div>
					</div>
					
					<div class="form-group">
						<!-- picture -->
						<label class="col-sm-2 control-label" for="picture">사진 :</label>
						<div class="col-sm-8">
							<textarea class="form-control" rows="5" id="picture"></textarea>
						</div>
					</div>
					
					<div class="form-group">
						<!-- map -->
						<label class="col-sm-2 control-label" for="map">경로 :</label>
						<div class="col-sm-8">
							<textarea  data-ng-map data-center="37.8, 127.03" class="form-control" rows="5" id="map"></textarea>
						</div>
					</div>
					
					
						<!-- Submit -->
						<div class="form-group" align="center">
						<input type="submit" 
							   value="확인"
							   class="btn btn-primary"
							   data-ng-disabled="cityForm.$invalid"/>
						<input type="submit" 
							   value="취소"
							   class="btn btn-danger"
							   data-ng-disabled="cityForm.$invalid"/>
						</div>
					
				</form>
			</div>
		</div>
	</div>







</div>

</body>
</html>