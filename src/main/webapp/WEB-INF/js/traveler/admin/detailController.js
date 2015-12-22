/**
 * @author java
 */

app.config(function($routeProvider) {
	console.log("/detail config...")
	
	$routeProvider.when("/memberdetail/:id", {
		templateUrl: "memberdetail.html",
		controller: "detailController"
	});
	
});

app.controller('detailController', function($scope, $http, URL, $routeParams) {
	console.log("detailController...");
	console.log("URL.GET_ITEM_BASE = " + URL.GET_ITEM_BASE);
	console.log("id = " + $routeParams.id);
	
	$scope.$parent.title = "Detail Member View";
	
	
	
});
