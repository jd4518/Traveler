/**
 * @author java
 */

app.config(function($routeProvider) {
	console.log("/recommandDetail config...")
	
	$routeProvider.when("/recommandDetail/:listNo", {
		templateUrl: "recommandDetail.html",
		controller: "detailController"
	});
	
});


app.controller('detailController', function($scope, $http, URL, $routeParams, $location) {
	console.log("detailController...");
	console.log("URL.GET_ITEM_BASE = " + URL.GET_ITEM_BASE);
	console.log("listNo = " + $routeParams.listNo);

	$scope.$parent.title = "detail Recommand View";
	
	var ajax = $http.get(URL.GET_ITEM_BASE + $routeParams.listNo); 
	ajax.then(function(value) {
		console.dir(value);
		$scope.recommand = value.data;
	}, function(reason) {
		console.dir(reasone);
		alert("error...");
	});
	

});
