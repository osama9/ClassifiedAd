(function(){
	'use strict';

	angular.module('classified.controllers.ClassifiedListController')
	 .controller('ClassifiedListController', ClassifiedListController);

	 ClassifiedListController.$inject = ['Classified']
	 function ClassifiedListController(Classified){
	 	var vm = this;
	 	activate();

	 	function activate(){
	 		Classified.getClassifiedList().then(getClassifiedListSuccessFn, getClassifiedListErrorFn);

	 		function getClassifiedListSuccessFn(data, status, headers, config ){
	 			console.log(data.data);
	 			vm.classifiedList = data.data;
	 		}

	 		function getClassifiedListErrorFn(data, status, headers, config ){
	 			console.log("ERROR");
	 			console.log(data);
	 		}
	 	}
	 }
})();