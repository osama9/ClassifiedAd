(function(){

	angular.module("app",[
		'templates',
		'app.route',
		'classified'
		]);


	angular.module('app.route',['ngRoute']);
	angular.module('classified',[
		'classified.controllers.ClassifiedListController',
		'classified.controllers.CategoryListController',
		'classified.services.ClassifiedService'
		]);

})();


