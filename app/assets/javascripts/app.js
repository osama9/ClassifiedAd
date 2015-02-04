(function(){

	angular.module("app",[
		'templates',
		'app.route',
		'classified'
		]);


	angular.module('app.route',['ngRoute']);
	angular.module('classified',[
		'classified.controllers.AdListController',
		'classified.services.ClassifiedService'
		]);

})();


