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

	$scope.$parent.title = "회원 정보 수정";
	
	var ajax = $http.get(URL.GET_ITEM_BASE + $routeParams.id);
	ajax.then(function(value) {
		console.dir(value);
		$scope.member = value.data;
	}, function(reason) {
		console.dir(reasone);
		alert("error...");
	});
	
	$scope.submit = function() {
		var ajax = $http.put(URL.PUT_ITEM_MODIFY_BASE + $scope.memberForm.id, {
			id : 			$scope.member.id,
			password : 		$scope.member.password,
			name : 			$scope.member.name,
			regist_date : 	$scope.member.regist_date,
			birthday : 		$scope.member.birthday,
			tel : 			$scope.member.tel,
			address : 		$scope.member.address,
			addressNum : 	$scope.member.addressNum
		});
		
		ajax.then(function(response) {
			console.dir(response.data);
			$location.path("/memberList");
		}, function(response) {
			console.dir(response.data);
		});
		
		
		
	};
	
	
	
	
	
});
