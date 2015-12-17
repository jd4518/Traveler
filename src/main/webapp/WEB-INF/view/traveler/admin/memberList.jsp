<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html lang="ko">
<head>

<%@ include file="/WEB-INF/view/common.jspf" %>

<style type="text/css">
th {
	text-align: center;
	background-color: #5cb85c;
	color: white;
}

td {
	text-align: center;
}
</style>

</head>
<body class="container">

	<div  class="table-responsive">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">회원 목록</h1>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">회원 목록 - 관리자 전용</div>
					<hr>
					<div class="col-md-offset-8 input-group">
						<input type="text" class="form-control"> 
						<span class="input-group-btn">
							<button class="btn btn-success" type="button">
								<i class="fa fa-search"></i>
							</button>
						</span>
					</div>
					<!-- /.panel-heading -->
					<div class="panel-body">
						<div class="dataTable_wrapper">
							<table class="table table-striped table-bordered table-hover">
								<thead>
									<tr class="center">
										<th class="col-sm-1">회원수</th>
										<th class="col-sm-1">이름</th>
										<th class="col-sm-1">아이디</th>
										<th class="col-sm-1">비밀번호</th>
										<th class="col-sm-1">생년월일</th>
										<th class="col-sm-4">주소</th>
										<th class="col-sm-2">전화번호</th>
										<th class="col-sm-1">가입 날짜</th>
									</tr>
								</thead>
								<tbody>
									<tr data-ng-repeat="member in members">
										<td>{{$index+1}}</td>
										<td>{{member.name}}</td>
										<td>{{member.id}}</td>
										<td>{{member.passwrod}}</td>
										<td>{{member.birthday}}</td>
										<td>{{member.address}}</td>
										<td>{{member.tel}}</td>
										<td>{{member.register_date}}</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>