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
    
  <?php foreach ($downloads as $download) { ?>
  <div class="download-list">
    <div class="download-id"><b><?php echo $text_order; ?></b> <?php echo $download['order_id']; ?></div>
    <div class="download-status"><b><?php echo $text_size; ?></b> <?php echo $download['size']; ?></div>
    <div class="download-content">
      <div><b><?php echo $text_name; ?></b> <?php echo $download['name']; ?><br />
        <b><?php echo $text_date_added; ?></b> <?php echo $download['date_added']; ?></div>
      <div><b><?php echo $text_remaining; ?></b> <?php echo $download['remaining']; ?></div>
      <div class="download-info">
        <?php if ($download['remaining'] > 0) { ?>
        <a href="<?php echo $download['href']; ?>" class="button"><span><?php echo $text_download; ?></span></a>
        <?php } ?>
      </div>
    </div>
  </div>
  <?php } ?>
  <div class="pagination"><?php echo $pagination; ?></div>
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