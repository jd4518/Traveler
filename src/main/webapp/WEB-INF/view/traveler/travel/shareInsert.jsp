<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>   
<!DOCTYPE html>
<html lang="ko" data-ng-app="travelerApp">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
<title>shareInsert.jsp</title>
</head>
<body  data-ng-controller="shareController"  class="container">
<a class="btn btn-primary" href="#/shareList">list...</a>
<hr>
<div class="row">
	<div class="col-sm-11 col-sm-offset-1">
		<div class="panel panel-default">
		<div class="panel-heading"><b>정보 입력</b></div>
		<div class="panel-body">
					<form class="form-horizontal" name="shareForm" id="shareForm"
						novalidate="novalidate" data-ng-submit="submit()">
						<!-- Name -->
						<div class="form-group">
							<label class="col-sm-2 control-label" for="name">이름 : </label>
							<div class="col-sm-8">
								<input id="name" name="name" type="text" class="form-control"
									required="required" data-ng-model="member.name"
									disabled="disabled"
									data-ng-maxlength="35" />
								<!-- 사용자의 입력이 발생하면 share.name -->
								<div data-ng-show="shareForm.name.$dirty">
									<div class="alert alert-warning"
										data-ng-show="shareForm.name.$error.required">필수 입력
										항목입니다.</div>
									<div class="alert alert-warning"
										data-ng-show="shareForm.name.$error.maxlength">35자리까지
										입력가능합니다.</div>
								</div>
							</div>
						</div>

						<!-- title -->
						<div class="form-group">
							<label class="col-sm-2 control-label" for="title">제목 :</label>
							<div class="col-sm-8">
								<input id="title" name="title" type="text" class="form-control"
									required="required" data-ng-model="share.title"
									data-ng-maxlength="15" />
							</div>
							<div data-ng-show="shareForm.title.$dirty">
								<div class="alert alert-warning"
									data-ng-show="shareForm.title.$error.required">필수 입력
									항목입니다.</div>
								<div class="alert alert-warning"
									data-ng-show="shareForm.title.$error.maxlength">15자리까지
									입력가능합니다.</div>
							</div>
						</div>
						<div class="form-group">
							<!-- term -->
							<label class="col-sm-2 control-label" for="term">기간 :</label>
							<div class="col-sm-8">
								<input id="term" name="term" type="text" class="form-control"
									required="required" data-ng-model="share.term"
									data-ng-maxlength="15" />
							</div>
							<div data-ng-show="shareForm.term.$dirty">
								<div class="alert alert-warning"
									data-ng-show="shareForm.term.$error.required">필수 입력
									항목입니다.</div>
							</div>
						</div>
						<div class="form-group">
							<!-- number -->
							<label class="col-sm-2 control-label" for="number">인원 :</label>
							<div class="col-sm-8">
								<input id="number" name="number" type="number"
									class="form-control" required="required"
									data-ng-model="share.number" data-ng-maxlength="15" />
							</div>
							<div data-ng-show="shareForm.number.$dirty">
								<div class="alert alert-warning"
									data-ng-show="shareForm.number.$error.required">필수 입력
									항목입니다.</div>
							</div>
						</div>

						<div class="form-group">
							<!-- cost -->
							<label class="col-sm-2 control-label" for="cost">비용 :</label>
							<div class="col-sm-8">
								교통비
								<input id="transCost" name="transCost" type="number" class="form-control"
									required="required" data-ng-maxlength="15"
									data-ng-model="share.transCost" placeholder="교통비:" /> 
								숙박비	
								<input id="stayCost" name="stayCost" type="number" class="form-control"
									required="required" data-ng-maxlength="15"
									data-ng-model="share.stayCost" placeholder="숙박비:" /> 
								식비	
								<input id="eatCost" name="eatCost" type="number" class="form-control"
									required="required" data-ng-maxlength="15"
									data-ng-model="share.eatCost" placeholder="식비:" />
								
								Total : {{share.transCost+share.stayCost+share.eatCost}}원
							</div>
						</div>
						<div data-ng-show="shareForm.cost.$dirty">
							<div class="alert alert-warning"
								data-ng-show="shareForm.cost.$error.required">필수 입력 항목입니다.</div>
						</div>
						
						
						<div class="form-group">
							<!-- content -->
							<label class="col-sm-2 control-label" for="content">내용 :</label>
							<div class="col-sm-8">
								<textarea class="form-control" rows="5" id="content" name="content"
									data-ng-model="share.content"></textarea>
							</div>
						</div>
						<div data-ng-show="shareForm.content.$dirty">
							<div class="alert alert-warning"
								data-ng-show="shareForm.content.$error.required">필수 입력 항목입니다.</div>
						</div>
						
						<div class="form-group">
							<!-- picture -->
							<label class="col-sm-2 control-label" for="picture">사진등록:</label>
							<div class="col-sm-8">
							<img alt="" src="${pageContext.request.contextPath}/img/{{share.picture}}" width="150" height="150">
								<input id="picture" name="picture" type="file"
									required="required" data-ng-model="share.picture"
									data-ng-file-select="onFileSelect($files)"
									multiple accept="imgage/*"
									data-ng-maxlength="15" /> <input type="button"
									class="btn btn-success" data-ng-click="toggle()" value="올리기" />
							</div>
						</div>
						
						<div data-ng-show="shareForm.picture.$dirty">
							<div class="alert alert-warning"
								data-ng-show="shareForm.picture.$error.required">필수 등록 항목입니다.</div>
						</div>

						<div class="form-group">
							<!-- map -->
							<label class="col-sm-2 control-label" for="map">경로 :</label>
							<div class="col-sm-8">
								<textarea data-ng-model="share.map" class="form-control"
									rows="5" id="map"
									placeholder="ex) 지역:서울 >> 경복궁  >> 인사동 >> 광장시장 >> 낙성대 >> 명동 "></textarea>
							</div>
						</div>
						
						<div data-ng-show="shareForm.map.$dirty">
							<div class="alert alert-warning"
								data-ng-show="shareForm.map.$error.required">필수 입력 항목입니다.</div>
						</div>

						<!-- Submit -->
						<div class="form-group" align="center">
							<input type="submit" value="확인" class="btn btn-primary"
							data-ng-disabled="shareForm.$invalid" />
							<input type="submit" value="취소" class="btn btn-danger" 
							 data-ng-disabled="shareForm.$invalid"/>
						</div>
					</form>
				</div>
			</div>
	</div>
</div>

</body>
</html>