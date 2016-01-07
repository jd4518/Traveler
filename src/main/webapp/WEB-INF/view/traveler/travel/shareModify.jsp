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
		<div class="panel-heading">정보 수정</div>
		<pre>{{share}}</pre>
		<div class="panel-body">
			<form class="form-horizontal" name="shareForm" novalidate="novalidate" data-ng-submit="submit()"
					enctype="multipart/form-data">
			<!-- ID -->
			<div class="form-group">
				<label  class="col-sm-2 control-label"  for="id">ID : </label>
				<div class="col-sm-8">
					<input id="id"
					   name="id"
					   type="text" 
					   class="form-control"
					   data-ng-model="share.id"
					   disabled="disabled"	
					   />
				 </div>
			</div>
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
					<input id="transCost" name="transCost" type="text" class="form-control"
									required="required" data-ng-maxlength="15"
									data-ng-model="share.transCost" placeholder="교통비:" /> 
									
								<input id="stayCost" name="stayCost" type="text" class="form-control"
									required="required" data-ng-maxlength="15"
									data-ng-model="share.stayCost" placeholder="숙박비:" /> 
									
								<input id="eatCost" name="eatCost" type="text" class="form-control"
									required="required" data-ng-maxlength="15"
									data-ng-model="share.eatCost" placeholder="식비:" />
								
								<input id="totalCost" name="totalCost" type="text" class="form-control"
									required="required" data-ng-maxlength="15"
									data-ng-model="share.totalCost" placeholder="총 비용:" />
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
							id="content" name="content"  data-ng-model="share.content"></textarea>
						</div>
					</div>
					
					<div class="form-group">
						<!-- picture -->
						<label class="col-sm-2 control-label" for="picture">사진등록:</label>
						<div class="col-sm-8">
						<input id="picture"
						   name="picture"
						   type="file"
						   required="required"
						   data-ng-model="share.picture"
						   data-ng-maxlength="15"
						/>
						<input type="button"
									class="btn btn-success" data-ng-click="toggle()" value="올리기" />
						</div>
					</div>
					
					<div class="form-group">
						<!-- map -->
						<label class="col-sm-2 control-label" for="map">경로 :</label>
						<div class="col-sm-8">
							<textarea data-ng-model="share.map" class="form-control" rows="5" id="map"></textarea>
						</div>
					</div>
					
						<!-- Submit -->
						<div class="form-group" align="center">
						<input type="submit" 
							   value="확인"
							   class="btn btn-primary"
							   />
						<input type="submit" 
							   value="취소"
							   class="btn btn-danger"
							   />
						</div>
				</form>
			</div>
		</div>
	</div>
</div>


</body>
</html>