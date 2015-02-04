(function(){

	'use strict';

	angular.module('app.route').config(config);

	config.$inject = ['$routeProvider'];

	function config($routeProvider){
		$routeProvider
			.when('/', {
				controller: "AdListController",
				controllerAs: "vm",
				templateUrl: "classified_ads/index.html"
				})
			.when('/Video Games',{
				templateUrl: "categories/video_games.html",
				controller: "VideoGamesController",
				controllerAs: "vm"
			}).otherwise('/');
	};

})();