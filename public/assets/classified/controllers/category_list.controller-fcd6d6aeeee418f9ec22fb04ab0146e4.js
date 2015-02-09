(function(){
	'use strict';

	angular.module('classified.controllers.CategoryListController')
	 .controller('CategoryListController', CategoryListController);

	 CategoryListController.$inject = ['Classified']

	 function CategoryListController(Classified){
	 	var vm = this;
	 	

	 	activate();

	 	function activate(){
	 		Classified.getCategoryList().then(getCategoryListSuccessFn, getCategoryListErrorFn);

	 		function getCategoryListSuccessFn(data, status, headers, config){
	 			vm.classifiedList = data.data;
	 		}

	 		function getCategoryListErrorFn(data, status, headers, config){
	 			console.log("ERROR");
	 		}
	 	}
	 }
})();
