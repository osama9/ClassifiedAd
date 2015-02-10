(function(){
	'use strict';

	angular.module('comments.controllers.CommentsController')
	 .controller('CommentsController', CommentsController);

	 CommentsController.$inject = ['$scope'];

	 function CommentsController($scope){
	 	var vm = this;

	 	vm.comments=[{
	 		content: "Lorem ipsom Lorem ipsom Lorem ipsom Lorem ipsom Lorem ipsom",
	 		created_at : '05/02/2015',
	 		user:{
	 			username: 'osama'
	 		}
	 	}];
	 }
})();