$(function(){
	//----------------------
	// Dashboard .js
	//----------------------
	
	// Text Editor
	//----------------------
	tinymce.init({
					selector: "textarea",
					menubar: false,
					toolbar: false,
					footer:false
   });
	 
	// on / off fx
	//----------------------
	$("#checkbox-switch, input[type=checkbox]").bootstrapSwitch('state', true, true);
	
	// Notifications
	//----------------------
	setTimeout(function(){ $(".alert").alert().fadeIn(2000); }, 10000 ); 
	setTimeout(function(){ $(".alert").alert().fadeOut(2000); }, 10000 ); 

	// Portfolio Gallery
	//----------------------
	$('.panel-image img.panel-image-preview').on('click', function(e) {
	    $(this).closest('.panel-image').toggleClass('hide-panel-body');
    });

	// Add loading to submit buttons
	//----------------------
	$("form").submit(function() {
     //$("button[type=submit]").replaceWith('<img src="../assets/imgs/ajax-loader.gif"> Loading...');
		 $('.js-submit-btn-default').hide();
		 $('.js-submit-btn-loading').show();
  });
	
	
	
	

	//----------------------
	// end Dashboard .js
	//----------------------
})