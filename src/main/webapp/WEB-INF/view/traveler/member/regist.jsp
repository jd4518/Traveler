<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" session="false" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta name="description" content="">
<meta name="author" content="">
<meta charset="UTF-8">
<%@ include file="/WEB-INF/view/common.jspf" %>
<title>regist.jsp</title>

<<<<<<< HEAD
<c:url var="URL_POST_LIST_REGIST" 			value="/traveler/member/"/>
<c:url var="URL_POST_ITEM_REGIST" 			value="/traveler/member/"/>

<script type="text/javascript">

	var urls = {
			
			
			POST_LIST_REGIST :			"${URL_POST_LIST_REGIST}",
			POST_ITEM_REGIST :			"${URL_POST_ITEM_REGIST}"
			
			
	};
	var deps = ['ngRoute',
	            'ngAnimate',
	            'ngTouch',
	            'angular-loading-bar',
	            'ui.bootstrap'
	           ];

	var app = angular.module("travelerApp", deps);
	
	
	app.constant("URL", urls);

	app.controller("mainController", function($scope, $http, $location) {
		console.log("mainController...");
		
		
		
	});
	
</script>
=======
>>>>>>> 190b08a3af0f2306860d394baf0431f2e6ca81d2


<c:url var="registController" value="/js/traveler/member/registController.js"/>

<script type="text/javascript" src="${registController}"></script>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

<script> 
    function adsSystem() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 도로명 조합형 주소 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
                if(fullRoadAddr !== ''){
                    fullRoadAddr += extraRoadAddr;
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
<<<<<<< HEAD
                document.getElementById('sample4_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample4_roadAddress').value = fullRoadAddr;
=======
                document.getElementById('addressNum').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('address').value = fullRoadAddr;
>>>>>>> 190b08a3af0f2306860d394baf0431f2e6ca81d2

                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    //예상되는 도로명 주소에 조합형 주소를 추가한다.
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    document.getElementById('guide').innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';

                } else {
                    document.getElementById('guide').innerHTML = '';
                }
            }
        }).open();
    }
</script>

</head>

<<<<<<< HEAD
<body class="container" data-ng-controller="mainController">

	<div class="container col-sm-4 col-md-offset-4">
		<h2>회원 가입</h2>
		<pre>{{member}}</pre>
		<br>
		<form role="form"
			  name="registForm" 
			  novalidate="novalidate" 
			  data-ng-submit="submit()">
		
			<!-- 로그인정보   -->
			<div class="panel panel-default">
				<div class="panel-body">
					<label for="id">아이디:</label> 
					<input type="text"
						   name="id"	 
						   class="form-control" 
						   id="id" 
						   placeholder="사용할 ID를 입력하세요"
						   required="required"
						   data-ng-model="member.id">
				</div>
				
				<div class="panel-body">
					<label for="pwd">비밀번호:</label> 
					<input type="password"
					   	   name="password"
						   class="form-control" 
						   id="pwd" 
						   placeholder="비밀번호를 입력하세요"
						   required="required"
						   data-ng-model="member.password">
				</div>
			
				<div class="panel-body">
					<label for="checkPwd">비밀번호 확인:</label> 
					<input type="password"
						   name="checkPwd"
						   class="form-control" 
						   id="checkPwd" 
						   placeholder="비밀번호를 다시 입력하세요"
						   required="required"
						   data-ng-model="member.checkPwd">
						   
				</div>
			</div>
			
			<!-- 개인정보 -->
			<div class="panel panel-default">
				<div class="panel-body">
					<label for="name">이름:</label> 
					<input type="text"	
						   name="name"
						   class="form-control" 
						   id="name" 
						   placeholder="이름"
						   required="required"
						   data-ng-model="member.name">
				</div>
				
				<div class="panel-body">
					<label for="birthday">생년월일:</label> 
					<input type="date"
						   name="birtyday"
						   class="form-control" 
						   id="birthday" 
						   placeholder="yyyy-mm-dd"
						   required="required"
						   data-ng-model="member.birthday">
				</div>
			
				<div class="panel-body">
					<label for="address">주소</label> <p>
					<div align="right">
						<input type="button"
							   class="btn btn-primary"
							   onclick="sample4_execDaumPostcode()" 
							   value="우편번호 찾기">
					</div>
					<br>
					
					<input type="text"
						   name="addressNum"
						   class="form-control"
						   id="sample4_postcode" 
						   placeholder="우편번호"
						   data-ng-model="member.addressNum"><br>
						   
					<label for="sample4_roadAddress">도로명:</label> <p> 
					<input type="text"
						   name="address"
						   class="form-control"
						   id="sample4_roadAddress"
						   placeholder="도로명주소"
						   data-ng-model="member.address"> <p>
					
				</div>
				
				<div class="panel-body">
					<label for="tel">연락처:</label> 
					<input type="text"
						   name="tel"
						   class="form-control" 
						   id="tel" 
						   placeholder="xxx-xxx-xxxx, xxx-xxxx-xxxx"
						   required="required"
						   data-ng-model="member.tel">
				</div>
			</div>
			<div align="right">
				<input  type="submit" 
						class="btn btn-success"
						value="완료"
						
						data-ng-disabled="registForm.$invalid">
						
			</div>
		</form>
	</div>
=======
<body class="container">

   <div class="container col-sm-4 col-md-offset-4">
      <h2>회원 가입</h2>
      <pre>{{member}}</pre>
      <br>
      <form role="form" name="registForm" 
           novalidate="novalidate" data-ng-submit="submit()">
      
         <!-- 로그인정보   -->
         <div class="panel panel-default">
            <div class="panel-body">
               <label for="id">아이디:</label> 
               <input type="text"
                     name="id"    
                     class="form-control" 
                     id="id" 
                     placeholder="사용할 ID를 입력하세요"
                     required="required"
                     data-ng-model="member.id">
            </div>
            
            <div class="panel-body">
               <label for="pwd">비밀번호:</label> 
               <input type="password"
                        name="password"
                     class="form-control" 
                     id="pwd" 
                     placeholder="비밀번호를 입력하세요"
                     required="required"
                     data-ng-model="member.password">
            </div>
         
            <div class="panel-body">
               <label for="checkPwd">비밀번호 확인:</label> 
               <input type="password"
                     name="checkPwd"
                     class="form-control" 
                     id="checkPwd" 
                     placeholder="비밀번호를 다시 입력하세요"
                     required="required"
                     data-ng-model="member.checkPwd">
            </div>
         </div>
         
         <!-- 개인정보 -->
         <div class="panel panel-default">
            <div class="panel-body">
               <label for="name">이름:</label> 
               <input type="text"   
                     name="name"
                     class="form-control" 
                     id="name" 
                     placeholder="이름"
                     required="required"
                     data-ng-model="member.name">
            </div>
            
            <div class="panel-body">
               <label for="birthday">생년월일:</label> 
               <input type="date"
                     name="birtyday"
                     class="form-control" 
                     id="birthday" 
                     placeholder="yyyy-mm-dd"
                     required="required"
                     data-ng-model="member.birthday">
            </div>
         
            <div class="panel-body">
               <label for="address">주소</label> <p>
	               <div align="right">
	                  <input type="button"
	                        class="btn btn-primary"
	                        onclick="adsSystem()" 
	                        value="우편번호 찾기">
	               </div>
               <br>
               <label for="addressNum">우편번호:</label> <p> 
               <input type="text"
                     name="addressNum"
                     class="form-control"
                     id="addressNum" 
                     placeholder="우편번호"><br>
                     
               <label for="address">도로명:</label> <p> 
               <input type="text"
                     name="address"
                     class="form-control"
                     id="address"
                     placeholder="도로명주소"> <p>
               
            </div>
            
            <div class="panel-body">
               <label for="tel">연락처:</label> 
               <input type="text"
                     name="tel"
                     class="form-control" 
                     id="tel" 
                     placeholder="xxx-xxx-xxxx, xxx-xxxx-xxxx"
                     required="required"
                     data-ng-model="member.tel">
            </div>
         </div>
         <div align="right">
            <input  type="submit" 
                  class="btn btn-success"
                  value="완료"
                  data-ng-disabled="registForm.$invalid">
                  
         </div>
      </form>
   </div>
>>>>>>> 190b08a3af0f2306860d394baf0431f2e6ca81d2
</body>
</html>