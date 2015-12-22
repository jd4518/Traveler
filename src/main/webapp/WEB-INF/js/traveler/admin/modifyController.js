/**
 * @author java
 */

app.config(function($routeProvider) {
	console.log("/membermodify config...")
	
	$routeProvider.when("/membermodify/:id", {
		templateUrl: "membermodify.html",
		controller: "modifyController"
	});
	
});

app.controller('modifyController', function($scope, $http, URL, $routeParams, $location) {
	console.log("modifyController...");
	console.log("URL.PUT_ITEM_MODIFY_BASE = " + URL.PUT_ITEM_MODIFY_BASE);
	console.log("URL.GET_ITEM_BASE = " + URL.GET_ITEM_BASE);
	console.log("id = " + $routeParams.id);

	$scope.$parent.title = "Modify Member View";
	
	var ajax = $http.get(URL.GET_ITEM_BASE + $routeParams.id); // /city/2000
	ajax.then(function(value) {
		console.dir(value);
		$scope.member = value.data;
	}, function(reason) {
		console.dir(reasone);
		alert("error...");
	});
	
	$scope.submit = function() {
		var ajax = $http.put(URL.PUT_ITEM_MODIFY_BASE + $scope.city.id, {
			id : 			$scope.member.id,
			password : 		$scope.memeber.password,
			name : 			$scope.memeber.name,
			regist_date : 	$scope.memeber.regist_date,
			birthday : 		$scope.memeber.birthday,
			tel : 			$scope.memeber.tel,
			address : 		$scope.memeber.address,
			addressNum : 	$scope.memeber.addressNum
		});
		
		ajax.then(function(response) {
			console.dir(response.data);
			$location.path("/memberList");
		}, function(response) {
			console.dir(response.data);
		});
		
		
		
	};
	
	
	
	
	
});
