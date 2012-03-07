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
    
 
      <div class="content search-content">
      <h4><?php echo $text_critea; ?></h4>
        <p><?php echo $entry_search; ?>
          <?php if ($filter_name) { ?>
          <input type="text" name="filter_name" value="<?php echo $filter_name; ?>" />
          <?php } else { ?>
          <input type="text" name="filter_name" value="<?php echo $filter_name; ?>" onclick="this.value = '';" onkeydown="this.style.color = '000000'" style="color: #999;" />
          <?php } ?>
          <select name="filter_category_id">
            <option value="0"><?php echo $text_category; ?></option>
            <?php foreach ($categories as $category_1) { ?>
            <?php if ($category_1['category_id'] == $filter_category_id) { ?>
            <option value="<?php echo $category_1['category_id']; ?>" selected="selected"><?php echo $category_1['name']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $category_1['category_id']; ?>"><?php echo $category_1['name']; ?></option>
            <?php } ?>
            <?php foreach ($category_1['children'] as $category_2) { ?>
            <?php if ($category_2['category_id'] == $filter_category_id) { ?>
            <option value="<?php echo $category_2['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $category_2['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
            <?php } ?>
            <?php foreach ($category_2['children'] as $category_3) { ?>
            <?php if ($category_3['category_id'] == $filter_category_id) { ?>
            <option value="<?php echo $category_3['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $category_3['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
            <?php } ?>
            <?php } ?>
            <?php } ?>
            <?php } ?>
          </select>
          <?php if ($filter_sub_category) { ?>
          <input type="checkbox" name="filter_sub_category" value="1" id="sub_category" checked="checked" />
          <?php } else { ?>
          <input type="checkbox" name="filter_sub_category" value="1" id="sub_category" />
          <?php } ?>
          <label for="sub_category"><?php echo $text_sub_category; ?></label>
        </p>
        <?php if ($filter_description) { ?>
        <input type="checkbox" name="filter_description" value="1" id="description" checked="checked" />
        <?php } else { ?>
        <input type="checkbox" name="filter_description" value="1" id="description" />
        <?php } ?>
        <label for="description"><?php echo $entry_description; ?></label>
      </div>
      <div class="buttons">
        <div class="right"><a id="button-search" class="button"><span><?php echo $button_search; ?></span></a></div>
      </div>
      <h2 class="heading-title"><span><?php echo $text_search; ?></span></h2>
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
        <?php echo $content_bottom; ?> </div>
      <?php } else { ?>
      <div class="content"><?php echo $text_empty; ?></div>
      <?php }?>
      <?php echo $content_bottom; ?>
      </div>
  </div>
<script type="text/javascript"><!--
$('#content_holder input[name=\'filter_name\']').keydown(function(e) {
	if (e.keyCode == 13) {
		$('#button-search').trigger('click');
	}
});

$('#button-search').bind('click', function() {
	url = 'index.php?route=product/search';
	
	var filter_name = $('#content_holder input[name=\'filter_name\']').attr('value');
	
	if (filter_name) {
		url += '&filter_name=' + encodeURIComponent(filter_name);
	}

	var filter_category_id = $('#content_holder select[name=\'filter_category_id\']').attr('value');
	
	if (filter_category_id > 0) {
		url += '&filter_category_id=' + encodeURIComponent(filter_category_id);
	}
	
	var filter_sub_category = $('#content_holder input[name=\'filter_sub_category\']:checked').attr('value');
	
	if (filter_sub_category) {
		url += '&filter_sub_category=true';
	}
		
	var filter_description = $('#content_holder input[name=\'filter_description\']:checked').attr('value');
	
	if (filter_description) {
		url += '&filter_description=true';
	}

	location = url;
});
//--></script> 
<?php echo $footer; ?> 
<script type="text/javascript"><!--
$(document).ready(function(){
    if (document.getElementById("column-left")!= null) {
    $('#content').addClass("content-column-left");
	}
	});
//--></script> 
<script type="text/javascript"><!--
$(document).ready(function(){
    if (document.getElementById("column-right")!= null) {
    $('#content').addClass("content-column-right");
	}
	});
//--></script>