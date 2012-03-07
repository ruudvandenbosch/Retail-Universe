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
    
    <div id="content">
  <div class="content info-page">  
  <?php echo $description; ?>
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