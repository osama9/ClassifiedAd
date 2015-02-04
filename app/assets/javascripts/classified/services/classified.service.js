(function(){
	'use strict';
	angular.module('classified.services.ClassifiedService')
		.factory('Classified', Classified);

		Classified.$inject = ['$http'];

		function Classified($http){
			var Classified = {
				getClassifiedList: getClassifiedList
			};

			return Classified;

			function getClassifiedList(){
				return $http.get('/classified_ads.json');
			}
		}
})();