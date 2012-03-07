<?php if ($products) { ?>

<?php
$this->language->load('universe_custom/universe');
$text_wish = $this->language->get('text_wish');
$text_compare = $this->language->get('text_compare');
$text_sale = $this->language->get('text_sale');
?>


<!-- FEATURED SLIDER -->
<?php if (($setting['position'] == 'content_top') || ($setting['position'] == 'content_bottom')){ ?>

<div class="box featured-box">
  <h2 class="heading-title"><span>Featured Products</span></h2>
  <div class="box-content">
    <ul id="myRoundabout">
      <?php foreach ($products as $product) { ?>
      <li>
        <div class="prod_holder">
          <?php if ($product['thumb']) { ?>
          <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['big_feature']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
          <?php } ?>
          <h3><?php echo $product['name']; ?></h3>
          
          <div class="info">
          
          <?php if ($product['price']) { ?>
        <?php if (!$product['special']) { ?>
        <span class="price"><?php echo $product['price']; ?></span>
        <?php } else { ?>
        <span class="old_price"><?php echo $product['price']; ?></span><span class="price2"><?php echo $product['special']; ?></span>
        <?php } ?>
        <?php } ?>
          
        <a class="more_info_small"  href="<?php echo $product['href']; ?>" title="More info...">More info...</a>
        <a class="add_to_cart_small" onclick="addToCart('<?php echo $product['product_id']; ?>');" title="<?php echo $button_cart; ?>"><?php echo $button_cart; ?></a> 
        <a class="wishlist_small" onclick="addToWishList('<?php echo $product['product_id']; ?>');" title="<?php echo $text_wish; ?>"><?php echo $text_wish; ?></a> 
        <a class="compare_small" onclick="addToCompare('<?php echo $product['product_id']; ?>');" title="<?php echo $text_compare; ?>"><?php echo $text_compare; ?></a>
        </div>
          
        </div>
        
      </li>
      <?php } ?>
    </ul>
    <a href="#" class="previous_round">Previous</a> <a href="#" class="next_round">Next</a> </div>
</div>
<script type="text/javascript">
   $(document).ready(function() {
		var interval;
		$('ul#myRoundabout')
		.roundabout({
		  	'btnNext': '.next_round',
			'btnPrev': '.previous_round' 
		  }
		  )
		.hover(
		function() {

		clearInterval(interval);
		},
		function() {

		interval = startAutoPlay();
		});

		interval = startAutoPlay();
		});
		function startAutoPlay() {
		return setInterval(function() {
		$('ul#myRoundabout').roundabout_animateToPreviousChild();
		}, 3000);
	} 
</script>
<!-- END OF FEATURED SLIDER -->

<?php } else { ?>
<div class="box">
<div class="box">
  <div class="box-content">
    <h3 class="heading-title"><span><?php echo $heading_title; ?></span></h3>
    <?php foreach ($products as $product) { ?>
    <div class="product_unit">
      <?php if ($product['thumb']) { ?>
      <a class="image" href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a>
      <?php } ?>
      <span class="name"><?php echo $product['name']; ?></span>
      <?php if ($product['price']) { ?>
      <?php if (!$product['special']) { ?>
      <span class="price"><?php echo $product['price']; ?></span>
      <?php } else { ?>
      <span class="price-old"><?php echo $product['price']; ?></span> <span class="price"><?php echo $product['special']; ?></span>
      <?php } ?>
      <?php } ?>
    </div>
    <?php } ?>
    <div class="clear"></div>
  </div>
</div>
<?php } ?>
<?php } ?>