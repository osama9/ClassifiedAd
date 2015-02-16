(function(){
	'use strict';

	angular.module('classified.controllers.ClassifiedListController')
	 .controller('ClassifiedListController', ClassifiedListController);

	 ClassifiedListController.$inject = ['$scope', 'Classified', '$cookies'];
	 function ClassifiedListController($scope, Classified, $cookies){
	 	var vm = this;
	 	//var locale = $cookies.locale;
	 	vm.locale = $cookies.locale;
	 	vm.arStrings = I18n["ar"];
	 	vm.enStrings = I18n["en"];
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