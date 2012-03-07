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
    
  <?php if ($error_warning) { ?>
  <div class="warning"><?php echo $error_warning; ?></div>
  <?php } ?>
  
  <!-- LEFT COLUMN -->
    <?php echo $column_left; ?>
    <!-- END OF LEFT COLUMN -->
    <!-- RIGHT COLUMN -->
    <?php echo $column_right; ?>
    <!-- END OF RIGHT COLUMN -->
    
    <div id="content" class="account-page-inner"> 
  
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="forgotten">
    
    
    <div class="content">
    <h4><?php echo $text_your_email; ?></h4>
    <p><?php echo $text_email; ?></p>
      <table class="form">
        <tr>
          <td><?php echo $entry_email; ?></td>
          <td><input type="text" name="email" value="" /></td>
        </tr>
      </table>
    </div>
    <div class="buttons">
      <div class="left"><a href="<?php echo $back; ?>" class="button"><span><?php echo $button_back; ?></span></a></div>
      <div class="right"><a onclick="$('#forgotten').submit();" class="button"><span><?php echo $button_continue; ?></span></a></div>
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