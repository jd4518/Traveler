<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html lang="ko">
<head>
</head>
<body class="container">
<div class="table-responsive">

	<table class="table table-striped table-hover">
		<thead>
			<tr><td><a href="#/shareInsert" class="btn btn-primary">게시글 등록</a></td></tr>
			<tr>
				<th>게시판번호</th>
				<th>ID</th>
				<th>작성자</th>
				<th>제목</th>
				<th>인원</th>
				<th>비용</th>
				<th>수정</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
			<tr data-ng-repeat="share in shares">
				<td>{{share.boardNum}}</td>
				<td>{{share.id}}</td>
				<td>{{share.name}}</td>
				<td><a href="#/shareDetail/{{share.boardNum}}">{{share.title}}</a></td>
				<td>{{share.number}}</td>
				<td>{{share.totalCost}}</td>
				<td><a href="#/shareModify/{{share.boardNum}}" class="btn btn-success">Edit...</a></td>
				<td><a href="#/shareDelete/{{share.boardNum}}" class="btn btn-info">Delete...</a></td>
			</tr>
			<tr><th colspan="8">
				<div 
					 data-uib-pagination 
					 data-total-items="paging.totalItem" style="width:800px;" 
					 data-ng-model="pageNo"
					 data-max-size="10"
					 data-ng-change="selectPage()"
					 data-boundary-links="true">
				</div>
				</th>
			</tr>
		</tbody>
	</table>
</div>

<hr>	
</div>
</body>
</html>




