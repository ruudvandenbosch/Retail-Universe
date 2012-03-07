(function($){	
	
	$(document).ready(function(){
	//////////////////////////////////////////////////////////////////////////////////////////////////////////////						   
								
		// -------------------------------------------------------------------------------------------------------
		// Dropdown Menu
		// -------------------------------------------------------------------------------------------------------
		
		if ( ! ( $.browser.msie && ($.browser.version == 6) ) ){
			$("ul#topnav li:has(ul)").addClass("dropdown");
		}
		
		$("ul#topnav li.dropdown").hover(function () {
												 
			$('ul:first', this).css({visibility: "visible",display: "none"}).slideDown('normal');
		}, function () {
			
			$('ul:first', this).css({visibility: "hidden"});
		});
		
		
		if ( ! ( $.browser.msie && ($.browser.version == 6) ) ){
			$("ul#topnav2 li:has(ul)").addClass("dropdown");
		}
		
		$("ul#topnav2 li.dropdown").hover(function () {
												 
			$('ul:first', this).css({visibility: "visible",display: "none"}).slideDown('normal');
		}, function () {
			
			$('ul:first', this).css({visibility: "hidden"});
		});
		
		
		$("div.prod_hold").hover(function () {
												 
			$('.info', this).css({visibility: "visible",display: "none"}).fadeIn(200);
		}, function () {
			
			$('.info', this).fadeOut(200);
		});
		
		$("div.prod_holder").hover(function () {
												 
			$('.info', this).css({visibility: "visible",display: "none"}).fadeIn(200);
		}, function () {
			
			$('.info', this).fadeOut(200);
		});
		
		
		
		
		$(function() {

    $('.prod_hold').each(function() {        
        var tip = $(this).find('.info2');

        $(this).hover(
            function() { tip.appendTo('body'); },
            function() { tip.appendTo(this); }
        ).mousemove(function(e) {
            var x = e.pageX + 60,
                y = e.pageY - 40,
                w = tip.width(),
                h = tip.height(),
                dx = $(window).width() - (x + w),
                dy = $(window).height() - (y + h);

            if ( dx < 50 ) x = e.pageX - w - 60;
            if ( dy < 50 ) y = e.pageY - h + 50;

            tip.css({ left: x, top: y });
        });         
    });

});

	
	
		
		
		
		
		$("li.side_cart").hover(function () {
												 
			$('#cart', this).fadeIn(500);
			
			$('#cart').addClass('active');
		
		$.ajax({
			url: 'index.php?route=checkout/cart/update',
			dataType: 'json',
			success: function(json) {
				if (json['output']) {
					$('#cart .content').html(json['output']);
				}
			}
		});			
		
		$('#cart').bind('mouseleave', function() {
			$(this).removeClass('active');
		});		
			
			
		}, function () {
			
			$('#cart', this).fadeOut(200);
		});
		
		
		$(".main_menu li").hover(function () {
												 
			$('.secondary', this).fadeIn(500);
		}, function () {
			
			$('.secondary', this).fadeOut(200);
		});
		


		
		// -------------------------------------------------------------------------------------------------------
		// Tipsy - tooltips jQuery plugin
		// -------------------------------------------------------------------------------------------------------
		
		$('a.wish_button, a.compare_button, a#button-cart, a.twitter_follow, a.more_info_small, a.add_to_cart_small').tipsy({gravity: 's', fade: true, title: function() { return this.getAttribute('original-title').toUpperCase(); }});
		$('a.compare_small, a.wishlist_small').tipsy({gravity: 'n', fade: true, title: function() { return this.getAttribute('original-title').toUpperCase(); }});
		
		
		// -------------------------------------------------------------------------------------------------------
		// SLIDING ELEMENTS
		// -------------------------------------------------------------------------------------------------------
		
		$("ul.categories li, #sidebar ul.secondary_menu li").hover(function(){
		$("a", this).stop().animate({left:"15px"},{queue:false,duration:200});
		}, function() {
		$("a", this).stop().animate({left:"0px"},{queue:false,duration:200});
		});
		
		// -------------------------------------------------------------------------------------------------------
		// FADING ELEMENTS
		// -------------------------------------------------------------------------------------------------------
		
		$(".banner a img").hover(function() {
		$(this).stop()
		.animate({opacity: 0.6}, "medium")

		}, function() {
		$(this).stop()
		.animate({opacity: 1}, "medium")
		});
	//////////////////////////////////////////////////////////////////////////////////////////////////////////////	
	});
	
})(window.jQuery);	

// non jQuery scripts below