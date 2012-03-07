<?php if (isset($_SERVER['HTTP_USER_AGENT']) && !strpos($_SERVER['HTTP_USER_AGENT'], 'MSIE 6')) echo '<?xml version="1.0" encoding="UTF-8"?>'. "\n"; ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" xml:lang="<?php echo $lang; ?>" xmlns:fb="http://www.facebook.com/2008/fbml">
<head>
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php if(($this->config->get('theme_control_skin') != null) && ($this->config->get('theme_control_status') == '1')) { ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/stylesheet/<?php echo $this->config->get('theme_control_skin'); ?>.css" />
<?php } else { ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/stylesheet/stylesheet.css" />
<?php } ?>
<link rel="stylesheet" href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/stylesheet/cloud-zoom.css" type="text/css" media="screen" />
<link rel="stylesheet" href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/stylesheet/carousel.css" type="text/css" media="screen" />
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script type="text/javascript" src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/js/jquery-1.5.2.min.js"></script>
<script src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/js/jquery.cycle.lite.1.0.min.js" type="text/javascript"></script>
<script src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/js/jquery.roundabout.min.js" type="text/javascript"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<script src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/js/cloud-zoom.1.0.2.min.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/external/jquery.cookie.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/fancybox/jquery.fancybox-1.3.4.css" media="screen" />
<script src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/js/custom_scripts.js" type="text/javascript"></script>
<script src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/js/jquery.jcarousel.min.js" type="text/javascript"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/js/scrolltopcontrol.js"></script>
<!-- Tipsy -->
<script src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/js/tipsy/jquery.tipsy.js" type="text/javascript"></script>
<link href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/js/tipsy/css.tipsy.css" rel="stylesheet" type="text/css" />
<?php if( $this->config->get('theme_control_header_font') != 'Arial'){	
	?>
<link href='//fonts.googleapis.com/css?family=<?php echo $this->config->get('theme_control_headings_font') ?>' rel='stylesheet' type='text/css' />
<?php } ?>
<!--[if IE]>
<script type="text/javascript" src="catalog/view/javascript/jquery/fancybox/jquery.fancybox-1.3.4-iefix.js"></script>
<![endif]-->
<script type="text/javascript" src="catalog/view/javascript/jquery/tabs.js"></script>
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<!--[if IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/stylesheet/ie7.css" />
<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('#logo img');
</script>
<![endif]-->
<?php echo $google_analytics; ?>
<?php if($this->config->get('theme_control_status') == '1'){ ?>
<style type="text/css">
body {
<?php if(( $this->config->get('theme_control_body_bg_pattern') != null) && ($this->config->get('theme_control_body_bg_pattern') != 'pattern0.png')){ ?>
 background:url("catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/image/backgrounds/<?php echo  $this->config->get('theme_control_body_bg_pattern');?>") top center repeat;
 <?php } ?>
 background-color:#<?php echo $this->config->get('theme_control_body_bg_color') ?>;
 font-family:<?php echo $this->config->get('theme_control_body_font') ?>;
 color:#<?php echo $this->config->get('theme_control_text_color') ?>;
}
#container_boxed {
 background-color:#<?php echo $this->config->get('theme_control_container_bg_color') ?>;
}
h1, h2, h3, h4 {
<?php $headerFont = $this->config->get('theme_control_headings_font');
$font = str_replace("+", " ", $headerFont);
?> font-family: '<?php echo $font; ?>';
color:#<?php echo $this->config->get('theme_control_headings_color') ?>;
}
.product-info .pricetag .new_price, .product-info .pricetag .promo_price, .info2 .price, .product_unit .price, .prod_hold .new_price, .product-info .new_price, .roundabout-moveable-item .pricetag, .roundabout-moveable-item div.prod_holder h3, .info .price2, .info .price {
	font-family: '<?php echo $font; ?>';
}
#container_boxed h1.heading-title span, #container_boxed h2.heading-title span {
	background-image:none;
}
#column-left .box .box-content, #column-right .box .box-content {
 background-color:#<?php echo $this->config->get('theme_control_column_box_color') ?>;
}
#column-left h3.heading-title span, #column-right h3.heading-title span {
 color:#<?php echo $this->config->get('theme_control_column_box_title') ?>;
}
a, a:visited {
 color:#<?php echo $this->config->get('theme_control_links_color') ?>;
}
a:hover, #footer ul li a:hover {
 color:#<?php echo $this->config->get('theme_control_links_color_hover') ?>;
}
#footer h3 {
 color:#<?php echo $this->config->get('theme_control_footer_box_title') ?>;
 border-bottom: 1px solid #<?php echo $this->config->get('theme_control_footer_link_border') ?>;
}
#header {
 color:#<?php echo $this->config->get('theme_control_header_text_color') ?>;
 <?php if(( $this->config->get('theme_control_header_bg_pattern') != null) && ($this->config->get('theme_control_header_bg_pattern') != 'pattern0.png')){ ?>
 background:url("catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/image/backgrounds/<?php echo  $this->config->get('theme_control_header_bg_pattern');?>") top center repeat;
 <?php } ?>
 background-color: #<?php echo $this->config->get('theme_control_header_bg_color') ?>;
}
#content_holder {
	<?php if(( $this->config->get('theme_control_content_bg_pattern') != null) && ($this->config->get('theme_control_content_bg_pattern') != 'pattern0.png')){ ?>
 background:url("catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/image/backgrounds/<?php echo  $this->config->get('theme_control_content_bg_pattern');?>") top center repeat;
 <?php } ?>
 background-color: #<?php echo $this->config->get('theme_control_content_background_color') ?>;
}
#footer {
	<?php if(( $this->config->get('theme_control_footer_bg_pattern') != null) && ($this->config->get('theme_control_footer_bg_pattern') != 'pattern0.png')){ ?>
 background:url("catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/image/backgrounds/<?php echo  $this->config->get('theme_control_footer_bg_pattern');?>") top center repeat;
 <?php } ?>
 background-color: #<?php echo $this->config->get('theme_control_footer_bg_color') ?>;
}
#footer ul li {
    border-right: 1px solid #<?php echo $this->config->get('theme_control_footer_link_border') ?>;
}
#footer .column_small, #facebook_holder, #footer .column_big {
	border-bottom: 1px solid #<?php echo $this->config->get('theme_control_footer_link_border') ?>;
}
#footer ul li a {
 color:#<?php echo $this->config->get('theme_control_footer_link_color') ?>;
}
ul.main_menu li a, ul.main_menu li.subico span {
 color:#<?php echo $this->config->get('theme_control_main_menu_color') ?>;
}
#menu_holder {
 background-color: #<?php echo $this->config->get('theme_control_category_menu_bg') ?>;
}
#pre_footer {
 background-color: #<?php echo $this->config->get('theme_control_prefooter_bg') ?>;	
}
.menu ul#topnav li a {
 color:#<?php echo $this->config->get('theme_control_category_menu_color') ?>;
}
.product-info .old_price {
 color:#<?php echo $this->config->get('theme_control_old_price_color') ?>;	
}
.product-info .product_price_sale .new_price, .product-info .new_price {
 color:#<?php echo $this->config->get('theme_control_main_price_color') ?>;	
}
a.button {
 color:#F9F9F9;
 background-color: #<?php echo $this->config->get('theme_control_buttons_color') ?>;	
}
a#button-cart {
 background-color: #<?php echo $this->config->get('theme_control_cart_button_color') ?>;	
}
<?php } ?>
</style>
</head>
<body>
<div id="<?php if(($this->config->get('theme_control_layout') != null) && ($this->config->get('theme_control_status') == '1')) { ?>
<?php echo $this->config->get('theme_control_layout') ?>
<?php } else { ?>
<?php echo "container"; ?>
<?php } ?>">
<!-- SIDEFEATURES -->
<div id="sidefeatures">
<div class="inner">
  <ul>
    <li class="side_cart"><span class="icon">Shopping Cart</span>
    <div class="heading">
          <h4><?php echo $text_cart; ?></h4>
          <a><span id="cart_total"><?php echo $text_items; ?></span></a></div>
      <div id="cart">
        <div class="content"></div>
      </div>
    </li>
    <li class="side_currency">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <div id="currency"><?php echo $text_currency; ?>
          <?php foreach ($currencies as $currency) { ?>
          <?php if ($currency['code'] == $currency_code) { ?>
          <?php if ($currency['symbol_left']) { ?>
          <a title="<?php echo $currency['title']; ?>"><b><?php echo $currency['symbol_left']; ?></b></a>
          <?php } else { ?>
          <a title="<?php echo $currency['title']; ?>"><b><?php echo $currency['symbol_right']; ?></b></a>
          <?php } ?>
          <?php } else { ?>
          <?php if ($currency['symbol_left']) { ?>
          <a title="<?php echo $currency['title']; ?>" onclick="$('input[name=\'currency_code\']').attr('value', '<?php echo $currency['code']; ?>').submit(); $(this).parent().parent().submit();"><?php echo $currency['symbol_left']; ?></a>
          <?php } else { ?>
          <a title="<?php echo $currency['title']; ?>" onclick="$('input[name=\'currency_code\']').attr('value', '<?php echo $currency['code']; ?>').submit(); $(this).parent().parent().submit();"><?php echo $currency['symbol_right']; ?></a>
          <?php } ?>
          <?php } ?>
          <?php } ?>
          <input type="hidden" name="currency_code" value="" />
          <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
        </div>
      </form>
    </li>
    <li class="side_lang">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <div id="language"><?php echo $text_language; ?>
          <?php foreach ($languages as $language) { ?>
          &nbsp;<img src="image/flags/<?php echo $language['image']; ?>" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>" onclick="$('input[name=\'language_code\']').attr('value', '<?php echo $language['code']; ?>').submit(); $(this).parent().parent().submit();" />
          <?php } ?>
          <input type="hidden" name="language_code" value="" />
          <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
        </div>
      </form>
    </li>
    <li class="side_search">
      <div id="search">
        <?php if ($filter_name) { ?>
        <input type="text" name="filter_name" value="<?php echo $filter_name; ?>" />
        <?php } else { ?>
        <input type="text" name="filter_name" value="<?php echo $text_search; ?>" onclick="this.value = '';" onkeydown="this.style.color = '#000000';" />
        <?php } ?>
        <div class="button-search"></div>
      </div>
    </li>
  </ul>
  </div>
</div>
<!-- END OF SIDEFEATURES --> 
<?php
$this->language->load('universe_custom/universe');
$text_compare = $this->language->get('text_compare');
$text_header_support = $this->language->get('text_header_support');
$text_header_skype = $this->language->get('text_header_skype');
?>
<!-- HEADER -->
<?php if($this->config->get('theme_control_preheader') == '1'){ ?>
<div id="pre_header">
  <div class="inner">
  
  <div class="phone_header">
  <p><?php echo $text_header_support; ?> <span><?php echo $telephone; ?></span></p>
  </div>
  

  
  <!-- AddThis Button BEGIN -->
          <div class="addthis_toolbox addthis_default_style "><script type="text/javascript">
      //<![CDATA[
            document.write('<a class="addthis_button_google_plusone" g:plusone:size="medium"></a> <a class="addthis_button_facebook_like" fb:like:layout="button_count"></a> <a class="addthis_button_tweet"></a>');
      //]]>
     </script> 
          </div>
          <script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#pubid=ra-4e7280075406aa87"></script> 
          <!-- AddThis Button END -->
  
  </div>
  </div>
<?php } ?>
<div id="header">
  <div class="inner">
    <?php
$this->language->load('common/footer');
$text_contact = $this->language->get('text_contact');
$text_information = $this->language->get('text_information');
?>
<?php if ($logo) { ?>
    <div id="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>
    <?php } ?>
    
    <div id="welcome">
      <?php if (!$logged) { ?>
      <?php echo $text_welcome; ?>
      <?php } else { ?>
      <?php echo $text_logged; ?>
      <?php } ?>
    </div>
    
    <ul class="main_menu">
      	  
      <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
      <li><a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></li>
      <li><a href="<?php echo $cart; ?>"><?php echo $text_cart; ?></a></li>
      <li><a href="<?php echo $compare; ?>"><?php echo $text_compare; ?></a></li>
      <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
      <li><a href="<?php echo $wishlist; ?>" id="wishlist_total"><?php echo $text_wishlist; ?></a></li>
      <li class="subico"><span><?php echo $text_information; ?></span>
        <ul class="secondary">
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
          <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
        </ul>
      </li>
      <li><a href="<?php echo $home; ?>"><?php echo $text_home; ?></a></li>
    </ul>
    <div class="clear"></div>
    <div id="notification"></div>
    </div>
    
  </div>
  
  <div id="menu_holder">
  <?php $menuType = $this->config->get('theme_control_menu'); ?>
  <?php if(($this->config->get('theme_control_menu') != null) && ($this->config->get('theme_control_status') == '1')){ ?>
  <div class="inner">
    <?php include $menuType; ?>
    <div class="clear"></div>
  </div>
  <?php } else { ?>
   <div class="inner">
    <?php include 'universe_menu.php'; ?>
    <div class="clear"></div>
  </div>   
  <?php } ?>
  </div>
  
<!-- END OF HEADER --> 
