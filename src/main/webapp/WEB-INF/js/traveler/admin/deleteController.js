/**
 * @author java
 */

app.config(function($routeProvider) {
	console.log("/memberdelete config...")
	
	$routeProvider.when("/memberdelete/:id", {
		templateUrl: "memberdelete.html",
		controller: "deleteController"
	});
	
});

app.controller('deleteController', function($scope, $http, URL, $routeParams) {
	console.log("memberdeleteController...");
	console.log("URL.DELETE_ITEM_DELETE_BASE = " + URL.DELETE_ITEM_DELETE_BASE);
	console.log("id = " + $routeParams.id);
	
	$scope.$parent.title = "Delete Member View";
	
	
	
});
