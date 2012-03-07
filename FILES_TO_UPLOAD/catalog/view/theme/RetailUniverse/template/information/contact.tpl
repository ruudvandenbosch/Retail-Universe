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
    <div id="column-left">
    
      <div class="box">
        <div class="box-content box-contact-details">
          <h3 class="heading-title"><span><?php echo $text_location; ?></span></h3>
          <ul>
            <li class="address"> <span><?php echo $text_address; ?></span><br />
              <?php echo $store; ?><br />
              <?php echo $address; ?> </li>
            <?php if ($telephone) { ?>
            <li class="phone"> <span><?php echo $text_telephone; ?></span><br />
              <?php echo $telephone; ?></li>
            <?php } ?>
            <?php if ($fax) { ?>
            <li class="fax"> <span><?php echo $text_fax; ?></span><br />
              <?php echo $fax; ?></li>
            <?php } ?>
          </ul>
          
          
          <?php
$this->language->load('universe_custom/universe');
$text_skype = $this->language->get('text_skype');
?>
<?php if(($this->config->get('theme_control_skype') != null) && ($this->config->get('theme_control_status') == '1')){ ?>          
 

<div class="skypeholder">

<p><?php echo $text_skype; ?></p>
   
    <!--
Skype 'My status' button
http://www.skype.com/go/skypebuttons
-->
<script type="text/javascript" src="http://download.skype.com/share/skypebuttons/js/skypeCheck.js"></script>
<a href="skype:<?php echo $this->config->get('theme_control_skype') ?>?<?php echo $this->config->get('theme_control_skype_mode') ?>"><img src="http://mystatus.skype.com/balloon/<?php echo $this->config->get('theme_control_skype') ?>" style="border: none;" width="150" height="60" alt="My status" /></a>

          
        </div>
        
<?php } ?> 
          
          </div>


      </div>
      
    </div>
    <!-- END OF LEFT COLUMN -->
    
    <div id="content" class="content-column-left">
      <div class="content contacts-page">
        <div class="box-contacts fixed">
        <div class="box-content">
        <div class="form">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="contact">
          <h2><?php echo $text_contact; ?></h2>
          <div class="content"> <span class="label"><?php echo $entry_name; ?></span>
            <input type="text" name="name" value="<?php echo $name; ?>" />
            <br />
            <?php if ($error_name) { ?>
            <span class="error"><?php echo $error_name; ?></span>
            <?php } ?>
            <br />
            <span class="label"><?php echo $entry_email; ?></span>
            <input type="text" name="email" value="<?php echo $email; ?>" />
            <br />
            <?php if ($error_email) { ?>
            <span class="error"><?php echo $error_email; ?></span>
            <?php } ?>
            <br />
            <span class="label"><?php echo $entry_enquiry; ?></span>
            <textarea name="enquiry" cols="40" rows="10" style="width: 99%;"><?php echo $enquiry; ?></textarea>
            <br />
            <?php if ($error_enquiry) { ?>
            <span class="error"><?php echo $error_enquiry; ?></span>
            <?php } ?>
            <br />
            <span class="label"><?php echo $entry_captcha; ?></span>
            <input type="text" name="captcha" value="<?php echo $captcha; ?>" />
            <br />
            <img id="captcha" src="index.php?route=information/contact/captcha" alt="" /> <br />
            <?php if ($error_captcha) { ?>
            <span class="error"><?php echo $error_captcha; ?></span>
            <?php } ?>
          </div>
          </div>
          </div>
          </div>
          <div class="clear"></div>
          <div class="buttons">
            <div class="left"><a onclick="$('#contact').submit();" class="button"><span><?php echo $button_continue; ?></span></a></div>
          </div>
        </form>
      </div>
    </div>
    <div class="clear"></div>
    <?php echo $content_bottom; ?> </div>
</div>
<?php echo $footer; ?>