/**
 * @author java
 */

app.config(function($routeProvider) {
	console.log("/recommandInsert config...")
	
	$routeProvider.when("/recommandInsert", {
		templateUrl: "recommandInsert.html",
		controller: "appendController"
	});
	
});

app.controller('appendController', function($scope, $http, $location, URL) {
	console.log("appendController...");
	console.log("URL.POST_ITEM_APPEND = " + URL.POST_ITEM_APPEND);
	
	$scope.$parent.title = "Append Recommand View";
	
	$scope.recommand = {};
	
	$scope.submit = function(){
		var ajax = $http.post(URL.POST_ITEM_APPEND,{
			listNo  : $scope.recommand.name,
			title   : $scope.recommand.title,
			area    : $scope.recommand.area,
			name    : $scope.recommand.name,
			content : $scope.recommand.content,
			picture : $scope.recommand.picture
		});
		
		ajax.then(function(value) {
			$location.path("/list");
		}, function(reason) {
			$scope.recommand = reason.data;
		});
		
		
	};
	
});
