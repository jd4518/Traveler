/**
 * @author java
 */
app.config(function($routeProvider) {
		console.log("/insert config...")
		
		$routeProvider.when("/shareInsert", {				
			templateUrl: "shareInsert.html",				
			controller: "shareController"			
		});
		
	});


	app.controller('shareController', function($scope, $http, $location, URL) {
		console.log("shareController...");
		console.log("URL.POST_ITEM_APPEND =" + URL.POST_ITEM_APPEND);
		
		$scope.$parent.title = "게시글 작성";		
		$scope.share={};
		
	
		
		$scope.toggle = function(){
			var p = $('#picture').val();
			$scope.share.picture = p;
			alert("성공");
		};
		
		
		$scope.submit = function()
		{
			var ajax = $http.post(URL.POST_ITEM_APPEND,{
				id : $scope.share.id,
				title : $scope.share.title,
				term : $scope.share.term,
				number : $scope.share.number,
				eatCost : $scope.share.eatCost,
				stayCost : $scope.share.stayCost,
				transCost : $scope.share.transCost,
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

