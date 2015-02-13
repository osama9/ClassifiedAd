(function(){

	angular.module("app",[
		'templates',
		'app.route',
		//'authentication',
		'classified',
		'comments'
		]);


	angular.module('app.route',['ngRoute']);
	angular.module('classified',[
		'classified.controllers.ClassifiedListController',
		'classified.controllers.CategoryListController',
		'classified.services.ClassifiedService'
		]);

	angular.module('comments',[
		'comments.controllers.CommentsController',
		'comments.services.CommentsService'

		]);

	/*
	angular.module('authentication',[
		'authentication.controllers.AuthController',
		'authentication.services.Auth'
		]);
*/
})();


