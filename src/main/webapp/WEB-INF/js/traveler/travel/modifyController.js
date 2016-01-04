/**
 * @author java
 */
app.config(function($routeProvider) {
		console.log("/shareModify config...")
		
		$routeProvider.when("/shareModify/:boardNum", {				//modify로 요청을 하면
			templateUrl: "shareModify.html",				//modify.html을 불러와서 ng-view를 호출 
			controller: "shareModifyController"			//modifyController를 실행
		});
		
	});


	app.controller('shareModifyController', function($scope, $http, URL, $routeParams, $location) {
		console.log("modifyController...");
		console.log("URL.PUT_ITEM_MODIFY_BASE =" + URL.PUT_ITEM_MODIFY_BASE);
		console.log("URL.GET_ITEM_BASE =" + URL.GET_ITEM_BASE);
		console.log("boardNum = " + $routeParams.boardNum);
		
		$scope.$parent.title = "게시판 수정";	
		
		$scope.toggle = function(){
			var p = $('#picture').val();
			$scope.share.picture = p;
			alert("성공");
		};
		
		$scope.getTotal = function() {
			var rtn =  $scope.cost1 + $scope.cost2 + $scope.cost3;
			return angular.isNumber(rtn) == true ? rtn : false;
		};
		
		var ajax = $http.get(URL.GET_ITEM_BASE + $routeParams.boardNum);	//ajax를 이용하여 페이지 호출
		
		ajax.then(function(value) {			//ajax if문 표현 
			console.dir(value);
			$scope.share = value.data;		//model에 binding이 자동으로 된다.	
		}, function(reason) {
			console.dir(reason);
			alert("error...");
		});
		
		
		$scope.submit = function(){
			
			var ajax = $http.put(URL.PUT_ITEM_MODIFY_BASE + $scope.share.boardNum,{	//var ajax는 local변수
				boardNum:		$scope.share.boardNum,
				id : 			$scope.share.id,
				name : 			$scope.share.name,
				memberPicture : $scope.share.memberPicture,
				memberAge : 	$scope.share.memberAge,
				memberTel : 	$scope.share.memberTel,
				title :			$scope.share.title,
				term : 			$scope.share.term,
				number : 		$scope.share.number,
				cost : 			$scope.getTotal(),
				content : 		$scope.share.content,
				picture : 		$scope.share.picture,
				map : 			$scope.share.map
			});
			
			
			ajax.then(function(value) {
				console.dir(value);
				$location.path("/shareList");
			}, function(reason) {
				console.dir(reason);
				alert("error...");
			});
		};
	});
