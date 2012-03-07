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
    
    <!-- PRODUCT INFO -->
    <div class="product-info fixed">
      <?php if ($thumb || $images) { ?>
      <div class="left">
        
        
        <?php $imagePreviewType = $this->config->get('theme_control_preview'); ?>
        <?php if(($this->config->get('theme_control_preview') != null) && ($this->config->get('theme_control_status') == '1')){ ?>
    	<?php include $imagePreviewType; ?>
        <?php } else { ?>
        <?php include 'image_fancy.php'; ?>
  		<?php } ?>
        
        
      </div>
      <?php } ?>
      <div class="right">
      
      
		  <?php if ($price) { ?>
          
          
          <?php if (!$special) { ?>
          <div class="product_price">
          <div class="pricetag">
          <span class="new_price"><?php echo $price; ?></span>
          </div>

          <div class="price">
          <?php if ($tax) { ?>
          <span class="price-tax"><?php echo $text_tax; ?> <?php echo $tax; ?></span><br />
          <?php } ?>
          <?php if ($points) { ?>
          <span class="reward"><small><?php echo $text_points; ?> <?php echo $points; ?></small></span> <br />
          <?php } ?>
          <?php if ($discounts) { ?>
          <br />
          <div class="discount">
            <?php foreach ($discounts as $discount) { ?>
            <?php echo sprintf($text_discount, $discount['quantity'], $discount['price']); ?><br />
            <?php } ?>
          </div>
          <?php } ?>
        </div>
          </div>
          <?php } else { ?>
          <div class="product_price_sale">
          <div class="pricetag">
          <span class="old_price"><?php echo $price; ?></span> <span class="new_price"><?php echo $special; ?></span>
          </div>

          <div class="price">
          <?php if ($tax) { ?>
          <span class="price-tax"><?php echo $text_tax; ?> <?php echo $tax; ?></span><br />
          <?php } ?>
          <?php if ($points) { ?>
          <span class="reward"><small><?php echo $text_points; ?> <?php echo $points; ?></small></span> <br />
          <?php } ?>
          <?php if ($discounts) { ?>
          <br />
          <div class="discount">
            <?php foreach ($discounts as $discount) { ?>
            <?php echo sprintf($text_discount, $discount['quantity'], $discount['price']); ?><br />
            <?php } ?>
          </div>
          <?php } ?>
        </div>
        
          </div>
          <?php } ?>
          
          
          
          <?php } ?>
			
            
            
             
        
        
            
            
            
            
      
        <div class="description">
          <?php if ($manufacturer) { ?>
          <span><?php echo $text_manufacturer; ?></span> <a href="<?php echo $manufacturers; ?>"><?php echo $manufacturer; ?></a><br />
          <?php } ?>
          <span><?php echo $text_model; ?></span> <?php echo $model; ?><br />
          <span><?php echo $text_reward; ?></span> <?php echo $reward; ?><br />
          <span><?php echo $text_stock; ?></span> <?php echo $stock; ?> 
          
          <!-- AddThis Button BEGIN -->
          <div class="addthis_toolbox addthis_default_style "><script type="text/javascript">
      //<![CDATA[
            document.write('<a class="addthis_button_google_plusone" g:plusone:size="medium"></a> <a class="addthis_button_tweet"></a> <a class="addthis_button_facebook_like" fb:like:layout="button_count"></a>');
      //]]>
     </script> 
          </div>
          <script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#pubid=ra-4e7280075406aa87"></script> 
          <!-- AddThis Button END -->
          
          <?php if ($review_status) { ?>
          <div class="reviews"> <img src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/image/stars-<?php echo $rating; ?>.png" alt="<?php echo $reviews; ?>" />
            <p>Based on <?php echo $reviews; ?></p>
          </div>
          <?php } ?>
        </div>
       
        <?php if ($options) { ?>
        <div class="options">
          <?php foreach ($options as $option) { ?>
          <?php if ($option['type'] == 'select') { ?>
          <div id="option-<?php echo $option['product_option_id']; ?>" class="option"><b>
            <?php if ($option['required']) { ?>
            <span class="required">*</span>
            <?php } ?>
            <?php echo $option['name']; ?>:</b>
            <select name="option[<?php echo $option['product_option_id']; ?>]">
              <option value=""><?php echo $text_select; ?></option>
              <?php foreach ($option['option_value'] as $option_value) { ?>
              <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
              <?php if ($option_value['price']) { ?>
              (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
              <?php } ?>
              </option>
              <?php } ?>
            </select>
          </div>
          <br />
          <?php } ?>
          <?php if ($option['type'] == 'radio') { ?>
          <div id="option-<?php echo $option['product_option_id']; ?>" class="option"><b>
            <?php if ($option['required']) { ?>
            <span class="required">*</span>
            <?php } ?>
            <?php echo $option['name']; ?>:</b>
            <?php foreach ($option['option_value'] as $option_value) { ?>
            <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />
            <label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
              <?php if ($option_value['price']) { ?>
              (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
              <?php } ?>
            </label>
            <br />
            <?php } ?>
          </div>
          <br />
          <?php } ?>
          <?php if ($option['type'] == 'checkbox') { ?>
          <div id="option-<?php echo $option['product_option_id']; ?>" class="option"><b>
            <?php if ($option['required']) { ?>
            <span class="required">*</span>
            <?php } ?>
            <?php echo $option['name']; ?>:</b>
            <?php foreach ($option['option_value'] as $option_value) { ?>
            <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />
            <label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
              <?php if ($option_value['price']) { ?>
              (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
              <?php } ?>
            </label>
            <br />
            <?php } ?>
          </div>
          <br />
          <?php } ?>
          <?php if ($option['type'] == 'image') { ?>
          <div id="option-<?php echo $option['product_option_id']; ?>" class="option"><b>
            <?php if ($option['required']) { ?>
            <span class="required">*</span>
            <?php } ?>
            <?php echo $option['name']; ?>:</b>
            <table class="option-image">
              <?php foreach ($option['option_value'] as $option_value) { ?>
              <tr>
                <td style="width: 1px;"><input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" /></td>
                <td><label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" /></label></td>
                <td><label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label></td>
              </tr>
              <?php } ?>
            </table>
          </div>
          <br />
          <?php } ?>
          <?php if ($option['type'] == 'text') { ?>
          <div id="option-<?php echo $option['product_option_id']; ?>" class="option"><b>
            <?php if ($option['required']) { ?>
            <span class="required">*</span>
            <?php } ?>
            <?php echo $option['name']; ?>:</b>
            <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" />
          </div>
          <br />
          <?php } ?>
          <?php if ($option['type'] == 'textarea') { ?>
          <div id="option-<?php echo $option['product_option_id']; ?>" class="option"><b>
            <?php if ($option['required']) { ?>
            <span class="required">*</span>
            <?php } ?>
            <?php echo $option['name']; ?>:</b>
            <textarea name="option[<?php echo $option['product_option_id']; ?>]" cols="40" rows="5"><?php echo $option['option_value']; ?></textarea>
          </div>
          <br />
          <?php } ?>
          <?php if ($option['type'] == 'file') { ?>
          <div id="option-<?php echo $option['product_option_id']; ?>" class="option"><b>
            <?php if ($option['required']) { ?>
            <span class="required">*</span>
            <?php } ?>
            <?php echo $option['name']; ?>:</b> <a id="button-option-<?php echo $option['product_option_id']; ?>" class="button"><span><?php echo $button_upload; ?></span></a>
            <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" />
          </div>
          <br />
          <?php } ?>
          <?php if ($option['type'] == 'date') { ?>
          <div id="option-<?php echo $option['product_option_id']; ?>" class="option"><b>
            <?php if ($option['required']) { ?>
            <span class="required">*</span>
            <?php } ?>
            <?php echo $option['name']; ?>:</b>
            <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="date" />
          </div>
          <br />
          <?php } ?>
          <?php if ($option['type'] == 'datetime') { ?>
          <div id="option-<?php echo $option['product_option_id']; ?>" class="option"><b>
            <?php if ($option['required']) { ?>
            <span class="required">*</span>
            <?php } ?>
            <?php echo $option['name']; ?>:</b>
            <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="datetime" />
          </div>
          <br />
          <?php } ?>
          <?php if ($option['type'] == 'time') { ?>
          <div id="option-<?php echo $option['product_option_id']; ?>" class="option"><b>
            <?php if ($option['required']) { ?>
            <span class="required">*</span>
            <?php } ?>
            <?php echo $option['name']; ?>:</b>
            <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="time" />
          </div>
          <br />
          <?php } ?>
          <?php } ?>
        </div>
        <?php } ?>
        <div class="cart"> <span class="label"><?php echo $text_qty; ?></span>
          <input type="text" name="quantity" size="2" value="<?php echo $minimum; ?>" id="qty"/>
          <input type="hidden" name="product_id" size="2" value="<?php echo $product_id; ?>" />
          <a id="button-cart" class="button" title="<?php echo $button_cart; ?>"><span><?php echo $button_cart; ?></span></a> <a onclick="addToWishList('<?php echo $product_id; ?>');" class="wish_button" title="<?php echo $button_wishlist; ?>"><?php echo $button_wishlist; ?></a> <a onclick="addToCompare('<?php echo $product_id; ?>');" class="compare_button" title="<?php echo $button_compare; ?>"><?php echo $button_compare; ?></a>
          <?php if ($minimum > 1) { ?>
          <div class="minimum"><?php echo $text_minimum; ?></div>
          <?php } ?>
        </div>
        <?php if ($tags) { ?>
        <div class="tags"> <span class="label"><?php echo $text_tags; ?></span>
          <?php foreach ($tags as $tag) { ?>
          <a href="<?php echo $tag['href']; ?>"><?php echo $tag['tag']; ?></a>
          <?php } ?>
        </div>
        <?php } ?>
      </div>
    </div>
    
    <!-- END OF PRODUCT INFO -->
    
    <div id="content">
      <div class="box">
        <h2 class="heading-title"><span><?php echo $tab_description; ?></span></h2>
        <div class="box-content"> <?php echo $description; ?> </div>
      </div>
      <?php if ($attribute_groups) { ?>
      <div class="box">
        <h2 class="heading-title"><span><?php echo $tab_attribute; ?></span></h2>
        <div class="box-content">
          <table class="attribute">
            <?php foreach ($attribute_groups as $attribute_group) { ?>
            <thead>
              <tr>
                <td colspan="2"><?php echo $attribute_group['name']; ?></td>
              </tr>
            </thead>
            <tbody>
              <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
              <tr>
                <td><?php echo $attribute['name']; ?></td>
                <td><?php echo $attribute['text']; ?></td>
              </tr>
              <?php } ?>
            </tbody>
            <?php } ?>
          </table>
        </div>
      </div>
      <?php } ?>
      <?php if ($review_status) { ?>
      <div class="box">
        <h2 class="heading-title"><span><?php echo $tab_review; ?></span></h2>
        <div class="box-content box-rating"> <a class="comment_switch" href="#"> <span class="button_comments">View Comments</span> <span class="button_review">Write Review</span> </a>
          <div class="box-comments">
            <div id="review"></div>
          </div>
          <div class="box-write">
            <div id="review"></div>
            <h3 id="review-title"><?php echo $text_write; ?></h3>
            <span class="label"><?php echo $entry_name; ?></span>
            <input type="text" name="name" value="" />
            <br />
            <br />
            <span class="label"><?php echo $entry_review; ?></span>
            <textarea name="text" style="width: 98%;" rows="10" cols="40"></textarea>
            <span style="font-size: 11px;"><?php echo $text_note; ?></span><br />
            <br />
            <span class="label"><strong><?php echo $entry_rating; ?></strong></span> <span><?php echo $entry_bad; ?></span>&nbsp;
            <input type="radio" name="rating" value="1" />
            &nbsp;
            <input type="radio" name="rating" value="2" />
            &nbsp;
            <input type="radio" name="rating" value="3" />
            &nbsp;
            <input type="radio" name="rating" value="4" />
            &nbsp;
            <input type="radio" name="rating" value="5" />
            &nbsp; <span><?php echo $entry_good; ?></span><br />
            <br />
            <span class="label"><?php echo $entry_captcha; ?></span>
            <input type="text" name="captcha" value="" />
            <br />
            <img src="index.php?route=product/product/captcha" alt="" id="captcha" /><br />
            <br />
            <div class="buttons">
              <div class="left"><a id="button-review" class="button"><span><?php echo $button_continue; ?></span></a></div>
            </div>
          </div>
        </div>
      </div>
      <?php } ?>
      <?php if ($products) { ?>
      <?php
$this->language->load('universe_custom/universe');
$text_wish = $this->language->get('text_wish');
$text_compare = $this->language->get('text_compare');
$text_sale = $this->language->get('text_sale');
?>
      <div>
        <h2 class="heading-title"><span><?php echo $tab_related; ?> (<?php echo count($products); ?>)</span></h2>
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
      <?php } ?>
    </div>
    <?php echo $content_bottom; ?> </div>
  <!-- END OF CONTENT INNER --> 
</div>
<!-- END OF CONTENT --> 
<script type="text/javascript"><!--
$('.fancybox').fancybox({cyclic: true});
//--></script> 
<script type="text/javascript"><!--
$('#button-cart').bind('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/update',
		type: 'post',
		data: $('.product-info input[type=\'text\'], .product-info input[type=\'hidden\'], .product-info input[type=\'radio\']:checked, .product-info input[type=\'checkbox\']:checked, .product-info select, .product-info textarea'),
		dataType: 'json',
		success: function(json) {
			$('.success, .warning, .attention, information, .error').remove();
			
			if (json['error']) {
				if (json['error']['warning']) {
					$('#notification').html('<div class="warning" style="display: none;">' + json['error']['warning'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
				
					$('.warning').fadeIn('slow');
				}
				
				for (i in json['error']) {
					$('#option-' + i).after('<span class="error">' + json['error'][i] + '</span>');
				}
			}	 
						
			if (json['success']) {
				$('#notification').html('<div class="success" style="display: none;">' + json['success'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
					
				$('.success').fadeIn('slow');
					
				$('#cart_total').html(json['total']);
				
				$('html, body').animate({ scrollTop: 0 }, 'slow'); 
			}	
		}
	});
});
//--></script>
<?php if ($options) { ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/ajaxupload.js"></script>
<?php foreach ($options as $option) { ?>
<?php if ($option['type'] == 'file') { ?>
<script type="text/javascript"><!--
new AjaxUpload('#button-option-<?php echo $option['product_option_id']; ?>', {
	action: 'index.php?route=product/product/upload',
	name: 'file',
	autoSubmit: true,
	responseType: 'json',
	onSubmit: function(file, extension) {
		$('#button-option-<?php echo $option['product_option_id']; ?>').after('<img src="catalog/view/theme/default/image/loading.gif" class="loading" style="padding-left: 5px;" />');
	},
	onComplete: function(file, json) {
		$('.error').remove();
		
		if (json.success) {
			alert(json.success);
			
			$('input[name=\'option[<?php echo $option['product_option_id']; ?>]\']').attr('value', json.file);
		}
		
		if (json.error) {
			$('#option-<?php echo $option['product_option_id']; ?>').after('<span class="error">' + json.error + '</span>');
		}
		
		$('.loading').remove();	
	}
});
//--></script>
<?php } ?>
<?php } ?>
<?php } ?>
<script type="text/javascript"><!--
$('#review .pagination a').live('click', function() {
	$('#review').slideUp('slow');
		
	$('#review').load(this.href);
	
	$('#review').slideDown('slow');
	
	return false;
});			

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').bind('click', function() {
	$.ajax({
		type: 'POST',
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		dataType: 'json',
		data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : '') + '&captcha=' + encodeURIComponent($('input[name=\'captcha\']').val()),
		beforeSend: function() {
			$('.success, .warning').remove();
			$('#button-review').attr('disabled', true);
			$('#review-title').after('<div class="attention"><img src="catalog/view/theme/default/image/loading.gif" alt="" /> <?php echo $text_wait; ?></div>');
		},
		complete: function() {
			$('#button-review').attr('disabled', false);
			$('.attention').remove();
		},
		success: function(data) {
			if (data.error) {
				$('#review-title').after('<div class="warning">' + data.error + '</div>');
			}
			
			if (data.success) {
				$('#review-title').after('<div class="success">' + data.success + '</div>');
								
				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').attr('checked', '');
				$('input[name=\'captcha\']').val('');
			}
		}
	});
});
//--></script> 
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-timepicker-addon.js"></script> 
<script type="text/javascript"><!--
if ($.browser.msie && $.browser.version == 6) {
	$('.date, .datetime, .time').bgIframe();
}

$('.date').datepicker({dateFormat: 'yy-mm-dd'});
$('.datetime').datetimepicker({
	dateFormat: 'yy-mm-dd',
	timeFormat: 'h:m'
});
$('.time').timepicker({timeFormat: 'h:m'});
//--></script> 
<script type="text/javascript"><!--
$(document).ready(function(){

    $("a.comment_switch").toggle(function(){
        $(this).addClass("swap");
        $(".box-rating").fadeOut("fast", function() {
            $(this).fadeIn("fast").addClass("box-review");
        });
    }, function () {
        $(this).removeClass("swap");
        $(".box-rating").fadeOut("fast", function() {
            $(this).fadeIn("fast").removeClass("box-review");
        });
    });

});
//--></script> 
<?php echo $footer; ?>