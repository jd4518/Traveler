/**
 * @author java
 */
app.config(function($routeProvider) {
		console.log("route config...")
		
		$routeProvider.when("/shareList", {				//list로 요청을 하면
			templateUrl: "shareList.html",				//list.html을 불러와서 ng-view를 호출 
			controller: "listController"			//listController를 실행
		});
		
	});


	app.controller('listController', function($scope, $http, URL) {
		console.log("listController...");
		console.log("URL.GET_PAGE_BASE =" + URL.GET_PAGE_BASE);
		
		$scope.$parent.title = "공유 게시판"; 	//부모 Controller인 mainController가 
													//호출되면서 main.jsp에 있는 title에 바인딩 되면서 화면에 나타난다.
		$scope.pageNo = 1;
		$scope.shares = [];
		$scope.paging = {};
		
		
		
		$scope.selectPage = function() {
			$http.get(URL.GET_PAGE_BASE + $scope.pageNo).success(function(data, status, headers, config) {
				console.dir(data);
				$scope.shares = data.shares;
				$scope.paging = data.paging;
//	 			alert("success...");
			});
		};
		
		
		$scope.selectPage();
		
		$scope.prevClick = function(pageNo) {
			console.log("prevClick()... pageNo = " + pageNo);
			$scope.pageNo = pageNo
			$scope.selectPage();
// 			alert("pageNo=" + pageNo);
		};
		
		$scope.pageClick = function(pageNo) {
			console.log("pageClick()... pageNo = " + pageNo);
			$scope.pageNo = pageNo
			$scope.selectPage();
// 			alert("pageNo=" + pageNo);
		};
		
		$scope.nextClick = function(pageNo) {
			console.log("nextClick()... pageNo = " + pageNo);
			$scope.pageNo = pageNo
			$scope.selectPage();
// 			alert("pageNo=" + pageNo);
		};
		
	});
