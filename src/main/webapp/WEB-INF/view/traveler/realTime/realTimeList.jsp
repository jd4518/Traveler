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
</head>
<body class="container" data-ng-controller="realTimeListController">
<div class="table-responsive">

	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th>번호</th>
				<th>ID</th>
				<th>내용</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
			<tr data-ng-repeat="realTime in realTimes">
				<td>{{realTime.number}}</td>
				<td>{{member.id}}</td>
				<td>{{realTime.content}}</td>
				<td><a href="#/realTimeDelete/{{realTime.number}}" class="btn btn-info">Delete</a></td>
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
<div class="form-group">
<div class="panel panel-default">
<div class="panel-heading"><b>실시간 내용</b></div>
<div class="panel-body">
<form name="realTimeForm" novalidate="novalidate" data-ng-submit="submit()">
		<textarea rows="5" class="form-control" id="content" name="content" 
				data-ng-model="realTime.content"
				 required="required">
		</textarea>
		 <div data-ng-show="realTimeForm.content.$dirty">
		<div class="alert alert-warning" data-ng-show="realTimeForm.content.$error.required">필수 입력 항목입니다.</div>
		</div>
		<br>
		<b>현재시각</b>
		<textarea rows="1" class="form-control" id="reg_date" name="reg_date" 
		data-ng-model="realTime.reg_date">
		{{realTime.reg_date}}
		</textarea>
<br>
	<!-- Submit -->
	<div class="form-group" align="center">
		<input type="submit" value="등록" class="btn btn-primary"
		data-ng-show="loginstatus" 
		 data-ng-disabled="realTimeForm.$invalid"/>
	</div>
	
</form>
</div>
</div>
</div>
</body>
</html>




