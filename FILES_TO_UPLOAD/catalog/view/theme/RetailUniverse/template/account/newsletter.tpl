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
    
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="newsletter">
    <div class="content">
      <table class="form">
        <tr>
          <td><?php echo $entry_newsletter; ?></td>
          <td><?php if ($newsletter) { ?>
            <input type="radio" name="newsletter" value="1" checked="checked" />
            <?php echo $text_yes; ?>&nbsp;
            <input type="radio" name="newsletter" value="0" />
            <?php echo $text_no; ?>
            <?php } else { ?>
            <input type="radio" name="newsletter" value="1" />
            <?php echo $text_yes; ?>&nbsp;
            <input type="radio" name="newsletter" value="0" checked="checked" />
            <?php echo $text_no; ?>
            <?php } ?></td>
        </tr>
      </table>
    </div>
    <div class="buttons">
      <div class="left"><a href="<?php echo $back; ?>" class="button"><span><?php echo $button_back; ?></span></a></div>
      <div class="right"><a onclick="$('#newsletter').submit();" class="button"><span><?php echo $button_continue; ?></span></a></div>
    </div>
  </form>
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