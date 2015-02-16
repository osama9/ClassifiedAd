(function(){
	'use strict';
	angular.module('classified.services.ClassifiedService')
		.factory('Classified', Classified);

		Classified.$inject = ['$http', '$routeParams'];

		function Classified($http, $routeParams){
			var Classified = {
				getCategoryList: getCategoryList,
				getClassifiedList: getClassifiedList
			};

			return Classified;

			function getClassifiedList(){
				return $http.get('/en/classified_ads.json');
			}

			function getCategoryList(){
				return $http.get('/en/category/' + $routeParams.categoryId);
			}
		}
})();