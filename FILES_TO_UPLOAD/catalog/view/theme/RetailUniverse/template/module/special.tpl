<?php
$this->language->load('universe_custom/universe');
$text_wish = $this->language->get('text_wish');
$text_compare = $this->language->get('text_compare');
$text_sale = $this->language->get('text_sale');
?>
<?php if (($setting['position'] == 'content_top') || ($setting['position'] == 'content_bottom')){ ?>

<div class="box">
  <h2 class="heading-title"><span><?php echo $heading_title; ?></span></h2>
  <div class="box-content">
    <div class="box-product fixed">
      <?php foreach ($products as $product) { ?>
      <div class="prod_hold">
        
        <div class="wrapping">
        <?php if ($product['thumb']) { ?>
        <a class="wrap_link"  href="<?php echo $product['href']; ?>"><span class="image"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></span></a>
        <?php if ($product['special']) { ?>
        <span class="sale"><?php echo $text_sale; ?></span>
        <?php } ?>
        <?php } ?>
        
        
        <div class="info">
        <a class="more_info_small"  href="<?php echo $product['href']; ?>" title="More info...">More info...</a>
        <a class="add_to_cart_small" onclick="addToCart('<?php echo $product['product_id']; ?>');" title="<?php echo $button_cart; ?>"><?php echo $button_cart; ?></a> 
        <a class="wishlist_small" onclick="addToWishList('<?php echo $product['product_id']; ?>');" title="<?php echo $text_wish; ?>"><?php echo $text_wish; ?></a> 
        <a class="compare_small" onclick="addToCompare('<?php echo $product['product_id']; ?>');" title="<?php echo $text_compare; ?>"><?php echo $text_compare; ?></a>
        </div>
        </div>
        
        
        
        <div class="info2">
        
        <?php if ($product['thumb']) { ?>
        <span class="image"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></span>
        <?php } ?>
        <span class="name"><?php echo $product['name']; ?></span>
        <p><?php echo $product['description']; ?></p>
        
        <?php if ($product['price']) { ?>
        
        <?php if (!$product['special']) { ?>
        <div class="price_hold">
        <span class="price"><?php echo $product['price']; ?></span>
        </div>
        <?php } else { ?>
        
        <div class="price_hold">        
        <span class="old_price"><?php echo $product['price']; ?></span> <span class="price"><?php echo $product['special']; ?></span>
        </div>
        <?php } ?>
        
        <?php } ?>
        
        </div>
          
          
          
      </div>
      <?php } ?>
    </div>
  </div>
</div>


<?php } else { ?>
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
