<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false" trimDirectiveWhitespaces="true"%>
<%@page import="java.util.Date"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>  

<!DOCTYPE html>
<html lang="ko" data-ng-app="travelerApp">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

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

<div class="table-responsive">
	<div>
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
				<div>
					<a href="#/memberappend" class="center">
						<button class="btn btn-success" type="button">
					      <i class='fa fa-user-plus fa-4x'></i>
					    </button>
					</a>
				</div>
					<div>
						<table class="table table-striped table-bordered table-hover">
							<thead>
								<tr class="center">
									<th class="col-sm-1">회원번호</th>
									<th class="col-sm-1">이름</th>
									<th class="col-sm-1">아이디</th>
									<th class="col-sm-1">생년월일</th>
									<th class="col-sm-3">주소</th>
									<th class="col-sm-1">우편번호</th>
									<th class="col-sm-1">전화번호</th>
									<th class="col-sm-1">가입 날짜</th>
									<th class="col-sm-1">수정</th>
									<th class="col-sm-1">삭제</th>
								</tr>
							</thead>
							<tbody>
								<tr data-ng-repeat="member in members" align="center">
									<td>{{member.num}}</td>
									<td>{{member.name}}</td>
									<td>{{member.id}}</td>
									<td>{{member.birthday}}</td>
									<td>{{member.address}}</td>
									<td>{{member.addressNum}}</td>
									<td>{{member.tel}}</td>
									<td>{{member.register_date}}</td>
									<td>
										<a href="#/membermodify/{{member.num}}" class="center">
											<button class="btn btn-info" type="button">
										      <i class='fa fa-pencil fa-lg'></i>
										    </button>
										</a>
									</td>
									<td>
										<a href="#/memberdelete/{{member.num}}" class="center">
											<button class="btn btn-danger" type="button">
										      <i class='fa fa-trash fa-lg'></i>
										    </button>
										</a>
									</td>
								</tr>
							</tbody>
							<tr align="center"><td colspan="10">
								<uib-pagination 
										data-total-items="paging.totalItem"
										data-ng-model="pageNo"
										data-max-size="10"
										data-ng-change="selectPage()"
										data-boundary-links="true">
								</uib-pagination>
								</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

</body>
</html>