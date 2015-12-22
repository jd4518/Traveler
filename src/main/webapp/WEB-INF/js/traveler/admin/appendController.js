/**
 * @author java
 */

app.config(function($routeProvider) {
	console.log("/memberappend config...")
	
	$routeProvider.when("/memberappend", {
		templateUrl: "memberappend.html",
		controller: "appendController"
	});
	
});

app.controller('appendController', function($scope, $http, $location, URL) {
	console.log("memberappendController...");
	console.log("URL.POST_ITEM_APPEND = " + URL.POST_ITEM_APPEND);
	
	$scope.$parent.title = "Append Member View";
	
	$scope.member = {};
	
	$scope.submit = function() {
		var ajax = $http.post(URL.POST_ITEM_APPEND, {
			id : 			$scope.member.id,
			password : 		$scope.memeber.password,
			name : 			$scope.memeber.name,
			regist_date : 	$scope.memeber.regist_date,
			birthday : 		$scope.memeber.birthday,
			tel : 			$scope.memeber.tel,
			address : 		$scope.memeber.address,
			addressNum : 	$scope.memeber.addressNum
		});
		
		ajax.then(function(value) {
			$location.path("/memberList");
		}, function(reason) {
			console.dir(reason)
			$scope.member = reason.data;
		})

		
	};
	
});
