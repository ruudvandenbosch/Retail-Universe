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
  
    <?php if ($success) { ?>
  <div class="success"><?php echo $success; ?></div>
  <?php } ?>
  <?php if ($error_warning) { ?>
  <div class="warning"><?php echo $error_warning; ?></div>
  <?php } ?>
  
  	<!-- LEFT COLUMN -->
    <?php echo $column_left; ?>
    <!-- END OF LEFT COLUMN -->
    <!-- RIGHT COLUMN -->
    <?php echo $column_right; ?>
    <!-- END OF RIGHT COLUMN -->
    
    <div id="content">
  
  
  
  <div class="content account-page">
  <div class="box-login">
  <div class="box-content fixed">
                
    <div class="left">
      <h6><?php echo $text_new_customer; ?></h6>        
        <p><?php echo $text_register_account; ?></p>
        <a href="<?php echo $register; ?>" class="button"><span><?php echo $button_continue; ?></span></a>
    </div>
    
    <div class="right">
      <h6><?php echo $text_returning_customer; ?></h6>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="login">          
          <span class="label"><?php echo $entry_email; ?></span>
          <input type="text" name="email" value="" />
          <br />
          <br />
          <span class="label"><?php echo $entry_password; ?></span>
          <input type="password" name="password" value="" />
          <a href="<?php echo $forgotten; ?>" class="forgotten"><?php echo $text_forgotten; ?></a>
          <a onclick="$('#login').submit();" class="button"><span><?php echo $button_login; ?></span></a>
          <?php if ($redirect) { ?>
          <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
          <?php } ?>
        
      </form>
      </div>
      
      
    </div>
    
  
  </div>
  </div>
  </div>
  
  
  
  <div class="clear"></div>
  <?php echo $content_bottom; ?>
  </div>
  </div>

<script type="text/javascript"><!--
$('#login input').keydown(function(e) {
	if (e.keyCode == 13) {
		$('#login').submit();
	}
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