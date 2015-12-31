<<<<<<< HEAD
=======
/**
 * @author java
 */
app.config(function($routeProvider) {

		console.log("route config...")
		
		$routeProvider.when("/shareList", {				
			templateUrl: "shareList.html",				
			controller: "listController"			
		}); 
 
		console.log("/recommandList config...")
		
		$routeProvider.when("/list", {
			templateUrl: "list.html",
			controller: "recommandListController"
		});
});

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

>>>>>>> 5b5bca93d1ddd6a99b34ee35982b42dcf44bdbd7
