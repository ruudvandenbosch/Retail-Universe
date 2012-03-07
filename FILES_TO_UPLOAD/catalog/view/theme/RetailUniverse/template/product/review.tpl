<?php if ($reviews) { ?>
<?php foreach ($reviews as $review) { ?>
<div class="content"><span><?php echo $review['author']; ?> | <?php echo $review['date_added']; ?></span>
<img src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/image/stars-<?php echo $review['rating'] . '.png'; ?>" alt="<?php echo $review['reviews']; ?>" />
  <br />
  <?php echo $review['text']; ?></div>
<?php } ?>
<div class="pagination"><?php echo $pagination; ?></div>
<?php } else { ?>
<div class="content"><?php echo $text_no_reviews; ?></div>
<?php } ?>
