<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html class="ng-scope" lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
<%@ include file="/WEB-INF/view/common.jspf" %>
<title>recommandList.jsp</title>
</head>
<body class="container">
<h1><a href="#" class="btn btn-primary">{{title}}</a></h1>
<form class="form-horizontal" method="post" enctype="multipart/form-data" novalidate="novalidate" name="recommandForm" id="recommandFrom" data-ng-submit="submit()">
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
        	   name="name"
        	   data-ng-model="recommand.name"
        	   >
        <div class="checkbox"  data-ng-model="recommand.area">
          <label>
          	<input type="radio" 
            	   value="서울"
            	   name="area"
            	   id="area"
            	   data-ng-click="radio()"
            	   >서울
          </label>
          <label>
            <input type="radio" 
            	   value="경기"
            	   name="area"
            	   id="area"
            	   data-ng-click="radio()"
            	   >
            	   경기
          </label>
          <label>
            <input type="radio" 
            	   value="강원"
            	   name="area"
            	   id="area"
            	   data-ng-click="radio()"
            	   >
            	   강원
          </label>
          <label>
            <input type="radio" 
            	   value="충북"
            	   name="area"
            	   id="area"
            	   data-ng-click="radio()"
            	   >
            	   충북
          </label>
          <label>
            <input type="radio" 
            	   value="충남"
            	   name="area"
            	   id="area"
            	   data-ng-click="radio()"
            	   >
            	   충남
          </label>
          <label>
            <input type="radio" 
            	   value="전북"
            	   name="area"            	       	   
            	   id="area"
            	   data-ng-click="radio()"
            	   >
            	   전북
          </label>
          <label>
            <input type="radio" 
            	   value="전남"
            	   name="area"            	       	   
            	   id="area"
            	   data-ng-click="radio()"
            	   >
            	   전남
          </label>
          <label>
            <input type="radio" 
            	   value="경북"
            	   name="area"            	       	   
            	   id="area"
            	   data-ng-click="radio()"
            	               	   >
            	   	경북
          </label>
          <label>
            <input type="radio" 
            	   value="경남"
            	   name="area"
            	   id="area"
            	   data-ng-click="radio()"
            	   >
            	   	경남
          </label>
          <label>
            <input type="radio" 
            	   value="제주도"
            	   name="area"
            	   id="area"
            	   data-ng-click="radio()"
            	   >
            	   제주도
          </label>
        </div>
      </div>
    </div>
    <div class="form-group">
      <label for="content" class="col-lg-2 control-label">내용</label>
      <div class="col-lg-10">
        <textarea class="form-control" rows="20" id="content" name="content"  data-ng-model="recommand.content">
        <img src="${pageContext.request.contextPath}/image/${imageFile.id}">
        </textarea>
        <span class="help-block">A longer block of help text that breaks onto a new line and may extend beyond one line.</span>
      </div>
    </div>
     <div class="form-group">
      <label for="picture" class="col-lg-2 control-label">사진</label>
      <div class="file-input file-input-ajax-new">
        <input type="file" 
        	   multiple 
        	   class="file"
        	   name="imageFile"
        	   id="picture" 
        	   size="50"
        	   ><input type="submit" id="uploadbutton"  data-ng-click="toggle()" value="올리기">
      </div>
    </div>
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
<div>
<textarea rows="20" class="form-control">
	{{p}}
	recommand.area    =  {{recommand.area}}
	recommand.title   =  {{recommand.title}}
	recommand.name    =  {{recommand.name}}
	recommand.picture =  {{recommand.picture}}
	recommand.content =  {{recommand.content}}
</textarea>
</div>
</body>
</html>