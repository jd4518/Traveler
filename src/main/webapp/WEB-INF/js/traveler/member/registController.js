/**
 * @author java
 */

app.config(function($routeProvider) {
	console.log("/regist config...")
	
	$routeProvider.when("/traveler/member/regist.html", {
		templateUrl: "/traveler/member/regist.html",
		controller: "registController"
	});
	
});

app.controller('registController', function($scope, $http, $location, URL) {
	console.log("registController...");
	console.log("URL.POST_ITEM_REGIST = " + URL.POST_ITEM_REGIST);
	
	$scope.$parent.title = "Regist Member View";
	
	$scope.member = {};
	
	$scope.submit = function() {
		var ajax = $http.post(URL.POST_ITEM_REGIST, {
			id : $scope.member.id,
			password : $scope.member.password,
			name : $scope.member.name,
			birthday : $scope.member.birthday,
			tel : $scope.member.tel,
			address : $scope.member.address,
			addressNum : $scope.member.addressNum
		});
		
		ajax.then(function(value) {
			$location.path("/traveler/member/main.html");
		}, function(reason) {
			console.dir(reason)
			$scope.member = reason.data;
		})

		
	};
	
});
