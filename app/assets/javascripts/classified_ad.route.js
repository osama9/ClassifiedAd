(function(){

	'use strict';

	angular.module('ClassifiedAds.Routes').config(config);

	config.$inject = ['$routeProvider'];

	function config($routeProvider){
		$routeProvider
			.when('/', {
				controller: "AdListController",
				controllerAs: "vm",
				templateUrl: "templates/classified_ads/index.html.erb"
				})
			.when('/classified_ads/:classified_ad_id',{
				templateUrl: "templates/classified_ads/show.html",
				controller: "AdController",
				controllerAs: "vm"
			}).otherwise('/');
	};

})();