// Layout

$(function(){
	
	/* 
	 * GLOBAL VARS
		*/
		
		
	/*
	 * CARROUCEL SLIDER
		*/    
  
		/// Stop autoplay
		$('.carousel').each(function(){
  		$(this).carousel({
   			pause: true,
    		interval: false
   		});
   });
		$('.carousel').carousel('pause');	
			
		/// For Mobile - Swipe do scroll para mobile version 
		$(".carousel-inner").swipe({
				/* Generic swipe handler for all directions */
				swipeLeft:function(event, direction, distance, duration, fingerCount){ 
						$(this).parent().carousel('next');
				},swipeRight: function(){
						$(this).parent().carousel('prev');
				},
				/* Default is 75px, set to 0 for demo so any distance triggers swipe */
				threshold:0
		});

/*
 * End .js
 */			
});