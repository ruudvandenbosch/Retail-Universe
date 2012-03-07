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
    
  <!-- LEFT COLUMN -->
    <?php echo $column_left; ?>
    <!-- END OF LEFT COLUMN -->
    <!-- RIGHT COLUMN -->
    <?php echo $column_right; ?>
    <!-- END OF RIGHT COLUMN -->
    
    <div id="content" class="account-page-inner"> 
    
  <table class="list">
    <thead>
      <tr>
        <td class="left"><?php echo $text_return_id; ?></td>
        <td class="left"><?php echo $text_order_id; ?></td>
        <td class="left"><?php echo $text_date_ordered; ?></td>
        <td class="left"><?php echo $text_date_added; ?></td>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td class="left">#<?php echo $return_id; ?></td>
        <td class="left">#<?php echo $order_id; ?></td>
        <td class="left"><?php echo $date_ordered; ?></td>
        <td class="left"><?php echo $date_added; ?></td>
      </tr>
    </tbody>
  </table>
  <h2><?php echo $text_product; ?></h2>
  <table class="list">
    <thead>
      <tr>
        <td class="left"><?php echo $column_name; ?></td>
        <td class="left"><?php echo $column_model; ?></td>
        <td class="right"><?php echo $column_quantity; ?></td>
        <td class="left"><?php echo $column_reason; ?></td>
        <td class="left"><?php echo $column_opened; ?></td>
        <td class="left"><?php echo $column_comment; ?></td>
        <td class="left"><?php echo $column_action; ?></td>
      </tr>
    </thead>
    <tbody>
      <?php foreach ($products as $product) { ?>
      <tr>
        <td class="left"><?php echo $product['name']; ?></td>
        <td class="left"><?php echo $product['model']; ?></td>
        <td class="right"><?php echo $product['quantity']; ?></td>
        <td class="left"><?php echo $product['reason']; ?></td>
        <td class="left"><?php echo $product['opened']; ?></td>
        <td class="left"><?php echo $product['comment']; ?></td>
        <td class="left"><?php echo $product['action']; ?></td>
      </tr>
      <?php } ?>
    </tbody>
  </table>
  <?php if ($comment) { ?>
  <table class="list">
    <thead>
      <tr>
        <td class="left"><?php echo $text_comment; ?></td>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td class="left"><?php echo $comment; ?></td>
      </tr>
    </tbody>
  </table>
  <?php } ?>
  <?php if ($histories) { ?>
  <h2><?php echo $text_history; ?></h2>
  <table class="list">
    <thead>
      <tr>
        <td class="left"><?php echo $column_date_added; ?></td>
        <td class="left"><?php echo $column_status; ?></td>
        <td class="left"><?php echo $column_comment; ?></td>
      </tr>
    </thead>
    <tbody>
      <?php foreach ($histories as $history) { ?>
      <tr>
        <td class="left"><?php echo $history['date_added']; ?></td>
        <td class="left"><?php echo $history['status']; ?></td>
        <td class="left"><?php echo $history['comment']; ?></td>
      </tr>
      <?php } ?>
    </tbody>
  </table>
  <?php } ?>
  <div class="buttons">
    <div class="right"><a href="<?php echo $continue; ?>" class="button"><span><?php echo $button_continue; ?></span></a></div>
  </div>
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
<script type="text/javascript"><!--
$(document).ready(function(){
    if (document.getElementById("column-right")!= null) {
    $('#content').addClass("content-column-right");
	}
	});
//--></script>