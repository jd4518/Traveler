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
<form class="form-horizontal" novalidate="novalidate" name="commentForm" data-ng-submit="submit()">
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
    	<h1>댓글</h1>
	 <div class="form-group" data-ng-repeat="comment in recommand.comments">
	  <label class="col-lg-2 control-label">{{comment.id}}</label>
	  <div class="col-lg-10">
	  {{comment.content}}
	  </div>
	 </div>
	<div class="form-group">
	<label  class="col-lg-2 control-label">댓글입력</label>
	   <div  class="col-lg-7">
	   <textarea name="comment" cols='105' rows='5' data-ng-model="content.content" required>
	   </textarea>
	   <span style="color:red" data-ng-show="commentForm.comment.$dirty && commentForm.comment.$invalid">
		<span data-ng-show="commentForm.comment.$error.required">내용을 입력해주세요.</span>
		</span></div>
	   <div class="help-block with-errors"></div>
	   <div class="col-lg-2"><input name="button" type="button" data-ng-click="click()" class="btn btn-info"  value="입력"
	   data-ng-disabled="commentForm.comment.$invalid"> </div>
	</div>
     <div class="form-group">
      <div class="col-lg-10 col-lg-offset-2">
        <button type="button" class="btn btn-default" data-ng-click="cancel()">목록</button>
      </div>
    </div>
  </fieldset>
</form>
</body>
</html>