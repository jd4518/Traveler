/**
 * @author java
 */

app.config(function($routeProvider) {
	console.log("/memberList config...")
	
	$routeProvider.when("/list", {
		templateUrl: "memberList.html",
		controller: "memberListController"
	});
	
});

app.controller('memberListController', function($scope, $http, URL) {
	console.log("memberListController...");
	
	$scope.$parent.title = "memberList View";
	
});
