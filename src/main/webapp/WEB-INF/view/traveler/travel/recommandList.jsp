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
</head>
<body class="container">
<h1>추천 게시판</h1>
<div class="table-responsive">
	<table class="table table-striped table-hover">
		<thead>
			<tr><td><a href="#/recommandInsert" class="btn btn-primary">글쓰기</a></td></tr>
			<tr>
				<th>No</th>
				<th>글 제목</th>
				<th>지역</th>
				<th>작성자</th>
				<th>수정</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
			<tr data-ng-repeat="recommand in recommandLists">
				<td >{{paging.itemNo-($index)}}</td>
				<td><a href="#/recommandDetail/{{recommand.listNo}}">{{recommand.title}}</a></td>
				<td>{{recommand.area}}</td>
				<td>{{recommand.name}}</td>
				<td><a href="#/recommandModify/{{recommand.listNo}}" class="btn btn-success">Edit...</a></td>
				<td><a href="#/recommandDelete/{{recommand.listNo}}" class="btn btn-info">Delete...</a></td>
			</tr>
				<tr><td colspan="8">
						<div data-uib-pagination 
							data-total-items="paging.totalItem" style="width:800px;" 
							data-ng-model="pageNo"
							data-max-size="10"
							data-ng-change="selectPage()"
							data-boundary-links="true">
						</div>
				</td>
			</tr>
		</tbody>
	</table>
</div>
<hr>	

</body>
</html>