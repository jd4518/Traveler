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
<body data-ng-controller="mainController" class="container">
<h1><a href="" class="btn btn-primary">{{title}}</a></h1>

<div class="table-responsive">
	<ul class="pagination">
		<li><a href="" data-ng-click="prevClick(paging.firstPage - 1)">Prev</a></li>
		<li data-ng-repeat="recommand in recommandLists">
			<a href="" data-ng-click="pageClick(paging.firstPage + $index)">{{paging.firstPage + $index}}</a>
		</li>
		<li><a href="" data-ng-click="prevClick(paging.lastPage + 1)">Next</a></li>
	</ul>

	<table class="table table-striped table-hover">
		<thead>
			<tr><td><a href="#/append" class="btn btn-primary">Append</a></td></tr>
			<tr><th colspan="8">
<!-- 					<uib-pagination total-items="paging.totalItem" style="width:800px;"  -->
<!-- 						ng-model="pageNo" -->
<!-- 						max-size="10" -->
<!-- 						ng-change="selectPage()" -->
<!-- 						boundary-links="true"> -->
<!-- 					</uib-pagination> -->
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
				<th>CountryCode</th>
				<th>District</th>
				<th>Population</th>
				<th>수정</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
			<tr data-ng-repeat="recommand in recommandLists">
				<td>{{recommand.listNo}}</td>
				<td>{{recommand.title}}</td>
				<td>{{recommand.area}}</td>
				<td>{{recommand.name}}</td>
				<td><a href="#" class="btn btn-success">Edit...</a></td>
				<td><a href="#" class="btn btn-info">Delete...</a></td>
			</tr>
		</tbody>
	</table>
</div>

<hr>	
<div class="form-group">
<textarea rows="20" class="form-control">
	{{recommandLists}}
	{{paging}}
</textarea>
</div>

</body>
</html>