(function(){
	'use strict';

	angular.module('classified.controllers.AdListController')
	 .controller('AdListController', AdListController);

	 AdListController.$inject = ['Classified']
	 function AdListController(Classified){
	 	var vm = this;

	 	activate();

	 	function activate(){
	 		Classified.getClassifiedList().then(getClassifiedListSuccessFn, getClassifiedListErrorFn);

	 		function getClassifiedListSuccessFn(data, status, headers, config ){
	 			vm.classifiedList = data.data;
	 		}

	 		function getClassifiedListErrorFn(data, status, headers, config ){
	 			console.log("Sucess");
	 		}
	 	}
	 }
})();