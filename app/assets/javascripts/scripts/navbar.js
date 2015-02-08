(function(){
		console.log("Navbar");
		function update(){
			if($(window).scrollTop() > 10){
				
				$(".navbar-default").addClass("navbar-Transparency");
				$(".sidebar").addClass("nav-sidebar-top-changed");
			}
			else{
			 	$(".navbar-default").removeClass("navbar-Transparency");
			 	$(".sidebar").removeClass("nav-sidebar-top-changed");
			}
		}

		setInterval(update, 10);		
})();


