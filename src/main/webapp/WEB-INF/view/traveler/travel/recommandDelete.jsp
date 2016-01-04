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
<title>recommandModify.jsp</title>
</head>
<body class="container">
<h1><a href="#" class="btn btn-primary">{{title}}</a></h1>
	<h1>성공적으로 삭제 되었습니다.</h1>
	<button type="button" class="btn btn-default" data-ng-click="back()">리스트로 돌아가기</button>
</body>
</html>