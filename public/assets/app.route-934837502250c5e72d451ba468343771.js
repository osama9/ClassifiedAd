(function(){

	'use strict';

	angular.module('app.route').config(config);

	config.$inject = ['$routeProvider'];

	function config($routeProvider){
		$routeProvider
			.when('/', {
				controller: "ClassifiedListController",
				controllerAs: "vm",
				templateUrl: "classified_ads/index.html"
				})
			.when('/:categoryId',{
				templateUrl: "categories/category_layout.html",
				controller: "CategoryListController",
				controllerAs: "vm"
			}).otherwise('/');
	};

})();
