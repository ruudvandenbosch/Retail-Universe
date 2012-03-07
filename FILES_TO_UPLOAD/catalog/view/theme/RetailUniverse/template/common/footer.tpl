<!-- PRE-FOOTER -->

<div id="pre_footer">
  <div class="inner">
    <?php if(($this->config->get('theme_control_twitter_id') != null) && ($this->config->get('theme_control_status') == '1')) { ?>
    <div id="twitter_div"> <a class="twitter_follow" href="http://twitter.com/<?php echo $this->config->get('theme_control_twitter_id') ?>" title="Follow Us on Twitter">Follow Us on Twitter</a> <a id="tweet_prev" href="#">Previous</a> <a id="tweet_next" href="#">Next</a>
      <ul id="twitter_update_list">
        <li>&nbsp;</li>
      </ul>
    </div>
    <script type="text/javascript" src="http://twitter.com/javascripts/blogger.js"></script> 
    <script type="text/javascript" src="http://twitter.com/statuses/user_timeline/<?php echo $this->config->get('theme_control_twitter_id') ?>.json?callback=twitterCallback2&amp;count=3"></script> 
    <script type="text/javascript"><!--
$(document).ready(function() {
$('ul#twitter_update_list').cycle({
		fx: 'fade', // choose your transition type, ex: fade, scrollUp, shuffle, etc...
		next:   '#tweet_next', 
    	prev:   '#tweet_prev'
		}); 
		});
//--></script>
    <?php } else { ?>
    <?php } ?>
  </div>
</div>

<!-- END OF PRE-FOOTER --> 
<!-- FOOTER -->
<div id="footer">
<?php
$this->language->load('common/header');
$text_home = $this->language->get('text_home');
?>
  <div class="inner">
    
    <div class="column_big"> 
      <!-- FOOTER MODULES AREA -->
      <div class="footer_modules">
        <?php foreach ($modules as $module) { ?>
        <?php echo $module; ?>
        <?php } ?>
      </div>
     
    </div>
    
    
    <?php if(($this->config->get('theme_control_facebook_id') != null) && ($this->config->get('theme_control_status') == '1')) { ?>
    <div id="facebook_holder">
      <div class="">
      <script type="text/javascript">
      //<![CDATA[
            document.write('<fb:fan profileid="<?php echo $this->config->get('theme_control_facebook_id'); ?>" stream="0" connections="13" logobar="0" width="936" height="150" css="<?php echo HTTP_SERVER; ?>catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/stylesheet/facebook.css?49"></fb:fan>');
      //]]>
     	</script>
        
      </div>
    </div>
    <?php } ?>
    
    
        <div class="column_small">
      
      <ul>
        <?php foreach ($informations as $information) { ?>
        <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
        <?php } ?>
        <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
        <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
        <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
        <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
        <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
        <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
      </ul>
    </div>
   
   <div class="column_small">
   <?php if(($this->config->get('theme_control_paypal') == '1') && ($this->config->get('theme_control_status') == '1')) { ?>
   <div class="paypal_icon cards_icon"></div>
   <?php } ?>
   <?php if(($this->config->get('theme_control_visa') == '1') && ($this->config->get('theme_control_status') == '1')) { ?>
   <div class="visa_icon cards_icon"></div>
   <?php } ?>
   <?php if(($this->config->get('theme_control_electron') == '1') && ($this->config->get('theme_control_status') == '1')) { ?>
   <div class="electron_icon cards_icon"></div>
   <?php } ?>
   <?php if(($this->config->get('theme_control_master') == '1') && ($this->config->get('theme_control_status') == '1')) { ?>
   <div class="master_icon cards_icon"></div>
   <?php } ?>
   <?php if(($this->config->get('theme_control_maestro') == '1') && ($this->config->get('theme_control_status') == '1')) { ?>
   <div class="maestro_icon cards_icon"></div>
   <?php } ?>
   <?php if(($this->config->get('theme_control_cirrus') == '1') && ($this->config->get('theme_control_status') == '1')) { ?>
   <div class="cirrus_icon cards_icon"></div>
   <?php } ?>
   <?php if(($this->config->get('theme_control_american') == '1') && ($this->config->get('theme_control_status') == '1')) { ?>
   <div class="american_icon cards_icon"></div>
   <?php } ?>
   <?php if(($this->config->get('theme_control_2checkout') == '1') && ($this->config->get('theme_control_status') == '1')) { ?>
   <div class="two_checkout_icon cards_icon"></div>
   <?php } ?>
   <?php if(($this->config->get('theme_control_delta') == '1') && ($this->config->get('theme_control_status') == '1')) { ?>
   <div class="delta_icon cards_icon"></div>
   <?php } ?>
   <?php if(($this->config->get('theme_control_discover') == '1') && ($this->config->get('theme_control_status') == '1')) { ?>
   <div class="discover_icon cards_icon"></div>
   <?php } ?>
   <?php if(($this->config->get('theme_control_google') == '1') && ($this->config->get('theme_control_status') == '1')) { ?>
   <div class="google_icon cards_icon"></div>
   <?php } ?>
   <?php if(($this->config->get('theme_control_moneybookers') == '1') && ($this->config->get('theme_control_status') == '1')) { ?>
   <div class="moneybookers_icon cards_icon"></div>
   <?php } ?>
   <?php if(($this->config->get('theme_control_sage') == '1') && ($this->config->get('theme_control_status') == '1')) { ?>
   <div class="sage_icon cards_icon"></div>
   <?php } ?>
   <?php if(($this->config->get('theme_control_solo') == '1') && ($this->config->get('theme_control_status') == '1')) { ?>
   <div class="solo_icon cards_icon"></div>
   <?php } ?>
   <?php if(($this->config->get('theme_control_switch') == '1') && ($this->config->get('theme_control_status') == '1')) { ?>
   <div class="switch_icon cards_icon"></div>
   <?php } ?>
   <?php if(($this->config->get('theme_control_western') == '1') && ($this->config->get('theme_control_status') == '1')) { ?>
   <div class="western_icon cards_icon"></div>
   <?php } ?>

   </div>  
    
    <div id="powered"><?php echo $powered; ?></div>
    <span id="copyright">RetailUniverse theme by <a href="http://themeforest.net/user/Koev/portfolio?ref=Koev">Dimitar Koev - theAlThemist</a>. </span> 
    <div class="clear"></div>
    </div>
</div>
<!-- END OF FOOTER -->

</div>
<!-- END OF MAIN WRAPPER --> 

<?php if(($this->config->get('theme_control_facebook_id') != null) && ($this->config->get('theme_control_status') == '1')) { ?>
<div id="fb-root"></div>
<script type="text/javascript">
  window.fbAsyncInit = function() {
    FB.init({appId: '0c18007de6f00f7ecda8c040fb76cd90', status: true, cookie: true,
     xfbml: true});
  };
  (function() {
    var e = document.createElement('script'); e.async = true;
    e.src = document.location.protocol +
    '//connect.facebook.net/en_US/all.js';
    document.getElementById('fb-root').appendChild(e);
  }());
</script>
<?php } ?>
</body></html>