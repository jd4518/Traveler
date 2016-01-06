/**
 * @author java
 */
app.config(function($routeProvider) {
		console.log("/detail config...")
		
		$routeProvider.when("/shareDetail/:boardNum", {				//detail로 요청을 하면
			templateUrl: "shareDetail.html",				//detail.html을 불러와서 ng-view를 호출 
			controller: "detailController"			//detailController를 실행
		});
		
	});


	app.controller('detailController', function($scope, $http, URL, $routeParams) {
		console.log("detailController...");
		console.log("URL.GET_ITEM_BASE =" + URL.GET_ITEM_BASE);
		console.log("boardNum = " + $routeParams.boardNum);
		
		$scope.$parent.title = "상세정보";		
		
		var ajax = $http.get(URL.GET_ITEM_BASE + $routeParams.boardNum);	//ajax를 이용하여 페이지 호출
		
		ajax.then(function(value) {			//ajax if문 표현 
			console.dir(value);
			$scope.share = value.data;		//model에 binding이 자동으로 된다.	
		}, function(reason) {
			console.dir(reason);
			alert("error...");
		});
	});
