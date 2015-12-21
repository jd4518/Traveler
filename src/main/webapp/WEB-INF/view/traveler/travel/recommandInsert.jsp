<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html class="ng-scope" lang="ko" data-ng-app="travelerApp">
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
		
		$('input:checkbox').on('click',function(){
			var $box = $(this);
				if($box.is(":checked")){
					var group = "input:checkbox[name='" + $box.attr("name") +"']";
						$(group).prop("checked",false);
						$box.prop("checked",true);
				}else{
					$box.prop("checked", false);
				}
			
		});
		
		$("#input-dim-1").fileinput({
		    uploadUrl: "/file-upload-batch/2",
		    allowedFileExtensions: ["jpg", "png", "gif"],
		    minImageWidth: 50,
		    minImageHeight: 50
		});
	});
	
</script>
</head>
<body data-ng-controller="recommandController" class="container">
<h1><a href="#" class="btn btn-primary">{{title}}</a></h1>
<form class="form-horizontal" name="recommandForm" data-ng-submit="submit()">
  <fieldset>
    <legend><h1>추천 게시판</h1></legend>
    <div class="form-group">
      <label for="title" class="col-lg-2 control-label">제목</label>
      <div class="col-lg-10">
        <input type="text" 
        	   class="form-control" 
        	   id="title" 
        	   name="title" 
        	   placeholder="Title"
        	   data-ng-model="recommand.title"
        	   >
      </div>
    </div>
    <div class="form-group">
      <label for="name" class="col-lg-2 control-label">작성자</label>
      <div class="col-lg-10">
        <input type="text"
        	   class="form-control"
        	   id="name" 
        	   placeholder="Writer"
        	   data-ng-model="recommand.name"
        	   >
        <div class="checkbox">
          <label>
          	<input type="checkbox" 
            	   name="area" 
            	   value="서울"
            	   data-ng-model="recommand.area"
            	   >서울
          </label>
          <label>
            <input type="checkbox" 
            	   name="area"
            	   value="경기"
            	   data-ng-model="recommand.area">
            	   경기
          </label>
          <label>
            <input type="checkbox" 
            	   name="area"
            	   value="강원"
            	   data-ng-model="recommand.area">
            	   강원
          </label>
          <label>
            <input type="checkbox" 
            	   name="area"
            	   value="충북"
            	   data-ng-model="recommand.area">
            	   충북
          </label>
          <label>
            <input type="checkbox" 
            	   name="area"
            	   value="충남"
            	   data-ng-model="recommand.area">
            	   충남
          </label>
          <label>
            <input type="checkbox" 
            	   name="area"
            	   value="전북"
            	   data-ng-model="recommand.area">
            	   전북
          </label>
          <label>
            <input type="checkbox" 
            	   name="area"
            	   value="전남"
            	   data-ng-model="recommand.area">
            	   전남
          </label>
          <label>
            <input type="checkbox" 
            	   name="area"
            	   value="경북"
            	   data-ng-model="recommand.area">
            	   	경북
          </label>
          <label>
            <input type="checkbox" 
            	   name="area"
            	   value="경남"
            	   data-ng-model="recommand.area">
            	   	경남
          </label>
          <label>
            <input type="checkbox" 
            	   name="area"
            	   value="제주도"
            	   data-ng-model="recommand.area">
            	   제주도
          </label>
        </div>
      </div>
    </div>
    <div class="form-group">
      <label for="content" class="col-lg-2 control-label">내용</label>
      <div class="col-lg-10">
        <textarea class="form-control" rows="20" id="content" name="content"></textarea>
        <span class="help-block">A longer block of help text that breaks onto a new line and may extend beyond one line.</span>
      </div>
    </div>
     <div class="form-group">
      <label for="picture" class="col-lg-2 control-label">사진</label>
      <div class="col-lg-10">
        <input type="file" 
        	   id="picture" 
        	   name="picture"
			   data-ng-model="recommand.picutre"
        	   >
      </div>
    </div>
<!--     <div class="file-input file-input-ajax-new"> -->
<!--     <input id="input-dim-1" name="inputdim1[]" type="file" multiple class="file-loading" accept="image/*"> -->
<!--     </div> -->
     <div class="form-group">
      <div class="col-lg-10 col-lg-offset-2">
        <button type="reset" class="btn btn-default">Cancel</button>
        <button type="submit"
        		class="btn btn-primary"
				value="확인"
			    data-ng-disabled="recommandForm.$invalid"
        >Submit</button>
        <div>recommandForm.$invalid = {{recommandForm.$invalid}}</div>
      </div>
    </div>
  </fieldset>
</form>

</body>
</html>