/**
 * @author java
 */
app.config(function($routeProvider) {
		console.log("/append config...")
		
		$routeProvider.when("/shareInsert", {				
			templateUrl: "shareInsert.html",				
			controller: "appendController"			
		});
		
	});


	app.controller('appendController', function($scope, $http, $location, URL) {
		console.log("appendController...");
		console.log("URL.POST_ITEM_APPEND =" + URL.POST_ITEM_APPEND);
		
		$scope.$parent.title = "Append Share View";		
		$scope.share={};
		
		$scope.submit = function()
		{
			var ajax = $http.post(URL.POST_ITEM_APPEND,{
				name : $scope.share.name,
				memberPicture : $scope.share.memberPicture,
				id : $scope.share.id,
				memberAge : $scope.share.memberAge,
				memberTel : $scope.share.memberTel,
				title : $scope.share.title,
				term : $scope.share.term,
				number : $scope.share.number,
				cost : $scope.share.cost,
				content : $scope.share.content,
				picture : $scope.share.picture,
				map : $scope.share.map
			});
			
			ajax.then(function(value) {				//성공시
				$location.path("/shareList");
			}, function(reason) {					//에러시
				$scope.share = reason.data;	
			});
		};
	});

