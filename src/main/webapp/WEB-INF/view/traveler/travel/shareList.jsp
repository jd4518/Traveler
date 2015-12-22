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

	<ul class="pagination">
		<li><a href="" data-ng-click="prevClick(paging.firstPage - 1)">Prev</a></li>
		<li data-ng-repeat="share in shares">
			<a href="" data-ng-click="pageClick(paging.firstPage + $index)">{{paging.firstPage + $index}}</a>
		</li>
		<li><a href="" data-ng-click="prevClick(paging.lastPage + 1)">Next</a></li>
	</ul>
	
	<table class="table table-striped table-hover">
		<thead>
			<tr><td><a href="#/shareInsert" class="btn btn-primary">Append</a></td></tr>
			<tr><th colspan="8">
				<div data-uib-pagination 
					 data-total-items="paging.totalItem" style="width:800px;" 
					 data-ng-model="pageNo"
					 data-max-size="10"
					 data-ng-change="selectPage()"
					 data-boundary-links="true">
				</div>
				</th>
			</tr>
			<tr>
				<th>No</th>
				<th>ID</th>
				<th>Name</th>
				<th>Title</th>
				<th>인원</th>
				<th>비용</th>
				<th>수정</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
			<tr data-ng-repeat="share in shares">
				<td>{{$index + 1}}</td>
				<td><a href="#/detail/{{share.id}}">{{share.id}}</a></td>
				<td>{{share.name}}</td>
				<td>{{share.title}}</td>
				<td>{{share.number}}</td>
				<td>{{share.cost}}</td>
				<td><a href="{{share.id}}" class="btn btn-success">Edit...</a></td>
				<td><a href="{{share.id}}" class="btn btn-info">Delete...</a></td>
			</tr>
		</tbody>
	</table>
</div>

<hr>	
<div class="form-group">
<textarea rows="20" class="form-control">
	{{shares}}
	{{paging}}
</textarea>
</div>
</body>
</html>




