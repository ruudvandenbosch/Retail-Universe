<!-- BIG SLIDESHOW -->
  <div id="slideshow_big" class="fixed">
      <!-- Slider Start -->
      <div id="big_slider<?php echo $module; ?>" class="li-banner  fixed" style="width: <?php echo $width; ?>px; height: <?php echo $height; ?>px;">
        <ul>
          <?php foreach ($banners as $banner) { ?>
    <?php if ($banner['link']) { ?>
    <li><a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" /></a></li>
    <?php } else { ?>
    <li><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" /></li>
    <?php } ?>
    <?php } ?>
        </ul>
      </div>
      <!-- Slider End --> 
  </div>
  <script type="text/javascript"> 
    	$(document).ready(	
			function() {
				$("#big_slider<?php echo $module; ?>").sp_Li_Slider({						
					animation						: "Regular-Exception",	// type of Animation: Regular, Random, Regular-Custom, Random-Custom, Regular-Exception, Random-Exception  			
					transitions					: 'None',				// None|transition_name(s) // List of custom animations - for full list please reference to the preview (works only with "Regular-Custom, Random-Custom, Regular-Exception , Random-Exception ")
					auto_play 					: true,   			// true|false - auto play on start
					repeat	 						: true,					// true|false|number - how many times to repeat all slides
					modalMode						:	'off',// lightBox|prettyPhoto|off
					goToSlideOnStart		:	1,						// value //any slide number starting from 1 or url?sp_slide=2
					timer								: 'line_bottom',// no|line_bottom|line_top|line_right|line_left
					pauseOnMouseOver		:	true,					// true|false
					tooltip							:	'image',			// none|text|image
					tooltipSize					: 20,						// value // % of slider dimentions from 0 to 100. Use 0 to disable it
					shuffle							:	false,				// true|false - randomize the images order
					delay     					: 4000,					// value // time period of a photos displaying /default - 3000 (3 sec)
					trans_period				:	800,					// value // time period of chenging the photos /default - 1000 (1 sec)
					vert_sections				:	10,						// value // number of vertical sectors (only for Animation type Blind) /default - 15
					sqr_sections_Y			:	4,						// value // number of squeres by vertical (only for Animation type Sqr) /default - 5
					active_links				:	true,					// true|false //activate links of photos /default - true
					buttons_show				:	true,					// true|false //show all buttons 		/default - true
					play_pause_show			:	true,					// true|false //show Play or Pause buttons	/default - true
					next_prev_show			:	true,					// true|false //show Next or Prev buttons	/default - true
					auto_hide 					: true,					// true|false // auto hide buttons ot start (when auto_play is true)
					buttons_show_time		:	1000,					// value 			//time period befor displayins of the buttons 	/default - 100
					buttons_show_delay	:	200,					// value //time period for appearing of the buttons		/default - 300
					buttons_hide_time 	:	1000,					// value //time period befor disappearing of the buttons/default - 2000
					buttons_hide_delay	:	200						// value //time period for disappearing of the buttons	/default - 500
				});
			}
		);		
</script>
  <!-- END OF BIG SLIDESHOW -->