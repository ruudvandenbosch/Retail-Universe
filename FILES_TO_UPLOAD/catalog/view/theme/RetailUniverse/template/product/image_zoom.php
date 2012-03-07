<?php if ($thumb) { ?>

<div class="image"><a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" class="cloud-zoom" id="zoom1" rel="adjustX: 5, adjustY:0, zoomWidth:494, zoomHeight:400, showTitle: false"> <img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" id="image" width="400" height="400" /> </a></div>
<?php } ?>
<?php if ($images) { ?>
<div class="image-additional">
  <div class="image_car_holder">
    <ul class="jcarousel-skin-opencart">
      <li> <a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" class='cloud-zoom-gallery' rel="useZoom: 'zoom1', smallImage: '<?php echo $thumb; ?>' "> <img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" width="66" height="66" /> </a> </li>
      <?php foreach ($images as $image) { ?>
      <li><a href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" class='cloud-zoom-gallery' rel="useZoom: 'zoom1', smallImage: '<?php echo $image['smallimage']; ?>' "> <img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /> </a></li>
      <?php } ?>
    </ul>
  </div>
  <script type="text/javascript"><!--
      $('.image-additional ul').jcarousel({
	  vertical: false,
	  visible: 4,
	  scroll: 1
      });
      //--></script> 
</div>
<?php } ?>
