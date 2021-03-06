/**
 * @author java
 */
app.config(function($routeProvider) {
		console.log("route config...")
		
		$routeProvider.when("/realTimeInsert", {				
			templateUrl: "realTimeInsert.html",				
			controller: "realTimeInsertController"			
		});
	});


	app.controller('realTimeInsertController', function($scope, $http, $location, URL) {
		console.log("realTimeInsertController...");
		console.log("URL.POST_ITEM_APPEND  =" + URL.POST_ITEM_APPEND);
		
		$scope.realTime = {};
		
		$scope.submit = function()
		{
			var ajax = $http.post(URL.POST_ITEM_APPEND,{
				number: $scope.realTime.number,
					id: $scope.realTime.id,
			   content: $scope.realTime.content,
		      reg_date: $scope.realTime.reg_date
			});
			
			ajax.then(function (value){
				$loaction.path = ("realTimeList/");
			}, function(reason){
				$scope.realTime = reason.data;
			});
		};
		
	});
