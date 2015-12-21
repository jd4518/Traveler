/**
 * @author java
 */

app.config(function($routeProvider) {
	console.log("/memberList config...")
	
	$routeProvider.when("/memberList", {
		templateUrl: "memberList.html",
		controller: "listController"
	});
	
});

app.controller('listController', function($scope, $http, URL) {
	console.log("memberListController...");
	
	$scope.$parent.title = "memberList View";
	
	$scope.members = [];
	
});
