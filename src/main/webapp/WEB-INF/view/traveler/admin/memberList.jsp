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
<%@ include file="/common.jspf" %>
<title>memberList.jsp</title>
<script type="text/javascript">
	var deps = ['ngRoute',
	            'ngAnimate',
	            'ngTouch',
	            'angular-loading-bar'
	           ];

	var app = angular.module("travelerApp", deps);
	
	app.controller("mainController", function($scope, $http) {
		
		console.log("mainController...");
		
	});

</script>

<style type="text/css">
	th{
		text-align: center;
		background-color: #5cb85c;
		color: white;
	}
	td{
		text-align: center;
	}
</style>

</head>
<body>
<div id="page-wrapper">
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
            <div class="panel-heading">
				회원 목록 - 관리자 전용
            </div>
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
                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                        <thead>
                            <tr class="center">
                                <th class="col-sm-1">회원수</th>
                                <th class="col-sm-1">이름</th>
                                <th class="col-sm-1">아이디</th>
                                <th class="col-sm-1">비밀번호</th>
                                <th class="col-sm-1">생년월일</th>
                                <th class="col-sm-5">주소</th>
                                <th class="col-sm-2">전화번호</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>${index+1}</td>
                                <td>홍길동</td>
                                <td>gildong123</td>
                                <td>123456789</td>
                                <td>2015-12-15</td>
                                <td>서울 강남 중앙정보처리학원 에코스빌딩 6층 1실습실</td>
                                <td>010-0000-0000</td>
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