<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" session="false" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<meta charset="UTF-8">
<title>membermodify.jsp</title>
<style>
  .full button span {
    background-color: limegreen;
    border-radius: 32px;
    color: black;
  }
  .partially button span {
    background-color: orange;
    border-radius: 32px;
    color: black;
  }
</style>
</head>

<<<<<<< HEAD
<a class="btn btn-primary" href="#/memberList">목록</a>
=======
<body class="container">
>>>>>>> 190b08a3af0f2306860d394baf0431f2e6ca81d2
<div class="row">
<div class="col-sm-6 col-sm-offset-3">
	<div class="panel panel-default">
<<<<<<< HEAD
		<div class="panel-heading">회원 정보 수정</div>
		<div class="panel-body">
		<form name="memberForm" novalidate="novalidate" data-ng-submit="submit()">
			<!-- ID -->
			<div class="form-group">
				<label for="id">ID : </label>
				<input id="id"
					   name="id"
					   type="text" 
					   class="form-control"
					   data-ng-model="member.id"
					   readonly="readonly"
					   />
			</div>
			<!-- Password -->
			<div class="form-group">
				<label for="password">PASSWORD : </label>
				<input id="password"
					   name="password"
					   type="text"
					   class="form-control"
					   required="required"
					   data-ng-model="member.password"
					   data-ng-maxlength="12"
					   />
				<div data-ng-show="memberForm.password.$dirty">
					<div class="alert alert-warning" data-ng-show="memberForm.password.$error.required">필수 입력 항목입니다.</div>
					<div class="alert alert-warning" data-ng-show="memberForm.password.$error.maxlength">12자리까지 입력가능합니다.</div>
				</div>
			</div>
			<!-- Name -->
			<div class="form-group">
				<label for="name">Name : </label>
				<input id="name"
					   name="name"
					   type="text" 
					   class="form-control"
					   required="required"
					   data-ng-model="member.name"
					   data-ng-maxlength="10"
					   />
				<div>memberForm.name.$invalid = {{memberForm.name.$invalid}}</div>
				<div>memberForm.name.$error.required = {{memberForm.name.$error.required}}</div>
				<div>memberForm.name.$error.maxlength = {{memberForm.name.$error.maxlength}}</div>
				<div data-ng-show="memberForm.name.$dirty">
					<div class="alert alert-warning" data-ng-show="memberForm.name.$error.required">필수 입력 항목입니다.</div>
					<div class="alert alert-warning" data-ng-show="memberForm.name.$error.maxlength">10자리까지 입력가능합니다.</div>
=======
		<div class="panel-heading">회원 가입</div>
		<pre>{{member}}</pre>
		<div class="panel-body">
        <form name="modifyForm" novalidate="novalidate" data-ng-submit="submit()">
         <!-- 로그인정보   -->
            <div class="form-group">
               <label for="id">아이디:</label> 
               <input type="text"
               		  id="id"
                      name="id"    
                      class="form-control" 
                      placeholder="사용할 ID를 입력하세요"
                      required="required"
                      readonly="readonly"
                      data-ng-minlength="4"
                      data-ng-maxlength="12"
                      data-ng-model="member.id"/>
            </div>
            
             
            <div class="form-group">
               <label for="password">비밀번호:</label> 
               <input type="password"
                      name="password"
                      class="form-control" 
                      id="password"
                      placeholder="비밀번호를 입력하세요"
                      data-ng-minlength="4"
                      data-ng-maxlength="12"
                      required="required"
                      data-ng-model="member.password"/>
              	<div data-ng-show="modifyForm.password.$dirty">
					<div class="alert alert-warning" data-ng-show="modifyForm.password.$error.required">필수 입력 항목입니다.</div>
					<div class="alert alert-warning" data-ng-show="modifyForm.password.$error.minlength">최소 4자이상 입력가능합니다.</div>
					<div class="alert alert-warning" data-ng-show="modifyForm.password.$error.maxlength">최대 12자까지 입력가능합니다.</div>
>>>>>>> 190b08a3af0f2306860d394baf0431f2e6ca81d2
				</div>
            </div>
         
         	<!-- 개인정보 -->
            <div class="form-group">
               <label for="name">이름:</label> 
               <input type="text"   
                     name="name"
                     class="form-control" 
                     id="name" 
                     placeholder="이름"
                     required="required"
                     data-ng-model="member.name"/>
                     <div data-ng-show="modifyForm.name.$dirty">
						<div class="alert alert-warning" data-ng-show="modifyForm.name.$error.required">필수 입력 항목입니다.</div>
					 </div>
            </div>
            
            <div class="form-group">
               <label for="birthday">생년월일:</label> 
               <div>
              		<input  type="text"
              				id="birthday"
              				name="birthday"
              				class="form-control" 
              				uib-datepicker-popup 
              				data-ng-model="member.birthday"
              				is-open="status.opened" 
              				max-date="maxDate"
              				datepicker-options="dateOptions" 
              				date-disabled="disabled(date, mode)" 
              				ng-required="true" 
              				close-text="Close"
              				/>
              		<span class="input-group-btn">
                		<button type="button" class="btn btn-default" ng-click="open($event)"><i class="glyphicon glyphicon-calendar"></i></button>
              		</span>
       			</div>
            </div>
         
            <div class="form-group">
               <label for="adsSystem">주소</label> <p>
	               <div align="right">
	                  <input type="button"
	                        class="btn btn-primary"
	                        data-ng-click="adsSystem()" 
	                        required="required"
	                        value="우편번호 찾기"/>
	                         <div data-ng-show="modifyForm.birthday.$dirty">
								<div class="alert alert-warning" data-ng-show="modifyForm.birthday.$error.required">필수 입력 항목입니다.</div>
							 </div>
	               </div>
			</div>
			<div class="form-group">
               <label for="addressNum">우편번호:</label> 
               <input type="text"
                      name="addressNum"
                      class="form-control"
                      id="addressNum"
                      required="required"
                      placeholder="우편번호"
                      data-ng-model="member.addressNum"
                      />
                      <div data-ng-show="modifyForm.addressNum.$dirty">
						 <div class="alert alert-warning" data-ng-show="modifyForm.addressNum.$error.required">필수 입력 항목입니다.</div>
					  </div>
                     <br>
                     
               <label for="address">도로명 주소:</label> 
               <input type="text"
                      name="address"
                      class="form-control"
                      id="address"
                      required="required"
                      placeholder="도로명주소"
                      data-ng-model="member.address"
                      />
                      <div data-ng-show="modifyForm.address.$dirty">
						 <div class="alert alert-warning" data-ng-show="modifyForm.address.$error.required">필수 입력 항목입니다.</div>
					  </div>
            </div>
            
            <div class="form-group">
               <label for="tel">연락처:</label> 
               <input type="text"
                     name="tel"
                     class="form-control" 
                     id="tel" 
                     placeholder=" ex) 010-1234-1234 or 02-1234-1234"
                     pattern="\d{2,3}-\d{3,4}-\d{4}"
                     required="required"
                     data-ng-model="member.tel"/>
                     <div data-ng-show="modifyForm.tel.$dirty">
						<div class="alert alert-warning" data-ng-show="modifyForm.tel.$error.required">필수 입력 항목입니다.</div>
					 	<div class="alert alert-warning" data-ng-show="modifyForm.tel.$error.pattern">주어진 형식대로 입력하세요. ex) 010-1234-1234 or 02-1234-1234</div>
					 </div>
            </div>
         	<div class="form-group" align="right">
            <input type="submit"
                   class="btn btn-success"
                   value="완료"
                   data-ng-disabled="modifyForm.$invalid"/>
			</div>
		</form>
</div>
</div>
</div>
</div>
</body>
</html>