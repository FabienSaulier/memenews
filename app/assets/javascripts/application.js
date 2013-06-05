// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require_tree .
//= require jquery.ui.all




$(document).ready(function(){
    
	// toggle tabs for sign in /  sign up forms  	
	$('a[data-toggle="tab"]').on('show', function (e) {
	//  e.target // activated tab
	//  e.relatedTarget // previous tab
		$("#login_tabs .active").removeAttr("class");
		$(this).attr("class", "active");
	}); 


	// display post form
  $('#post_form_pop').popover({ 
    html : true,
    content: function() {
      return $('#popover_content_wrapper').html();
    }
  });
  



	// display block/none button on post :hover
  $(".post").hover(function(){
  	
  	$(this).children(":first").next().removeClass('rank_btn_off');
  	$(this).children(":first").next().addClass('rank_btn_on');
  	
  },function(){
	$(this).children(":first").next().removeClass('rank_btn_on');
  	$(this).children(":first").next().addClass('rank_btn_off');
  });
  

  

});



