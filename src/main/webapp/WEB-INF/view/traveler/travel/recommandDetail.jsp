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
<form class="form-horizontal" novalidate="novalidate" name="recommandForm" data-ng-submit="submit()">
  <fieldset>
    <legend><h1>추천 게시판</h1></legend>
    <div class="form-group">
      <label for="title" class="col-lg-2 control-label">제목</label>
      <div class="col-lg-10">
        	   {{recommand.title}}
      </div>
    </div>
    <div class="form-group">
      <label for="name" class="col-lg-2 control-label">작성자</label>
      <div class="col-lg-10">
        	   {{recommand.name}}
        	   </div>
        	   </div>
    <div class="form-group">
       <label for="name" class="col-lg-2 control-label">장소</label>
        <div class="col-lg-10"  data-ng-model="recommand.area">
        		{{recommand.area}}
        </div>
    </div>
    <div class="form-group">
      <label for="content" class="col-lg-2 control-label">내용</label>
      <div class="col-lg-10">
      <img alt="" src="../../img/{{recommand.picture}}"><BR>
      	{{recommand.content}}
      </div>
    </div>
<!--     <div class="file-input file-input-ajax-new"> -->
<!--     <input id="input-dim-1" name="inputdim1[]" type="file" multiple class="file-loading" accept="image/*"> -->
<!--     </div> -->
     <div class="form-group">
      <div class="col-lg-10 col-lg-offset-2">
        <button type="button" class="btn btn-default" data-ng-click="cancel()">Cancel</button>
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