/**
 * @author java
 */
app.config(function($routeProvider) {
<<<<<<< HEAD:src/main/webapp/WEB-INF/js/traveler/travel/listController.js
		console.log("route config...")
		
		$routeProvider.when("/shareList", {				
			templateUrl: "shareList.html",				
			controller: "listController"			
		});
		
=======
	console.log("/recommandList config...")
	
	$routeProvider.when("/list", {
		templateUrl: "list.html",
		controller: "recommandListController"
>>>>>>> 9e04f7c97515ff07fd56bb6258348ff9675329f9:src/main/webapp/WEB-INF/js/traveler/travel/recommandListController.js
	});

<<<<<<< HEAD:src/main/webapp/WEB-INF/js/traveler/travel/listController.js

	app.controller('listController', function($scope, $http, URL) {
		console.log("listController...");
		console.log("URL.GET_PAGE_BASE =" + URL.GET_PAGE_BASE);
		
		$scope.$parent.title = "List Share View"; 	
													
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
		
=======
app.controller('recommandListController', function($scope, $http, URL) {
	console.log("recommandListController...");
	console.log("URL.GET_PAGE_BASE = " + URL.GET_PAGE_BASE);
	
	$scope.$parent.title = "List Recommand View";
	
	$scope.pageNo = 1;
	$scope.recommandLists = [];
	$scope.paging = {};
	
	$scope.selectPage = function() {
		$http.get(URL.GET_PAGE_BASE + $scope.pageNo).success(function(data, status, headers, config) {
			console.dir(data);
			$scope.recommandLists = data.recommandLists;
			$scope.paging = data.paging;
		});
	};
	
	$scope.selectPage();
	
	$scope.prevClick = function(pageNo) {
		console.log("prevClick()... pageNo = " + pageNo);
		$scope.pageNo = pageNo
>>>>>>> 9e04f7c97515ff07fd56bb6258348ff9675329f9:src/main/webapp/WEB-INF/js/traveler/travel/recommandListController.js
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
