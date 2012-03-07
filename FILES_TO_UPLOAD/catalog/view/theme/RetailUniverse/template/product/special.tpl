<?php
$this->language->load('universe_custom/universe');
$text_wish = $this->language->get('text_wish');
$text_compare = $this->language->get('text_compare');
$text_sale = $this->language->get('text_sale');
?> 
<?php echo $header; ?>

<div id="content_holder" class="fixed">
  <div class="inner">
    
    <div class="breadcrumb">
      <?php foreach ($breadcrumbs as $breadcrumb) { ?>
      <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
      <?php } ?>
    </div>
    
    <h1 class="heading-title"><span><?php echo $heading_title; ?></span></h1>
  
  <?php echo $content_top; ?>
  
    
   <?php if ($products) { ?>
    
    <div class="product-filter">
    <div class="product-compare"><a href="<?php echo $compare; ?>" id="compare_total"><?php echo $text_compare; ?></a></div>
      
      <div class="limit"><b><?php echo $text_limit; ?></b>
        <select onchange="location = this.value;">
          <?php foreach ($limits as $limits) { ?>
          <?php if ($limits['value'] == $limit) { ?>
          <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
          <?php } else { ?>
          <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
          <?php } ?>
          <?php } ?>
        </select>
      </div>
      <div class="sort"><b><?php echo $text_sort; ?></b>
        <select onchange="location = this.value;">
          <?php foreach ($sorts as $sorts) { ?>
          <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
          <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
          <?php } else { ?>
          <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
          <?php } ?>
          <?php } ?>
        </select>
      </div>
    </div>
    
    <!-- LEFT COLUMN -->
    <?php echo $column_left; ?>
    <!-- END OF LEFT COLUMN -->
    
    <div id="content">
    
    <div class="cat_list fixed">
      
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
    <div class="pagination"><?php echo $pagination; ?></div>
  <?php } else { ?>
  <div class="content"><?php echo $text_empty; ?></div>
  <?php }?>
  <?php echo $content_bottom; ?>
  </div>
  </div>
  </div>

<?php echo $footer; ?>
<script type="text/javascript"><!--
$(document).ready(function(){
    if (document.getElementById("column-left")!= null) {
    $('#content').addClass("content-column-left");
	}
	});
//--></script>