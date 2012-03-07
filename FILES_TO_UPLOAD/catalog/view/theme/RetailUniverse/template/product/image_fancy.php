<?php if ($thumb) { ?>

<div class="image"><a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" class="fancybox" rel="fancybox"><img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" id="image" width="400" height="400" /></a></div>
<?php } ?>
<?php if ($images) { ?>
<div class="image-additional-fancy">
  <?php foreach ($images as $image) { ?>
  <a href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" class="fancybox" rel="fancybox"><img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a>
  <?php } ?>
</div>
<?php } ?>
