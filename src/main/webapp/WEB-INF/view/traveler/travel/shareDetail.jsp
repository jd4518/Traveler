<%@page import="com.traveler.dao.ShareDao"%>
<%@page import="com.traveler.model.Share"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body class="container">
<a class="btn btn-primary" href="#/shareList">list...</a>
<div class="row">
	<div class="col-sm-8 col-sm-offset-3">
		<div class="panel panel-default">
		<div class="panel-heading"><b>상세 정보</b></div>
		<pre>{{share}}</pre>
		<div class="panel-body">
			<form class="form-horizontal" name="shareForm" novalidate="novalidate">
			<!-- Name -->
			<div class="form-group">
				<label class="col-sm-2 control-label" for="name">작성자 : </label>
				<div class="col-sm-8">
				<input id="name"
					   name="name"
					   type="text" 
					   class="form-control"
					   required="required"
					   data-ng-model="share.name"	
					   data-ng-maxlength="35"
					   disabled="disabled"		
					   />	<!-- 사용자의 입력이 발생하면 share.name -->
					   <div data-ng-show="shareForm.name.$dirty">
						   <div class="alert alert-warning" data-ng-show="shareForm.name.$error.required">필수 입력 항목입니다.</div>
						   <div class="alert alert-warning" data-ng-show="shareForm.name.$error.maxlength">35자리까지 입력가능합니다.</div>
					   </div>
					 </div>  
				</div>
				
				<!-- title -->
				<div class="form-group">
					<label class="col-sm-2 control-label" for="title">제목 :</label>
					<div class="col-sm-8">
					<input id="title"
						   name="title"
						   type="text"
						   class="form-control"
						   required="required"
						   data-ng-model="share.title"
						   data-ng-maxlength="15"
						   disabled="disabled"
					/>
					</div>
					<div  data-ng-show="shareForm.title.$dirty">
						   <div class="alert alert-warning" data-ng-show="shareForm.title.$error.required">필수 입력 항목입니다.</div>
						   <div class="alert alert-warning" data-ng-show="shareForm.title.$error.maxlength">15자리까지 입력가능합니다.</div>
					   </div>
				</div>
				<div class="form-group">
					<!-- term -->
					<label class="col-sm-2 control-label" for="term">기간 :</label>
					<div class="col-sm-8">
					<input id="term"
						   name="term"
						   type="text"
						   class="form-control"
						   required="required"
						   data-ng-model="share.term"
						   data-ng-maxlength="15"
						   disabled="disabled"
					/>
					</div>
					<div data-ng-show="shareForm.term.$dirty">
						   <div class="alert alert-warning" data-ng-show="shareForm.term.$error.required">필수 입력 항목입니다.</div>
					   </div>
				</div>
				<div class="form-group">
					<!-- number -->
					<label class="col-sm-2 control-label" for="number">인원 :</label>
					<div class="col-sm-8">
					<input id="number"
						   name="number"
						   type="number"
						   class="form-control"
						   required="required"
						   data-ng-model="share.number"
						   data-ng-maxlength="15"
						   disabled="disabled"
					/>
					</div>
					<div data-ng-show="shareForm.number.$dirty">
						   <div class="alert alert-warning" data-ng-show="shareForm.number.$error.required">필수 입력 항목입니다.</div>
					   </div>
				</div>
				
				<div class="form-group">
					<!-- cost -->
					<label class="col-sm-2 control-label" for="cost">비용 :</label>
					<div class="col-sm-8">
					<textarea class="form-control" rows="1" id="cost" 
							name="cost" data-ng-model="share.cost"
							disabled="disabled"
							>
					</textarea> 
								 
					</div>
					<div data-ng-show="shareForm.cost.$dirty">
						   <div class="alert alert-warning" data-ng-show="shareForm.cost.$error.required">필수 입력 항목입니다.</div>
					   </div>
					</div>
					
					<div class="form-group">
						<!-- content -->
						<label class="col-sm-2 control-label" for="content">내용 :</label>
						<div class="col-sm-8">
							<textarea class="form-control" rows="5" 
							id="content" name="content"  data-ng-model="share.content"
							disabled="disabled"></textarea>
						</div>
					</div>
					
					<div class="form-group">
						<!-- picture -->
						<label class="col-sm-2 control-label" for="picture">여행사진:</label>
						<div class="col-sm-8">
						<img alt="" src="../img/{{share.picture}}" id="picture"  name="picture" 
							   width="200" height="200">
						</div>
					</div>
					
					<div class="form-group">
						<!-- map -->
						<label class="col-sm-2 control-label" for="map">경로 :</label>
						<div class="col-sm-8">
							<textarea data-ng-model="share.map" class="form-control" 
							rows="5" id="map" disabled="disabled"></textarea>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

<div class="row">
<div class="col-sm-8 col-sm-offset-3">
<div class="panel panel-default">
		<div class="panel-heading"><b>댓글</b></div>
		<div class="panel-body">
		<form class="form-horizontal" name="replyForm" novalidate="novalidate" data-ng-submit="submit()">
			<div class="form-group">
				<label class="col-sm-2 control-label" for="reply"></label>
				<div class="col-sm-8" align="right">
							<textarea class="form-control" rows="5" 
							id="reply" name="reply"
							placeholder="댓글등록"></textarea>
							<input type="button"
							class="btn btn-info" value="등록" />
				</div>  
			</div>	
		</form>
		<table class="table table-striped table-hover">
			<thead>
				<tr>
					<th>
						댓글리스트
					</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>
					</td>
				</tr>			
			</tbody>		
		</table>
		</div>
</div>
</div>
</div>


</body>
</html>