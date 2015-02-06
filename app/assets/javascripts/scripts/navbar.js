(function(){
		console.log("Navbar");
		function update(){
			if($(window).scrollTop() > 10){
				
				$(".navbar-default").addClass("navbar-Transparency");
			}
			else
			 	$(".navbar-default").removeClass("navbar-Transparency");
		}

		setInterval(update, 10);		
})();


