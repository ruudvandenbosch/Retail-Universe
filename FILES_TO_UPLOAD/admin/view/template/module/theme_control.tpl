<?php echo $header; ?>

<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <?php if ($error_warning) { ?>
  <div class="warning"><?php echo $error_warning; ?></div>
  <?php } ?>
  <div class="box fixed">
    <div class="heading">
      <h1><?php echo $heading_title; ?></h1>
      <div class="buttons"><a onclick="$('#form').submit();" class="button"><span><?php echo $button_save; ?></span></a><a onclick="location = '<?php echo $cancel; ?>';" class="button"><span><?php echo $button_cancel; ?></span></a></div>
    </div>
  </div>
  <div class="box fixed">
  <div id="tabs" class="htabs"> <a href="#tab_layout">Layout and skin settings</a> <a href="#tab_color">Common Colors</a> <a href="#tab_header">Header Colors</a> <a href="#tab_container">Content Colors</a> <a href="#tab_footer">Footer Colors</a> <a href="#tab_product">Product Page Settings</a> <a href="#tab_fonts">Fonts</a> <a href="#tab_social">Social Media</a> <a href="#tab_cards">Payment icons</a> </div>
  <div class="htabs-content" id="tab_layout">
  <h2 class="layout"><span>Layout and skin settings</span></h2>
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
    <table class="form">
      <tr>
        <td>Boxed or full width layout</td>
        <td><select name="theme_control_layout" class="spicy">
            <?php if (isset($theme_control_layout)) {
              $selected4 = 'selected="selected"';
              ?>
            <option value="container" <?php if($theme_control_layout=='container'){echo $selected4;} ?>>Full width</option>
            <option value="container_boxed" <?php if($theme_control_layout=='container_boxed'){echo $selected4;} ?>>Boxed layout</option>
            <?php } else { ?>
            <option value="container" selected="selected">Full width</option>
            <option value="container_boxed">Boxed layout</option>
            <?php } ?>
          </select>
          <span class="default_value">Default value: Full width</span></td>
      </tr>
      <tr>
        <td>Choose skin</td>
        <td><select name="theme_control_skin" class="spicy">
            <?php if (isset($theme_control_skin)) {
              $selected5 = 'selected="selected"';
              ?>
            <option value="stylesheet" <?php if($theme_control_skin=='stylesheet'){echo $selected5;} ?>>Default Light skin</option>
            <option value="stylesheet_dark" <?php if($theme_control_skin=='stylesheet_dark'){echo $selected5;} ?>>Dark monochrome</option>
            <option value="stylesheet_shady" <?php if($theme_control_skin=='stylesheet_shady'){echo $selected5;} ?>>Shady</option>
            <option value="stylesheet_christmas" <?php if($theme_control_skin=='stylesheet_christmas'){echo $selected5;} ?>>Christmas skin</option>
            <?php } else { ?>
            <option value="stylesheet" selected="selected">Default Light skin</option>
            <option value="stylesheet_dark">Dark monochrome</option>
            <option value="stylesheet_shady">Shady</option>
            <option value="stylesheet_christmas">Christmas Skin</option>
            <?php } ?>
          </select></td>
      </tr>
      <tr>
        <td>Choose Menu Type</td>
        <td><select name="theme_control_menu" class="spicy">
            <?php if (isset($theme_control_menu)) {
              $selected6 = 'selected="selected"';
              ?>
            <option value="universe_menu.php" <?php if($theme_control_menu=='universe_menu.php'){echo $selected6;} ?>>Universe Custom Menu</option>
            <option value="drop_menu.php" <?php if($theme_control_menu=='drop_menu.php'){echo $selected6;} ?>>Clasic 3 level drop-down</option>
            <option value="oc_menu.php" <?php if($theme_control_menu=='oc_menu.php'){echo $selected6;} ?>>OpenCart default menu</option>
            <?php } else { ?>
            <option value="universe_menu.php" selected="selected">Universe Custom Menu</option>
            <option value="drop_menu.php">Clasic 3 level drop-down</option>
            <option value="oc_menu.php">OpenCart default menu</option>
            <?php } ?>
          </select></td>
      </tr>
      <tr>
        <td>Pre-header social & contacts bar</td>
        <td><select name="theme_control_preheader" class="spicy">
            <?php if (isset($theme_control_preheader)) {
              $selected33 = 'selected="selected"';
              ?>
            <option value="0" <?php if($theme_control_preheader=='0'){echo $selected4;} ?>>Disabled</option>
            <option value="1" <?php if($theme_control_preheader=='1'){echo $selected4;} ?>>Enabled</option>
            <?php } else { ?>
            <option value="0" selected="selected">Disabled</option>
            <option value="1">Enabled</option>
            <?php } ?>
          </select>
          <span class="default_value">Enable or disable the top page bar with phone number and social share buttons.</span></td>
      </tr>
    </table>
    <span class="helper"><strong>*</strong>The skins are pre-made variations of the theme but still fully customizable. You can change whatever you need to match your brand look and feel. If you don't like the changes and would like to start over with the default styles, just make sure all color and background fields are empty and click on SAVE button to restore the initial skin settings.</span>
    </div>
    <div class="htabs-content" id="tab_color">
      <h2 class="colors"><span>Common Color Settings</span></h2>
      <p>Click inside the field and choose a color. When ready, click on the circle icon in lower-right corner. <span class="helper"><strong>*</strong>Default values will be used for empty fields!</span></p>
      <table class="form">
      <tr>
          <td>Body background color</td>
          <td><input id="theme_control_body_bg_color" type="text" name="theme_control_body_bg_color" value="<?php echo $theme_control_body_bg_color; ?>" class="spicy" >
            <span class="default_value">Default value: FFFFFF</span></td>
        </tr>
        <tr>
          <td>Body background pattern</td>
          <td><select name="theme_control_body_bg_pattern" class="spicy">
              <?php if (isset($theme_control_body_bg_pattern)) {
                    $selected3 = 'selected="selected"';
            ?>
              <option value="pattern0.png" <?php if($theme_control_body_bg_pattern=='pattern0.png'){echo $selected3;} ?>>No pattern</option>
              <option value="pattern1.png" <?php if($theme_control_body_bg_pattern=='pattern1.png'){echo $selected3;} ?>>Pattern 1</option>
              <option value="pattern2.png" <?php if($theme_control_body_bg_pattern=='pattern2.png'){echo $selected3;} ?>>Pattern 2</option>
              <option value="pattern3.png" <?php if($theme_control_body_bg_pattern=='pattern3.png'){echo $selected3;} ?>>Pattern 3</option>
              <option value="pattern4.png" <?php if($theme_control_body_bg_pattern=='pattern4.png'){echo $selected3;} ?>>Pattern 4</option>
              <option value="pattern5.png" <?php if($theme_control_body_bg_pattern=='pattern5.png'){echo $selected3;} ?>>Pattern 5</option>
              <option value="pattern6.png" <?php if($theme_control_body_bg_pattern=='pattern6.png'){echo $selected3;} ?>>Pattern 6</option>
              <option value="pattern7.png" <?php if($theme_control_body_bg_pattern=='pattern7.png'){echo $selected3;} ?>>Pattern 7</option>
              <option value="pattern8.png" <?php if($theme_control_body_bg_pattern=='pattern8.png'){echo $selected3;} ?>>Pattern 8</option>
              <option value="pattern9.png" <?php if($theme_control_body_bg_pattern=='pattern9.png'){echo $selected3;} ?>>Pattern 9</option>
              <option value="pattern10.png" <?php if($theme_control_body_bg_pattern=='pattern10.png'){echo $selected3;} ?>>Pattern 10</option>
              <option value="pattern11.png" <?php if($theme_control_body_bg_pattern=='pattern11.png'){echo $selected3;} ?>>Brown wood vertical</option>
              <option value="pattern12.png" <?php if($theme_control_body_bg_pattern=='pattern12.png'){echo $selected3;} ?>>Pattern 12</option>
              <option value="pattern13.png" <?php if($theme_control_body_bg_pattern=='pattern13.png'){echo $selected3;} ?>>Pattern 13</option>
              <option value="pattern14.png" <?php if($theme_control_body_bg_pattern=='pattern14.png'){echo $selected3;} ?>>Pattern 14</option>
              <option value="pattern15.png" <?php if($theme_control_body_bg_pattern=='pattern15.png'){echo $selected3;} ?>>Pattern 15</option>
              <option value="pattern16.png" <?php if($theme_control_body_bg_pattern=='pattern16.png'){echo $selected3;} ?>>Pattern 16</option>
              <option value="pattern17.png" <?php if($theme_control_body_bg_pattern=='pattern17.png'){echo $selected3;} ?>>Pattern 17</option>
              <option value="pattern18.png" <?php if($theme_control_body_bg_pattern=='pattern18.png'){echo $selected3;} ?>>Pattern 18</option>
              <option value="pattern19.png" <?php if($theme_control_body_bg_pattern=='pattern19.png'){echo $selected3;} ?>>Pattern 19</option>
              <option value="pattern20.png" <?php if($theme_control_body_bg_pattern=='pattern20.png'){echo $selected3;} ?>>Pattern 20</option>
              <option value="pattern21.png" <?php if($theme_control_body_bg_pattern=='pattern21.png'){echo $selected3;} ?>>Pattern 21</option>
              <option value="pattern22.png" <?php if($theme_control_body_bg_pattern=='pattern22.png'){echo $selected3;} ?>>Pattern 22</option>
              <option value="pattern23.png" <?php if($theme_control_body_bg_pattern=='pattern23.png'){echo $selected3;} ?>>Pattern 23</option>
              <option value="pattern24.png" <?php if($theme_control_body_bg_pattern=='pattern24.png'){echo $selected3;} ?>>Pattern 24</option>
              <option value="pattern25.png" <?php if($theme_control_body_bg_pattern=='pattern25.png'){echo $selected3;} ?>>Pattern 25</option>
              <option value="pattern26.png" <?php if($theme_control_body_bg_pattern=='pattern26.png'){echo $selected3;} ?>>Pattern 26</option>
              <option value="pattern27.png" <?php if($theme_control_body_bg_pattern=='pattern27.png'){echo $selected3;} ?>>Pattern 27</option>
              <option value="pattern28.png" <?php if($theme_control_body_bg_pattern=='pattern28.png'){echo $selected3;} ?>>Pattern 28</option>
              <option value="pattern29.png" <?php if($theme_control_body_bg_pattern=='pattern29.png'){echo $selected3;} ?>>Pattern 29</option>
              <option value="pattern30.gif" <?php if($theme_control_body_bg_pattern=='pattern30.gif'){echo $selected3;} ?>>Pattern 30</option>
              <?php } else { ?>
              <option value="pattern0.png" selected="selected">No pattern</option>
              <option value="pattern1.png">Pattern 1</option>
              <option value="pattern2.png">Pattern 2</option>
              <option value="pattern3.png">Pattern 3</option>
              <option value="pattern4.png">Pattern 4</option>
              <option value="pattern5.png">Pattern 5</option>
              <option value="pattern6.png">Pattern 6</option>
              <option value="pattern7.png">Pattern 7</option>
              <option value="pattern8.png">Pattern 8</option>
              <option value="pattern9.png">Pattern 9</option>
              <option value="pattern10.png">Pattern 10</option>
              <option value="pattern11.png">Brown wood vertical</option>
              <option value="pattern12.png">Pattern 12</option>
              <option value="pattern13.png">Pattern 13</option>
              <option value="pattern14.png">Pattern 14</option>
              <option value="pattern15.png">Pattern 15</option>
              <option value="pattern16.png">Pattern 16</option>
              <option value="pattern17.png">Pattern 17</option>
              <option value="pattern18.png">Pattern 18</option>
              <option value="pattern19.png">Pattern 19</option>
              <option value="pattern20.png">Pattern 20</option>
              <option value="pattern21.png">Pattern 21</option>
              <option value="pattern22.png">Pattern 22</option>
              <option value="pattern23.png">Pattern 23</option>
              <option value="pattern24.png">Pattern 24</option>
              <option value="pattern25.png">Pattern 25</option>
              <option value="pattern26.png">Pattern 26</option>
              <option value="pattern27.png">Pattern 27</option>
              <option value="pattern28.png">Pattern 28</option>
              <option value="pattern29.png">Pattern 29</option>
              <option value="pattern30.gif">Pattern 30</option>
              <?php } ?>
            </select>
            <span class="default_value">Default value: No pattern</span></td>
        </tr>
      <tr>
          <td>Boxed container background color</td>
          <td><input id="theme_control_container_bg_color" type="text" name="theme_control_container_bg_color" value="<?php echo $theme_control_container_bg_color; ?>" class="spicy" >
            <span class="default_value">Default value: FFFFFF</span></td>
        </tr>
        <tr>
          <td>Headings (H1-H6) color:</td>
          <td><input id="theme_control_headings_color" type="text" name="theme_control_headings_color" value="<?php echo $theme_control_headings_color; ?>" class="spicy" >
            <span class="default_value">Default value: 333333</span></td>
        </tr>
        <tr>
          <td>Body text color:</td>
          <td><input id="theme_control_text_color" type="text" name="theme_control_text_color" value="<?php echo $theme_control_text_color; ?>" class="spicy" >
            <span class="default_value">Default value: 999999</span></td>
        </tr>
        <tr>
          <td>Left / Right column - Box background</td>
          <td><input id="theme_control_column_box_color" type="text" name="theme_control_column_box_color" value="<?php echo $theme_control_column_box_color; ?>" class="spicy" >
            <span class="default_value">Default value: F9F9F9</span></td>
        </tr>
        <tr>
          <td>Left / Right column - Box Titles color:</td>
          <td><input id="theme_control_column_box_title" type="text" name="theme_control_column_box_title" value="<?php echo $theme_control_column_box_title; ?>" class="spicy" >
            <span class="default_value">Default value: 333333</span></td>
        </tr>
        
        <tr>
          <td>Links color:</td>
          <td><input id="theme_control_links_color" type="text" name="theme_control_links_color" value="<?php echo $theme_control_links_color; ?>" class="spicy" >
            <span class="default_value">Default value: FF0000</span></td>
        </tr>
        <tr>
          <td>Hovered Links color:</td>
          <td><input id="theme_control_links_color_hover" type="text" name="theme_control_links_color_hover" value="<?php echo $theme_control_links_color_hover; ?>" class="spicy" >
            <span class="default_value">Default value: C30101</span></td>
        </tr>
        <tr>
          <td>Buttons color: (All buttons except Add to cart, Wishlist and Compare buttons)</td>
          <td><input id="theme_control_buttons_color" type="text" name="theme_control_buttons_color" value="<?php echo $theme_control_buttons_color; ?>" class="spicy" >
            <span class="default_value">Default value: 444444</span></td>
        </tr>        
      </table>
      <!--  <input type="hidden" name="theme_control_module" value="<?php //echo $theme_control_module; ?>" /> --> 
    </div>
    <div class="htabs-content"  id="tab_header">
      <h2 class="colors"><span>Header colors and backgrounds</span></h2>
      <p>Click inside the field and choose a color. When ready, click on the circle icon in lower-right corner. <span class="helper"><strong>*</strong>Default values will be used for empty fields!</span></p>
      <table class="form">
        <tr>
          <td>Header background color:</td>
          <td><input id="theme_control_header_bg_color" type="text" name="theme_control_header_bg_color" value="<?php echo $theme_control_header_bg_color; ?>" class="spicy" >
            <span class="default_value">Default value: FFFFFF</span></td>
        </tr>
        <tr>
          <td>Header background pattern</td>
          <td><select name="theme_control_header_bg_pattern" class="spicy">
              <?php if (isset($theme_control_header_bg_pattern)) {
                    $selected7 = 'selected="selected"';
            ?>
              <option value="pattern0.png" <?php if($theme_control_header_bg_pattern=='pattern0.png'){echo $selected7;} ?>>No pattern</option>
              <option value="pattern1.png" <?php if($theme_control_header_bg_pattern=='pattern1.png'){echo $selected7;} ?>>Pattern 1</option>
              <option value="pattern2.png" <?php if($theme_control_header_bg_pattern=='pattern2.png'){echo $selected7;} ?>>Pattern 2</option>
              <option value="pattern3.png" <?php if($theme_control_header_bg_pattern=='pattern3.png'){echo $selected7;} ?>>Pattern 3</option>
              <option value="pattern4.png" <?php if($theme_control_header_bg_pattern=='pattern4.png'){echo $selected7;} ?>>Pattern 4</option>
              <option value="pattern5.png" <?php if($theme_control_header_bg_pattern=='pattern5.png'){echo $selected7;} ?>>Pattern 5</option>
              <option value="pattern6.png" <?php if($theme_control_header_bg_pattern=='pattern6.png'){echo $selected7;} ?>>Pattern 6</option>
              <option value="pattern7.png" <?php if($theme_control_header_bg_pattern=='pattern7.png'){echo $selected7;} ?>>Pattern 7</option>
              <option value="pattern8.png" <?php if($theme_control_header_bg_pattern=='pattern8.png'){echo $selected7;} ?>>Pattern 8</option>
              <option value="pattern9.png" <?php if($theme_control_header_bg_pattern=='pattern9.png'){echo $selected7;} ?>>Pattern 9</option>
              <option value="pattern10.png" <?php if($theme_control_header_bg_pattern=='pattern10.png'){echo $selected7;} ?>>Pattern 10</option>
              <option value="pattern11.png" <?php if($theme_control_header_bg_pattern=='pattern11.png'){echo $selected7;} ?>>Brown wood vertical</option>
              <option value="pattern12.png" <?php if($theme_control_header_bg_pattern=='pattern12.png'){echo $selected7;} ?>>Pattern 12</option>
              <option value="pattern13.png" <?php if($theme_control_header_bg_pattern=='pattern13.png'){echo $selected7;} ?>>Pattern 13</option>
              <option value="pattern14.png" <?php if($theme_control_header_bg_pattern=='pattern14.png'){echo $selected7;} ?>>Pattern 14</option>
              <option value="pattern15.png" <?php if($theme_control_header_bg_pattern=='pattern15.png'){echo $selected7;} ?>>Pattern 15</option>
              <option value="pattern16.png" <?php if($theme_control_header_bg_pattern=='pattern16.png'){echo $selected7;} ?>>Pattern 16</option>
              <option value="pattern17.png" <?php if($theme_control_header_bg_pattern=='pattern17.png'){echo $selected7;} ?>>Pattern 17</option>
              <option value="pattern18.png" <?php if($theme_control_header_bg_pattern=='pattern18.png'){echo $selected7;} ?>>Pattern 18</option>
              <option value="pattern19.png" <?php if($theme_control_header_bg_pattern=='pattern19.png'){echo $selected7;} ?>>Pattern 19</option>
              <option value="pattern20.png" <?php if($theme_control_header_bg_pattern=='pattern20.png'){echo $selected7;} ?>>Pattern 20</option>
              <option value="pattern21.png" <?php if($theme_control_header_bg_pattern=='pattern21.png'){echo $selected7;} ?>>Pattern 21</option>
              <option value="pattern22.png" <?php if($theme_control_header_bg_pattern=='pattern22.png'){echo $selected7;} ?>>Pattern 22</option>
              <option value="pattern23.png" <?php if($theme_control_header_bg_pattern=='pattern23.png'){echo $selected7;} ?>>Pattern 23</option>
              <option value="pattern24.png" <?php if($theme_control_header_bg_pattern=='pattern24.png'){echo $selected7;} ?>>Pattern 24</option>
              <option value="pattern25.png" <?php if($theme_control_header_bg_pattern=='pattern25.png'){echo $selected7;} ?>>Pattern 25</option>
              <option value="pattern26.png" <?php if($theme_control_header_bg_pattern=='pattern26.png'){echo $selected7;} ?>>Pattern 26</option>
              <option value="pattern27.png" <?php if($theme_control_header_bg_pattern=='pattern27.png'){echo $selected7;} ?>>Pattern 27</option>
              <option value="pattern28.png" <?php if($theme_control_header_bg_pattern=='pattern28.png'){echo $selected7;} ?>>Pattern 28</option>
              <option value="pattern29.png" <?php if($theme_control_header_bg_pattern=='pattern29.png'){echo $selected7;} ?>>Pattern 29</option>
              <option value="pattern30.gif" <?php if($theme_control_header_bg_pattern=='pattern30.gif'){echo $selected7;} ?>>Pattern 30</option>
              <?php } else { ?>
              <option value="pattern0.png" selected="selected">No pattern</option>
              <option value="pattern1.png">Pattern 1</option>
              <option value="pattern2.png">Pattern 2</option>
              <option value="pattern3.png">Pattern 3</option>
              <option value="pattern4.png">Pattern 4</option>
              <option value="pattern5.png">Pattern 5</option>
              <option value="pattern6.png">Pattern 6</option>
              <option value="pattern7.png">Pattern 7</option>
              <option value="pattern8.png">Pattern 8</option>
              <option value="pattern9.png">Pattern 9</option>
              <option value="pattern10.png">Pattern 10</option>
              <option value="pattern11.png">Brown wood vertical</option>
              <option value="pattern12.png">Pattern 12</option>
              <option value="pattern13.png">Pattern 13</option>
              <option value="pattern14.png">Pattern 14</option>
              <option value="pattern15.png">Pattern 15</option>
              <option value="pattern16.png">Pattern 16</option>
              <option value="pattern17.png">Pattern 17</option>
              <option value="pattern18.png">Pattern 18</option>
              <option value="pattern19.png">Pattern 19</option>
              <option value="pattern20.png">Pattern 20</option>
              <option value="pattern21.png">Pattern 21</option>
              <option value="pattern22.png">Pattern 22</option>
              <option value="pattern23.png">Pattern 23</option>
              <option value="pattern24.png">Pattern 24</option>
              <option value="pattern25.png">Pattern 25</option>
              <option value="pattern26.png">Pattern 26</option>
              <option value="pattern27.png">Pattern 27</option>
              <option value="pattern28.png">Pattern 28</option>
              <option value="pattern29.png">Pattern 29</option>
              <option value="pattern30.gif">Pattern 30</option>
              <?php } ?>
            </select>
            <span class="default_value">Default value: No pattern</span></td>
        </tr>
        <tr>
          <td>Header text color:</td>
          <td><input id="theme_control_header_text_color" type="text" name="theme_control_header_text_color" value="<?php echo $theme_control_header_text_color; ?>" class="spicy" >
            <span class="default_value">Default value: 999999</span></td>
        </tr>
        <tr>
          <td>Main menu link color:</td>
          <td><input id="theme_control_main_menu_color" type="text" name="theme_control_main_menu_color" value="<?php echo $theme_control_main_menu_color; ?>" class="spicy" >
            <span class="default_value">Default value: 666666</span></td>
        </tr>
        <tr>
          <td>Category menu background:</td>
          <td><input id="theme_control_category_menu_bg" type="text" name="theme_control_category_menu_bg" value="<?php echo $theme_control_category_menu_bg; ?>" class="spicy" >
            <span class="default_value">Default value: FF0000</span></td>
        </tr>
        <tr>
          <td>Category menu link color:</td>
          <td><input id="theme_control_category_menu_color" type="text" name="theme_control_category_menu_color" value="<?php echo $theme_control_category_menu_color; ?>" class="spicy" >
            <span class="default_value">Default value: F9F9F9</span></td>
        </tr>
      </table>
    </div>
    <div class="htabs-content"  id="tab_container">
      <h2 class="colors"><span>Content area colors and backgrounds</span></h2>
      <p>Click inside the field and choose a color. When ready, click on the circle icon in lower-right corner. <span class="helper"><strong>*</strong>Default values will be used for empty fields!</span></p>
      <table class="form">
        <tr>
          <td>Content area background color:</td>
          <td><input id="theme_control_content_background_color" type="text" name="theme_control_content_background_color" value="<?php echo $theme_control_content_background_color; ?>" class="spicy" >
            <span class="default_value">Default value: FFFFFF</span></td>
        </tr>
        <tr>
          <td>Content area background pattern</td>
          <td><select name="theme_control_content_bg_pattern" class="spicy">
              <?php if (isset($theme_control_content_bg_pattern)) {
                    $selected8 = 'selected="selected"';
            ?>
              <option value="pattern0.png" <?php if($theme_control_content_bg_pattern=='pattern0.png'){echo $selected8;} ?>>No pattern</option>
              <option value="pattern1.png" <?php if($theme_control_content_bg_pattern=='pattern1.png'){echo $selected8;} ?>>Pattern 1</option>
              <option value="pattern2.png" <?php if($theme_control_content_bg_pattern=='pattern2.png'){echo $selected8;} ?>>Pattern 2</option>
              <option value="pattern3.png" <?php if($theme_control_content_bg_pattern=='pattern3.png'){echo $selected8;} ?>>Pattern 3</option>
              <option value="pattern4.png" <?php if($theme_control_content_bg_pattern=='pattern4.png'){echo $selected8;} ?>>Pattern 4</option>
              <option value="pattern5.png" <?php if($theme_control_content_bg_pattern=='pattern5.png'){echo $selected8;} ?>>Pattern 5</option>
              <option value="pattern6.png" <?php if($theme_control_content_bg_pattern=='pattern6.png'){echo $selected8;} ?>>Pattern 6</option>
              <option value="pattern7.png" <?php if($theme_control_content_bg_pattern=='pattern7.png'){echo $selected8;} ?>>Pattern 7</option>
              <option value="pattern8.png" <?php if($theme_control_content_bg_pattern=='pattern8.png'){echo $selected8;} ?>>Pattern 8</option>
              <option value="pattern9.png" <?php if($theme_control_content_bg_pattern=='pattern9.png'){echo $selected8;} ?>>Pattern 9</option>
              <option value="pattern10.png" <?php if($theme_control_content_bg_pattern=='pattern10.png'){echo $selected8;} ?>>Pattern 10</option>
              <option value="pattern11.png" <?php if($theme_control_content_bg_pattern=='pattern11.png'){echo $selected8;} ?>>Brown wood vertical</option>
              <option value="pattern12.png" <?php if($theme_control_content_bg_pattern=='pattern12.png'){echo $selected8;} ?>>Pattern 12</option>
              <option value="pattern13.png" <?php if($theme_control_content_bg_pattern=='pattern13.png'){echo $selected8;} ?>>Pattern 13</option>
              <option value="pattern14.png" <?php if($theme_control_content_bg_pattern=='pattern14.png'){echo $selected8;} ?>>Pattern 14</option>
              <option value="pattern15.png" <?php if($theme_control_content_bg_pattern=='pattern15.png'){echo $selected8;} ?>>Pattern 15</option>
              <option value="pattern16.png" <?php if($theme_control_content_bg_pattern=='pattern16.png'){echo $selected8;} ?>>Pattern 16</option>
              <option value="pattern17.png" <?php if($theme_control_content_bg_pattern=='pattern17.png'){echo $selected8;} ?>>Pattern 17</option>
              <option value="pattern18.png" <?php if($theme_control_content_bg_pattern=='pattern18.png'){echo $selected8;} ?>>Pattern 18</option>
              <option value="pattern19.png" <?php if($theme_control_content_bg_pattern=='pattern19.png'){echo $selected8;} ?>>Pattern 19</option>
              <option value="pattern20.png" <?php if($theme_control_content_bg_pattern=='pattern20.png'){echo $selected8;} ?>>Pattern 20</option>
              <option value="pattern21.png" <?php if($theme_control_content_bg_pattern=='pattern21.png'){echo $selected8;} ?>>Pattern 21</option>
              <option value="pattern22.png" <?php if($theme_control_content_bg_pattern=='pattern22.png'){echo $selected8;} ?>>Pattern 22</option>
              <option value="pattern23.png" <?php if($theme_control_content_bg_pattern=='pattern23.png'){echo $selected8;} ?>>Pattern 23</option>
              <option value="pattern24.png" <?php if($theme_control_content_bg_pattern=='pattern24.png'){echo $selected8;} ?>>Pattern 24</option>
              <option value="pattern25.png" <?php if($theme_control_content_bg_pattern=='pattern25.png'){echo $selected8;} ?>>Pattern 25</option>
              <option value="pattern26.png" <?php if($theme_control_content_bg_pattern=='pattern26.png'){echo $selected8;} ?>>Pattern 26</option>
              <option value="pattern27.png" <?php if($theme_control_content_bg_pattern=='pattern27.png'){echo $selected8;} ?>>Pattern 27</option>
              <option value="pattern28.png" <?php if($theme_control_content_bg_pattern=='pattern28.png'){echo $selected8;} ?>>Pattern 28</option>
              <option value="pattern29.png" <?php if($theme_control_content_bg_pattern=='pattern29.png'){echo $selected8;} ?>>Pattern 29</option>
              <option value="pattern30.gif" <?php if($theme_control_content_bg_pattern=='pattern30.gif'){echo $selected8;} ?>>Pattern 30</option>
              <?php } else { ?>
              <option value="pattern0.png" selected="selected">No pattern</option>
              <option value="pattern1.png">Pattern 1</option>
              <option value="pattern2.png">Pattern 2</option>
              <option value="pattern3.png">Pattern 3</option>
              <option value="pattern4.png">Pattern 4</option>
              <option value="pattern5.png">Pattern 5</option>
              <option value="pattern6.png">Pattern 6</option>
              <option value="pattern7.png">Pattern 7</option>
              <option value="pattern8.png">Pattern 8</option>
              <option value="pattern9.png">Pattern 9</option>
              <option value="pattern10.png">Pattern 10</option>
              <option value="pattern11.png">Brown wood vertical</option>
              <option value="pattern12.png">Pattern 12</option>
              <option value="pattern13.png">Pattern 13</option>
              <option value="pattern14.png">Pattern 14</option>
              <option value="pattern15.png">Pattern 15</option>
              <option value="pattern16.png">Pattern 16</option>
              <option value="pattern17.png">Pattern 17</option>
              <option value="pattern18.png">Pattern 18</option>
              <option value="pattern19.png">Pattern 19</option>
              <option value="pattern20.png">Pattern 20</option>
              <option value="pattern21.png">Pattern 21</option>
              <option value="pattern22.png">Pattern 22</option>
              <option value="pattern23.png">Pattern 23</option>
              <option value="pattern24.png">Pattern 24</option>
              <option value="pattern25.png">Pattern 25</option>
              <option value="pattern26.png">Pattern 26</option>
              <option value="pattern27.png">Pattern 27</option>
              <option value="pattern28.png">Pattern 28</option>
              <option value="pattern29.png">Pattern 29</option>
              <option value="pattern30.gif">Pattern 30</option>
              <?php } ?>
            </select>
            <span class="default_value">Default value: No pattern</span></td>
        </tr>
        <tr>
      </table>
    </div>
    <div class="htabs-content"  id="tab_footer">
      <h2 class="colors"><span>Footer colors and backgrounds</span></h2>
      <p>Click inside the field and choose a color. When ready, click on the circle icon in lower-right corner. <span class="helper"><strong>*</strong>Default values will be used for empty fields!</span></p>
      <table class="form">
        <tr>
          <td>Footer background color</td>
          <td><input id="theme_control_footer_bg_color" type="text" name="theme_control_footer_bg_color" value="<?php echo $theme_control_footer_bg_color; ?>" class="spicy" >
            <span class="default_value">Default value: FFFFFF</span></td>
        </tr>
        <tr>
          <td>Footer background pattern</td>
          <td><select name="theme_control_footer_bg_pattern" class="spicy">
              <?php if (isset($theme_control_footer_bg_pattern)) {
                    $selected9 = 'selected="selected"';
            ?>
              <option value="pattern0.png" <?php if($theme_control_footer_bg_pattern=='pattern0.png'){echo $selected9;} ?>>No pattern</option>
              <option value="pattern1.png" <?php if($theme_control_footer_bg_pattern=='pattern1.png'){echo $selected9;} ?>>Pattern 1</option>
              <option value="pattern2.png" <?php if($theme_control_footer_bg_pattern=='pattern2.png'){echo $selected9;} ?>>Pattern 2</option>
              <option value="pattern3.png" <?php if($theme_control_footer_bg_pattern=='pattern3.png'){echo $selected9;} ?>>Pattern 3</option>
              <option value="pattern4.png" <?php if($theme_control_footer_bg_pattern=='pattern4.png'){echo $selected9;} ?>>Pattern 4</option>
              <option value="pattern5.png" <?php if($theme_control_footer_bg_pattern=='pattern5.png'){echo $selected9;} ?>>Pattern 5</option>
              <option value="pattern6.png" <?php if($theme_control_footer_bg_pattern=='pattern6.png'){echo $selected9;} ?>>Pattern 6</option>
              <option value="pattern7.png" <?php if($theme_control_footer_bg_pattern=='pattern7.png'){echo $selected9;} ?>>Pattern 7</option>
              <option value="pattern8.png" <?php if($theme_control_footer_bg_pattern=='pattern8.png'){echo $selected9;} ?>>Pattern 8</option>
              <option value="pattern9.png" <?php if($theme_control_footer_bg_pattern=='pattern9.png'){echo $selected9;} ?>>Pattern 9</option>
              <option value="pattern10.png" <?php if($theme_control_footer_bg_pattern=='pattern10.png'){echo $selected9;} ?>>Pattern 10</option>
              <option value="pattern11.png" <?php if($theme_control_footer_bg_pattern=='pattern11.png'){echo $selected9;} ?>>Brown wood vertical</option>
              <option value="pattern12.png" <?php if($theme_control_footer_bg_pattern=='pattern12.png'){echo $selected9;} ?>>Pattern 12</option>
              <option value="pattern13.png" <?php if($theme_control_footer_bg_pattern=='pattern13.png'){echo $selected9;} ?>>Pattern 13</option>
              <option value="pattern14.png" <?php if($theme_control_footer_bg_pattern=='pattern14.png'){echo $selected9;} ?>>Pattern 14</option>
              <option value="pattern15.png" <?php if($theme_control_footer_bg_pattern=='pattern15.png'){echo $selected9;} ?>>Pattern 15</option>
              <option value="pattern16.png" <?php if($theme_control_footer_bg_pattern=='pattern16.png'){echo $selected9;} ?>>Pattern 16</option>
              <option value="pattern17.png" <?php if($theme_control_footer_bg_pattern=='pattern17.png'){echo $selected9;} ?>>Pattern 17</option>
              <option value="pattern18.png" <?php if($theme_control_footer_bg_pattern=='pattern18.png'){echo $selected9;} ?>>Pattern 18</option>
              <option value="pattern19.png" <?php if($theme_control_footer_bg_pattern=='pattern19.png'){echo $selected9;} ?>>Pattern 19</option>
              <option value="pattern20.png" <?php if($theme_control_footer_bg_pattern=='pattern20.png'){echo $selected9;} ?>>Pattern 20</option>
              <option value="pattern21.png" <?php if($theme_control_footer_bg_pattern=='pattern21.png'){echo $selected9;} ?>>Pattern 21</option>
              <option value="pattern22.png" <?php if($theme_control_footer_bg_pattern=='pattern22.png'){echo $selected9;} ?>>Pattern 22</option>
              <option value="pattern23.png" <?php if($theme_control_footer_bg_pattern=='pattern23.png'){echo $selected9;} ?>>Pattern 23</option>
              <option value="pattern24.png" <?php if($theme_control_footer_bg_pattern=='pattern24.png'){echo $selected9;} ?>>Pattern 24</option>
              <option value="pattern25.png" <?php if($theme_control_footer_bg_pattern=='pattern25.png'){echo $selected9;} ?>>Pattern 25</option>
              <option value="pattern26.png" <?php if($theme_control_footer_bg_pattern=='pattern26.png'){echo $selected9;} ?>>Pattern 26</option>
              <option value="pattern27.png" <?php if($theme_control_footer_bg_pattern=='pattern27.png'){echo $selected9;} ?>>Pattern 27</option>
              <option value="pattern28.png" <?php if($theme_control_footer_bg_pattern=='pattern28.png'){echo $selected9;} ?>>Pattern 28</option>
              <option value="pattern29.png" <?php if($theme_control_footer_bg_pattern=='pattern29.png'){echo $selected9;} ?>>Pattern 29</option>
              <option value="pattern30.gif" <?php if($theme_control_footer_bg_pattern=='pattern30.gif'){echo $selected9;} ?>>Pattern 30</option>
              <?php } else { ?>
              <option value="pattern0.png" selected="selected">No pattern</option>
              <option value="pattern1.png">Pattern 1</option>
              <option value="pattern2.png">Pattern 2</option>
              <option value="pattern3.png">Pattern 3</option>
              <option value="pattern4.png">Pattern 4</option>
              <option value="pattern5.png">Pattern 5</option>
              <option value="pattern6.png">Pattern 6</option>
              <option value="pattern7.png">Pattern 7</option>
              <option value="pattern8.png">Pattern 8</option>
              <option value="pattern9.png">Pattern 9</option>
              <option value="pattern10.png">Pattern 10</option>
              <option value="pattern11.png">Brown wood vertical</option>
              <option value="pattern12.png">Pattern 12</option>
              <option value="pattern13.png">Pattern 13</option>
              <option value="pattern14.png">Pattern 14</option>
              <option value="pattern15.png">Pattern 15</option>
              <option value="pattern16.png">Pattern 16</option>
              <option value="pattern17.png">Pattern 17</option>
              <option value="pattern18.png">Pattern 18</option>
              <option value="pattern19.png">Pattern 19</option>
              <option value="pattern20.png">Pattern 20</option>
              <option value="pattern21.png">Pattern 21</option>
              <option value="pattern22.png">Pattern 22</option>
              <option value="pattern23.png">Pattern 23</option>
              <option value="pattern24.png">Pattern 24</option>
              <option value="pattern25.png">Pattern 25</option>
              <option value="pattern26.png">Pattern 26</option>
              <option value="pattern27.png">Pattern 27</option>
              <option value="pattern28.png">Pattern 28</option>
              <option value="pattern29.png">Pattern 29</option>
              <option value="pattern30.gif">Pattern 30</option>
              <?php } ?>
            </select>
            <span class="default_value">Default value: No pattern</span></td>
        </tr>
        <tr>
          <td>Footer top bar background:</td>
          <td><input id="theme_control_prefooter_bg" type="text" name="theme_control_prefooter_bg" value="<?php echo $theme_control_prefooter_bg; ?>" class="spicy" >
            <span class="default_value">Default value: FF0000</span></td>
        </tr>
        <tr>
          <td>Footer links color:</td>
          <td><input id="theme_control_footer_link_color" type="text" name="theme_control_footer_link_color" value="<?php echo $theme_control_footer_link_color; ?>" class="spicy" >
            <span class="default_value">Default value: 8C8C8C</span></td>
        </tr>
        <tr>
          <td>Footer borders color:</td>
          <td><input id="theme_control_footer_link_border" type="text" name="theme_control_footer_link_border" value="<?php echo $theme_control_footer_link_border; ?>" class="spicy" >
            <span class="default_value">Default value: E1E1E1</span></td>
        </tr>
      </table>
    </div>
    <div class="htabs-content"  id="tab_product">
      <h2 class="layout"><span>Product page settings</span></h2>
      <table class="form">
        <tr>
          <td>Image Preview Style</td>
          <td><select name="theme_control_preview" class="spicy">
              <?php if (isset($theme_control_preview)) {
              $selected10 = 'selected="selected"';
              ?>
              <option value="image_zoom.php" <?php if($theme_control_preview=='image_zoom.php'){echo $selected10;} ?>>QloudZoom</option>
              <option value="image_fancy.php" <?php if($theme_control_preview=='image_fancy.php'){echo $selected10;} ?>>Fancy Box</option>
              <?php } else { ?>
              <option value="image_zoom.php" selected="selected">QloudZoom</option>
              <option value="image_fancy.php">Fancy Box</option>
              <?php } ?>
            </select>
            <span class="default_value">Default preview style: QloudZoom</span></td>
        </tr>
        <tr>
          <td>Main price color:</td>
          <td><input id="theme_control_main_price_color" type="text" name="theme_control_main_price_color" value="<?php echo $theme_control_main_price_color; ?>" class="spicy" >
            <span class="default_value">Default value: 333333</span></td>
        </tr>
        <tr>
          <td>Old price color:</td>
          <td><input id="theme_control_old_price_color" type="text" name="theme_control_old_price_color" value="<?php echo $theme_control_old_price_color; ?>" class="spicy" >
            <span class="default_value">Default value: 999999</span></td>
        </tr>
        <tr>
          <td>Add to Cart button color:</td>
          <td><input id="theme_control_cart_button_color" type="text" name="theme_control_cart_button_color" value="<?php echo $theme_control_cart_button_color; ?>" class="spicy" >
            <span class="default_value">Default value: 444444</span></td>
        </tr>
      </table>
    </div>
    <div class="htabs-content"  id="tab_fonts">
      <h2 class="fonts"><span>Font Settings</span></h2>
      <table class="form">
        <tr>
          <td>Body font</td>
          <td><select name="theme_control_body_font" class="spicy">
              <?php if (isset($theme_control_body_font)) {
              $selected = 'selected="selected"';
              ?>
              <option value="Arial" <?php if($theme_control_body_font=='Arial'){echo $selected;} ?>>Arial</option>
              <option value="Verdana" <?php if($theme_control_body_font=='Verdana'){echo $selected;} ?>>Verdana</option>
              <option value="Helvetica" <?php if($theme_control_body_font=='Helvetica'){echo $selected;} ?>>Helvetica</option>
              <option value="Lucida Grande" <?php if($theme_control_body_font=='Lucida Grande'){echo $selected;} ?>>Lucida Grande</option>
              <option value="Trebuchet MS" <?php if($theme_control_body_font=='Trebuchet MS'){echo $selected;} ?>>Trebuchet MS</option>
              <option value="Times New Roman" <?php if($theme_control_body_font=='Times New Roman'){echo $selected;} ?>>Times New Roman</option>
              <option value="Tahoma" <?php if($theme_control_body_font=='Tahoma'){echo $selected;} ?>>Tahoma</option>
              <option value="Georgia" <?php if($theme_control_body_font=='Georgia'){echo $selected;} ?>>Georgia</option>
              <?php } else { ?>
              <option value="Arial" selected="selected">Arial</option>
              <option value="Verdana">Verdana</option>
              <option value="Helvetica">Helvetica</option>
              <option value="Lucida Grande">Lucida Grande</option>
              <option value="Trebuchet MS">Trebuchet MS</option>
              <option value="Times New Roman">Times New Roman</option>
              <option value="Tahoma">Tahoma</option>
              <option value="Georgia">Georgia</option>
              <?php } ?>
            </select>
            <span class="default_value">Default value: Trebuchet MS</span></td>
        </tr>
        <tr>
          <td>Headings font (H1-H4) </td>
          <td><select name="theme_control_headings_font" class="spicy">
              <?php if (isset($theme_control_headings_font)) {
                	$selected2 = 'selected="selected"';
            ?>
              <option value="Arial" <?php if($theme_control_headings_font=='Arial'){echo $selected2;} ?>>Arial</option>
              <option value="Aclonica" <?php if($theme_control_headings_font=='Aclonica'){echo $selected2;} ?>>Aclonica</option>
              <option value="Allan" <?php if($theme_control_headings_font=='Allan'){echo $selected2;} ?>>Allan</option>
              <option value="Annie+Use+Your+Telescope" <?php if($theme_control_headings_font=='Annie+Use+Your+Telescope'){echo $selected2;} ?>>Annie Use Your Telescope</option>
              <option value="Anonymous+Pro" <?php if($theme_control_headings_font=='Anonymous+Pro'){echo $selected2;} ?>>Anonymous Pro</option>
              <option value="Allerta+Stencil" <?php if($theme_control_headings_font=='Allerta+Stencil'){echo $selected2;} ?>>Allerta Stencil</option>
              <option value="Allerta" <?php if($theme_control_headings_font=='Allerta'){echo $selected2;} ?>>Allerta</option>
              <option value="Amaranth" <?php if($theme_control_headings_font=='Amaranth'){echo $selected2;} ?>>Amaranth</option>
              <option value="Anton" <?php if($theme_control_headings_font=='Anton'){echo $selected2;} ?>>Anton</option>
              <option value="Architects+Daughter" <?php if($theme_control_headings_font=='Architects+Daughter'){echo $selected2;} ?>>Architects Daughter</option>
              <option value="Arimo" <?php if($theme_control_headings_font=='Arimo'){echo $selected2;} ?>>Arimo</option>
              <option value="Artifika" <?php if($theme_control_headings_font=='Artifika'){echo $selected2;} ?>>Artifika</option>
              <option value="Arvo" <?php if($theme_control_headings_font=='Arvo'){echo $selected2;} ?>>Arvo</option>
              <option value="Asset" <?php if($theme_control_headings_font=='Asset'){echo $selected2;} ?>>Asset</option>
              <option value="Astloch" <?php if($theme_control_headings_font=='Astloch'){echo $selected2;} ?>>Astloch</option>
              <option value="Bangers" <?php if($theme_control_headings_font=='Bangers'){echo $selected2;} ?>>Bangers</option>
              <option value="Bentham" <?php if($theme_control_headings_font=='Bentham'){echo $selected2;} ?>>Bentham</option>
              <option value="Bevan" <?php if($theme_control_headings_font=='Bevan'){echo $selected2;} ?>>Bevan</option>
              <option value="Bigshot+One" <?php if($theme_control_headings_font=='Bigshot+One'){echo $selected2;} ?>>Bigshot One</option>
              <option value="Bowlby+One" <?php if($theme_control_headings_font=='Bowlby+One'){echo $selected2;} ?>>Bowlby One</option>
              <option value="Bowlby+One+SC" <?php if($theme_control_headings_font=='Bowlby+One+SC'){echo $selected2;} ?>>Bowlby One SC</option>
              <option value="Brawler" <?php if($theme_control_headings_font=='Brawler'){echo $selected2;} ?>>Brawler </option>
              <option value="Buda" <?php if($theme_control_headings_font=='Buda'){echo $selected2;} ?>>Buda</option>
              <option value="Cabin" <?php if($theme_control_headings_font=='Cabin'){echo $selected2;} ?>>Cabin</option>
              <option value="Calligraffitti" <?php if($theme_control_headings_font=='Calligraffitti'){echo $selected2;} ?>>Calligraffitti</option>
              <option value="Candal" <?php if($theme_control_headings_font=='Candal'){echo $selected2;} ?>>Candal</option>
              <option value="Cantarell" <?php if($theme_control_headings_font=='Cantarell'){echo $selected2;} ?>>Cantarell</option>
              <option value="Cardo" <?php if($theme_control_headings_font=='Cardo'){echo $selected2;} ?>>Cardo</option>
              <option value="Carter+One" <?php if($theme_control_headings_font=='Carter+One'){echo $selected2;} ?>>Carter One</option>
              <option value="Caudex" <?php if($theme_control_headings_font=='Caudex'){echo $selected2;} ?>>Caudex</option>
              <option value="Cedarville+Cursive" <?php if($theme_control_headings_font=='Cedarville+Cursive'){echo $selected2;} ?>>Cedarville Cursive</option>
              <option value="Cherry+Cream+Soda" <?php if($theme_control_headings_font=='Cherry+Cream+Soda'){echo $selected2;} ?>>Cherry Cream Soda</option>
              <option value="Chewy" <?php if($theme_control_headings_font=='Chewy'){echo $selected2;} ?>>Chewy</option>
              <option value="Coda" <?php if($theme_control_headings_font=='Coda'){echo $selected2;} ?>>Coda</option>
              <option value="Coming+Soon" <?php if($theme_control_headings_font=='Coming+Soon'){echo $selected2;} ?>>Coming Soon</option>
              <option value="Copse" <?php if($theme_control_headings_font=='Copse'){echo $selected2;} ?>>Copse</option>
              <option value="Corben" <?php if($theme_control_headings_font=='Corben'){echo $selected2;} ?>>Corben</option>
              <option value="Cousine" <?php if($theme_control_headings_font=='Cousine'){echo $selected2;} ?>>Cousine</option>
              <option value="Covered+By+Your+Grace" <?php if($theme_control_headings_font=='Covered+By+Your+Grace'){echo $selected2;} ?>>Covered By Your Grace</option>
              <option value="Crafty+Girls" <?php if($theme_control_headings_font=='Crafty+Girls'){echo $selected2;} ?>>Crafty Girls</option>
              <option value="Crimson+Text" <?php if($theme_control_headings_font=='Crimson+Text'){echo $selected2;} ?>>Crimson Text</option>
              <option value="Crushed" <?php if($theme_control_headings_font=='Crushed'){echo $selected2;} ?>>Crushed</option>
              <option value="Cuprum" <?php if($theme_control_headings_font=='Cuprum'){echo $selected2;} ?>>Cuprum</option>
              <option value="Damion" <?php if($theme_control_headings_font=='Damion'){echo $selected2;} ?>>Damion</option>
              <option value="Dancing+Script" <?php if($theme_control_headings_font=='Dancing+Script'){echo $selected2;} ?>>Dancing Script</option>
              <option value="Dawning+of+a+New+Day" <?php if($theme_control_headings_font=='Dawning+of+a+New+Day'){echo $selected2;} ?>>Dawning of a New Day</option>
              <option value="Didact+Gothic" <?php if($theme_control_headings_font=='Didact+Gothic'){echo $selected2;} ?>>Didact Gothic</option>
              <option value="Droid+Sans" <?php if($theme_control_headings_font=='Droid+Sans'){echo $selected2;} ?>>Droid Sans</option>
              <option value="Droid+Sans+Mono" <?php if($theme_control_headings_font=='Droid+Sans+Mono'){echo $selected2;} ?>>Droid Sans Mono</option>
              <option value="Droid+Serif" <?php if($theme_control_headings_font=='Droid+Serif'){echo $selected2;} ?>>Droid Serif</option>
              <option value="EB+Garamond" <?php if($theme_control_headings_font=='EB+Garamond'){echo $selected2;} ?>>EB Garamond</option>
              <option value="Expletus+Sans" <?php if($theme_control_headings_font=='Expletus+Sans'){echo $selected2;} ?>>Expletus Sans</option>
              <option value="Fontdiner+Swanky" <?php if($theme_control_headings_font=='Fontdiner+Swanky'){echo $selected2;} ?>>Fontdiner Swanky</option>
              <option value="Forum" <?php if($theme_control_headings_font=='Forum'){echo $selected2;} ?>>Forum</option>
              <option value="Francois+One" <?php if($theme_control_headings_font=='Francois+One'){echo $selected2;} ?>>Francois One</option>
              <option value="Federo" <?php if($theme_control_headings_font=='Federo'){echo $selected2;} ?>>Federo</option>
              <option value="Geo" <?php if($theme_control_headings_font=='Geo'){echo $selected2;} ?>>Geo</option>
              <option value="Give+You+Glory" <?php if($theme_control_headings_font=='Give+You+Glory'){echo $selected2;} ?>>Give You Glory</option>
              <option value="Goblin+One" <?php if($theme_control_headings_font=='Goblin+One'){echo $selected2;} ?>>Goblin One</option>
              <option value="Goudy+Bookletter+1911" <?php if($theme_control_headings_font=='Goudy+Bookletter+1911'){echo $selected2;} ?>>Goudy Bookletter 1911</option>
              <option value="Gravitas+One" <?php if($theme_control_headings_font=='Gravitas+One'){echo $selected2;} ?>>Gravitas One</option>
              <option value="Gruppo" <?php if($theme_control_headings_font=='Gruppo'){echo $selected2;} ?>>Gruppo</option>
              <option value="Hammersmith+One" <?php if($theme_control_headings_font=='Hammersmith+One'){echo $selected2;} ?>>Hammersmith One</option>
              <option value="Holtwood+One+SC" <?php if($theme_control_headings_font=='Holtwood+One+SC'){echo $selected2;} ?>>Holtwood One SC</option>
              <option value="Homemade+Apple" <?php if($theme_control_headings_font=='Homemade+Apple'){echo $selected2;} ?>>Homemade Apple</option>
              <option value="Inconsolata" <?php if($theme_control_headings_font=='Inconsolata'){echo $selected2;} ?>>Inconsolata</option>
              <option value="Indie+Flower" <?php if($theme_control_headings_font=='Indie+Flower'){echo $selected2;} ?>>Indie Flower</option>
              <option value="IM+Fell+DW+Pica" <?php if($theme_control_headings_font=='IM+Fell+DW+Pica'){echo $selected2;} ?>>IM Fell DW Pica</option>
              <option value="IM+Fell+DW+Pica+SC" <?php if($theme_control_headings_font=='IM+Fell+DW+Pica+SC'){echo $selected2;} ?>>IM Fell DW Pica SC</option>
              <option value="IM+Fell+Double+Pica" <?php if($theme_control_headings_font=='IM+Fell+Double+Pica'){echo $selected2;} ?>>IM Fell Double Pica</option>
              <option value="IM+Fell+Double+Pica+SC" <?php if($theme_control_headings_font=='IM+Fell+Double+Pica+SC'){echo $selected2;} ?>>IM Fell Double Pica SC</option>
              <option value="IM+Fell+English" <?php if($theme_control_headings_font=='IM+Fell+English'){echo $selected2;} ?>>IM Fell English</option>
              <option value="IM+Fell+English+SC" <?php if($theme_control_headings_font=='IM+Fell+English+SC'){echo $selected2;} ?>>IM Fell English SC</option>
              <option value="IM+Fell+French+Canon" <?php if($theme_control_headings_font=='IM+Fell+French+Canon'){echo $selected2;} ?>>IM Fell French Canon</option>
              <option value="IM+Fell+French+Canon+SC" <?php if($theme_control_headings_font=='IM+Fell+French+Canon+SC'){echo $selected2;} ?>>IM Fell French Canon SC</option>
              <option value="IM+Fell+Great+Primer" <?php if($theme_control_headings_font=='IM+Fell+Great+Primer'){echo $selected2;} ?>>IM Fell Great Primer</option>
              <option value="IM+Fell+Great+Primer+SC" <?php if($theme_control_headings_font=='IM+Fell+Great+Primer+SC'){echo $selected2;} ?>>IM Fell Great Primer SC</option>
              <option value="Irish+Grover" <?php if($theme_control_headings_font=='Irish+Grover'){echo $selected2;} ?>>Irish Grover</option>
              <option value="Irish+Growler" <?php if($theme_control_headings_font=='Irish+Growler'){echo $selected2;} ?>>Irish Growler</option>
              <option value="Istok+Web" <?php if($theme_control_headings_font=='Istok+Web'){echo $selected2;} ?>>Istok Web</option>
              <option value="Josefin+Sans" <?php if($theme_control_headings_font=='Josefin+Sans'){echo $selected2;} ?>>Josefin Sans Regular 400</option>
              <option value="Josefin+Slab" <?php if($theme_control_headings_font=='Josefin+Slab'){echo $selected2;} ?>>Josefin Slab Regular 400</option>
              <option value="Judson" <?php if($theme_control_headings_font=='Judson'){echo $selected2;} ?>>Judson</option>
              <option value="Jura" <?php if($theme_control_headings_font=='Jura'){echo $selected2;} ?>> Jura Regular</option>
              <option value="Just+Another+Hand" <?php if($theme_control_headings_font=='Just+Another+Hand'){echo $selected2;} ?>>Just Another Hand</option>
              <option value="Just+Me+Again+Down+Here" <?php if($theme_control_headings_font=='Just+Me+Again+Down+Here'){echo $selected2;} ?>>Just Me Again Down Here</option>
              <option value="Kameron" <?php if($theme_control_headings_font=='Kameron'){echo $selected2;} ?>>Kameron</option>
              <option value="Kenia" <?php if($theme_control_headings_font=='Kenia'){echo $selected2;} ?>>Kenia</option>
              <option value="Kranky" <?php if($theme_control_headings_font=='Kranky'){echo $selected2;} ?>>Kranky</option>
              <option value="Kreon" <?php if($theme_control_headings_font=='Kreon'){echo $selected2;} ?>>Kreon</option>
              <option value="Kristi" <?php if($theme_control_headings_font=='Kristi'){echo $selected2;} ?>>Kristi</option>
              <option value="La+Belle+Aurore" <?php if($theme_control_headings_font=='La+Belle+Aurore'){echo $selected2;} ?>>La Belle Aurore</option>
              <option value="Lato" <?php if($theme_control_headings_font=='Lato'){echo $selected2;} ?>>Lato</option>
              <option value="League+Script" <?php if($theme_control_headings_font=='League+Script'){echo $selected2;} ?>>League Script</option>
              <option value="Lekton" <?php if($theme_control_headings_font=='Lekton'){echo $selected2;} ?>> Lekton </option>
              <option value="Limelight" <?php if($theme_control_headings_font=='Limelight'){echo $selected2;} ?>> Limelight </option>
              <option value="Lobster" <?php if($theme_control_headings_font=='Lobster'){echo $selected2;} ?>>Lobster</option>
              <option value="Lobster+Two" <?php if($theme_control_headings_font=='Lobster+Two'){echo $selected2;} ?>>Lobster Two</option>
              <option value="Lora" <?php if($theme_control_headings_font=='Lora'){echo $selected2;} ?>>Lora</option>
              <option value="Love+Ya+Like+A+Sister" <?php if($theme_control_headings_font=='Love+Ya+Like+A+Sister'){echo $selected2;} ?>>Love Ya Like A Sister</option>
              <option value="Loved+by+the+King" <?php if($theme_control_headings_font=='Loved+by+the+King'){echo $selected2;} ?>>Loved by the King</option>
              <option value="Luckiest+Guy" <?php if($theme_control_headings_font=='Luckiest+Guy'){echo $selected2;} ?>>Luckiest Guy</option>
              <option value="Maiden+Orange" <?php if($theme_control_headings_font=='Maiden+Orange'){echo $selected2;} ?>>Maiden Orange</option>
              <option value="Mako" <?php if($theme_control_headings_font=='Mako'){echo $selected2;} ?>>Mako</option>
              <option value="Maven+Pro" <?php if($theme_control_headings_font=='Maven+Pro'){echo $selected2;} ?>> Maven Pro</option>
              <option value="Meddon" <?php if($theme_control_headings_font=='Meddon'){echo $selected2;} ?>>Meddon</option>
              <option value="MedievalSharp" <?php if($theme_control_headings_font=='MedievalSharp'){echo $selected2;} ?>>MedievalSharp</option>
              <option value="Megrim" <?php if($theme_control_headings_font=='Megrim'){echo $selected2;} ?>>Megrim</option>
              <option value="Merriweather" <?php if($theme_control_headings_font=='Merriweather'){echo $selected2;} ?>>Merriweather</option>
              <option value="Metrophobic" <?php if($theme_control_headings_font=='Metrophobic'){echo $selected2;} ?>>Metrophobic</option>
              <option value="Michroma" <?php if($theme_control_headings_font=='Michroma'){echo $selected2;} ?>>Michroma</option>
              <option value="Miltonian+Tattoo" <?php if($theme_control_headings_font=='Miltonian+Tattoo'){echo $selected2;} ?>>Miltonian Tattoo</option>
              <option value="Miltonian" <?php if($theme_control_headings_font=='Miltonian'){echo $selected2;} ?>>Miltonian</option>
              <option value="Modern+Antiqua" <?php if($theme_control_headings_font=='Modern+Antiqua'){echo $selected2;} ?>>Modern Antiqua</option>
              <option value="Monofett" <?php if($theme_control_headings_font=='Monofett'){echo $selected2;} ?>>Monofett</option>
              <option value="Molengo" <?php if($theme_control_headings_font=='Molengo'){echo $selected2;} ?>>Molengo</option>
              <option value="Mountains+of+Christmas" <?php if($theme_control_headings_font=='Mountains+of+Christmas'){echo $selected2;} ?>>Mountains of Christmas</option>
              <option value="Muli" <?php if($theme_control_headings_font=='Muli'){echo $selected2;} ?>>Muli Regular</option>
              <option value="Neucha" <?php if($theme_control_headings_font=='Neucha'){echo $selected2;} ?>>Neucha</option>
              <option value="Neuton" <?php if($theme_control_headings_font=='Neuton'){echo $selected2;} ?>>Neuton</option>
              <option value="News+Cycle" <?php if($theme_control_headings_font=='News+Cycle'){echo $selected2;} ?>>News Cycle</option>
              <option value="Nixie+One" <?php if($theme_control_headings_font=='Nixie+One'){echo $selected2;} ?>>Nixie One</option>
              <option value="Nobile" <?php if($theme_control_headings_font=='Nobile'){echo $selected2;} ?>>Nobile</option>
              <option value="Nova+Cut" <?php if($theme_control_headings_font=='Nova+Cut'){echo $selected2;} ?>>Nova Cut</option>
              <option value="Nova+Flat" <?php if($theme_control_headings_font=='Nova+Flat'){echo $selected2;} ?>>Nova Flat</option>
              <option value="Nova+Mono" <?php if($theme_control_headings_font=='Nova+Mono'){echo $selected2;} ?>>Nova Mono</option>
              <option value="Nova+Oval" <?php if($theme_control_headings_font=='Nova+Oval'){echo $selected2;} ?>>Nova Oval</option>
              <option value="Nova+Round" <?php if($theme_control_headings_font=='Nova+Round'){echo $selected2;} ?>>Nova Round</option>
              <option value="Nova+Script" <?php if($theme_control_headings_font=='Nova+Script'){echo $selected2;} ?>>Nova Script</option>
              <option value="Nova+Slim" <?php if($theme_control_headings_font=='Nova+Slim'){echo $selected2;} ?>>Nova Slim</option>
              <option value="Nova+Square" <?php if($theme_control_headings_font=='Nova+Square'){echo $selected2;} ?>>Nova Square</option>
              <option value="Nunito" <?php if($theme_control_headings_font=='Nunito'){echo $selected2;} ?>> Nunito Regular</option>
              <option value="OFL+Sorts+Mill+Goudy+TT" <?php if($theme_control_headings_font=='OFL+Sorts+Mill+Goudy+TT'){echo $selected2;} ?>>OFL Sorts Mill Goudy TT</option>
              <option value="Old+Standard+TT" <?php if($theme_control_headings_font=='Old+Standard+TT'){echo $selected2;} ?>>Old Standard TT</option>
              <option value="Open+Sans" <?php if($theme_control_headings_font=='Open+Sans'){echo $selected2;} ?>>Open Sans regular</option>
              <option value="Open+Sans+Condensed" <?php if($theme_control_headings_font=='Open+Sans+Condensed'){echo $selected2;} ?>>Open Sans Condensed</option>
              <option value="Orbitron" <?php if($theme_control_headings_font=='Orbitron'){echo $selected2;} ?>>Orbitron Regular (400)</option>
              <option value="Oswald" <?php if($theme_control_headings_font=='Oswald'){echo $selected2;} ?>>Oswald</option>
              <option value="Over+the+Rainbow" <?php if($theme_control_headings_font=='Over+the+Rainbow'){echo $selected2;} ?>>Over the Rainbow</option>
              <option value="Reenie+Beanie" <?php if($theme_control_headings_font=='Reenie+Beanie'){echo $selected2;} ?>>Reenie Beanie</option>
              <option value="Pacifico" <?php if($theme_control_headings_font=='Pacifico'){echo $selected2;} ?>>Pacifico</option>
              <option value="Patrick+Hand" <?php if($theme_control_headings_font=='Patrick+Hand'){echo $selected2;} ?>>Patrick Hand</option>
              <option value="Paytone+One" <?php if($theme_control_headings_font=='Paytone+One'){echo $selected2;} ?>>Paytone One</option>
              <option value="Permanent+Marker" <?php if($theme_control_headings_font=='Permanent+Marker'){echo $selected2;} ?>>Permanent Marker</option>
              <option value="Philosopher" <?php if($theme_control_headings_font=='Philosopher'){echo $selected2;} ?>>Philosopher</option>
              <option value="Play" <?php if($theme_control_headings_font=='Play'){echo $selected2;} ?>>Play</option>
              <option value="Playfair+Display" <?php if($theme_control_headings_font=='Playfair+Display'){echo $selected2;} ?>> Playfair Display </option>
              <option value="Podkova" <?php if($theme_control_headings_font=='Podkova'){echo $selected2;} ?>> Podkova </option>
              <option value="PT+Sans" <?php if($theme_control_headings_font=='PT+Sans'){echo $selected2;} ?>>PT Sans</option>
              <option value="PT+Sans+Narrow" <?php if($theme_control_headings_font=='PT+Sans+Narrow'){echo $selected2;} ?>>PT Sans Narrow</option>
              <option value="PT+Serif" <?php if($theme_control_headings_font=='PT+Serif'){echo $selected2;} ?>>PT Serif</option>
              <option value="Puritan" <?php if($theme_control_headings_font=='Puritan'){echo $selected2;} ?>>Puritan</option>
              <option value="Quattrocento" <?php if($theme_control_headings_font=='Quattrocento'){echo $selected2;} ?>>Quattrocento</option>
              <option value="Quattrocento+Sans" <?php if($theme_control_headings_font=='Quattrocento+Sans'){echo $selected2;} ?>>Quattrocento Sans</option>
              <option value="Radley" <?php if($theme_control_headings_font=='Radley'){echo $selected2;} ?>>Radley</option>
              <option value="Raleway" <?php if($theme_control_headings_font=='Raleway'){echo $selected2;} ?>>Raleway</option>
              <option value="Redressed" <?php if($theme_control_headings_font=='Redressed'){echo $selected2;} ?>>Redressed</option>
              <option value="Rock+Salt" <?php if($theme_control_headings_font=='Rock+Salt'){echo $selected2;} ?>>Rock Salt</option>
              <option value="Rokkitt" <?php if($theme_control_headings_font=='Rokkitt'){echo $selected2;} ?>>Rokkitt</option>
              <option value="Ruslan+Display" <?php if($theme_control_headings_font=='Ruslan+Display'){echo $selected2;} ?>>Ruslan Display</option>
              <option value="Schoolbell" <?php if($theme_control_headings_font=='Schoolbell'){echo $selected2;} ?>>Schoolbell</option>
              <option value="Shadows+Into+Light" <?php if($theme_control_headings_font=='Shadows+Into+Light'){echo $selected2;} ?>>Shadows Into Light</option>
              <option value="Shanti" <?php if($theme_control_headings_font=='Shanti'){echo $selected2;} ?>>Shanti</option>
              <option value="Sigmar+One" <?php if($theme_control_headings_font=='Sigmar+One'){echo $selected2;} ?>>Sigmar One</option>
              <option value="Six+Caps" <?php if($theme_control_headings_font=='Six+Caps'){echo $selected2;} ?>>Six Caps</option>
              <option value="Slackey" <?php if($theme_control_headings_font=='Slackey'){echo $selected2;} ?>>Slackey</option>
              <option value="Smythe" <?php if($theme_control_headings_font=='Smythe'){echo $selected2;} ?>>Smythe</option>
              <option value="Sniglet" <?php if($theme_control_headings_font=='Sniglet'){echo $selected2;} ?>>Sniglet</option>
              <option value="Special+Elite" <?php if($theme_control_headings_font=='Special+Elite'){echo $selected2;} ?>>Special Elite</option>
              <option value="Stardos+Stencil" <?php if($theme_control_headings_font=='Stardos+Stencil'){echo $selected2;} ?>>Stardos Stencil</option>
              <option value="Sue+Ellen+Francisco" <?php if($theme_control_headings_font=='Sue+Ellen+Francisco'){echo $selected2;} ?>>Sue Ellen Francisco</option>
              <option value="Sunshiney" <?php if($theme_control_headings_font=='Sunshiney'){echo $selected2;} ?>>Sunshiney</option>
              <option value="Swanky+and+Moo+Moo" <?php if($theme_control_headings_font=='Swanky+and+Moo+Moo'){echo $selected2;} ?>>Swanky and Moo Moo</option>
              <option value="Syncopate" <?php if($theme_control_headings_font=='Syncopate'){echo $selected2;} ?>>Syncopate</option>
              <option value="Tangerine" <?php if($theme_control_headings_font=='Tangerine'){echo $selected2;} ?>>Tangerine</option>
              <option value="Tenor+Sans" <?php if($theme_control_headings_font=='Tenor+Sans'){echo $selected2;} ?>> Tenor Sans </option>
              <option value="Terminal+Dosis+Light" <?php if($theme_control_headings_font=='Terminal+Dosis+Light'){echo $selected2;} ?>>Terminal Dosis Light</option>
              <option value="The+Girl+Next+Door" <?php if($theme_control_headings_font=='The+Girl+Next+Door'){echo $selected2;} ?>>The Girl Next Door</option>
              <option value="Tinos" <?php if($theme_control_headings_font=='Tinos'){echo $selected2;} ?>>Tinos</option>
              <option value="Ubuntu+Condensed" <?php if($theme_control_headings_font=='Ubuntu+Condensed'){echo $selected2;} ?>>Ubuntu Condensed</option>
              <option value="Ultra" <?php if($theme_control_headings_font=='Ultra'){echo $selected2;} ?>>Ultra</option>
              <option value="Unkempt" <?php if($theme_control_headings_font=='Unkempt'){echo $selected2;} ?>>Unkempt</option>
              <option value="UnifrakturCook:bold" <?php if($theme_control_headings_font=='UnifrakturCook:bold'){echo $selected2;} ?>>UnifrakturCook</option>
              <option value="UnifrakturMaguntia" <?php if($theme_control_headings_font=='UnifrakturMaguntia'){echo $selected2;} ?>>UnifrakturMaguntia</option>
              <option value="Varela" <?php if($theme_control_headings_font=='Varela'){echo $selected2;} ?>>Varela</option>
              <option value="Varela+Round" <?php if($theme_control_headings_font=='Varela+Round'){echo $selected2;} ?>>Varela Round</option>
              <option value="Vibur" <?php if($theme_control_headings_font=='Vibur'){echo $selected2;} ?>>Vibur</option>
              <option value="Vollkorn" <?php if($theme_control_headings_font=='Vollkorn'){echo $selected2;} ?>>Vollkorn</option>
              <option value="Waiting+for+the+Sunrise" <?php if($theme_control_headings_font=='Waiting+for+the+Sunrise'){echo $selected2;} ?>>Waiting for the Sunrise</option>
              <option value="Wallpoet" <?php if($theme_control_headings_font=='Wallpoet'){echo $selected2;} ?>>Wallpoet</option>
              <option value="Walter+Turncoat" <?php if($theme_control_headings_font=='Walter+Turncoat'){echo $selected2;} ?>>Walter Turncoat</option>
              <option value="Wire+One" <?php if($theme_control_headings_font=='Wire+One'){echo $selected2;} ?>>Wire One</option>
              <option value="Yanone+Kaffeesatz" <?php if($theme_control_headings_font=='Yanone+Kaffeesatz'){echo $selected2;} ?>>Yanone Kaffeesatz</option>
              <option value="Yeseva+One" <?php if($theme_control_headings_font=='Yeseva+One'){echo $selected2;} ?>>Yeseva One</option>
              <option value="Yellowtail" <?php if($theme_control_headings_font=='Yellowtail'){echo $selected2;} ?>>Yellowtail</option>
              <option value="Zeyada" <?php if($theme_control_headings_font=='Zeyada'){echo $selected2;} ?>>Zeyada</option>
              <option value="Rochester" <?php if($theme_control_headings_font=='Rochester'){echo $selected2;} ?>>Rochester</option>
              <?php } else { ?>
              <option value="Arial">Arial</option>
              <option value="Aclonica">Aclonica</option>
              <option value="Allan">Allan</option>
              <option value="Annie+Use+Your+Telescope">Annie Use Your Telescope</option>
              <option value="Anonymous+Pro">Anonymous Pro</option>
              <option value="Allerta+Stencil">Allerta Stencil</option>
              <option value="Allerta">Allerta</option>
              <option value="Amaranth">Amaranth</option>
              <option value="Anton">Anton</option>
              <option value="Architects+Daughter">Architects Daughter</option>
              <option value="Arimo">Arimo</option>
              <option value="Artifika">Artifika</option>
              <option value="Arvo">Arvo</option>
              <option value="Asset">Asset</option>
              <option value="Astloch">Astloch</option>
              <option value="Bangers">Bangers</option>
              <option value="Bentham">Bentham</option>
              <option value="Bevan">Bevan</option>
              <option value="Bigshot+One">Bigshot One</option>
              <option value="Bowlby+One">Bowlby One</option>
              <option value="Bowlby+One+SC">Bowlby One SC</option>
              <option value="Brawler">Brawler </option>
              <option value="Buda">Buda</option>
              <option value="Cabin">Cabin</option>
              <option value="Calligraffitti">Calligraffitti</option>
              <option value="Candal">Candal</option>
              <option value="Cantarell">Cantarell</option>
              <option value="Cardo">Cardo</option>
              <option value="Carter+One">Carter One</option>
              <option value="Caudex">Caudex</option>
              <option value="Cedarville+Cursive">Cedarville Cursive</option>
              <option value="Cherry+Cream+Soda">Cherry Cream Soda</option>
              <option value="Chewy">Chewy</option>
              <option value="Coda">Coda</option>
              <option value="Coming+Soon">Coming Soon</option>
              <option value="Copse">Copse</option>
              <option value="Corben">Corben</option>
              <option value="Cousine">Cousine</option>
              <option value="Covered+By+Your+Grace">Covered By Your Grace</option>
              <option value="Crafty+Girls">Crafty Girls</option>
              <option value="Crimson+Text">Crimson Text</option>
              <option value="Crushed">Crushed</option>
              <option value="Cuprum">Cuprum</option>
              <option value="Damion">Damion</option>
              <option value="Dancing+Script">Dancing Script</option>
              <option value="Dawning+of+a+New+Day">Dawning of a New Day</option>
              <option value="Didact+Gothic">Didact Gothic</option>
              <option value="Droid+Sans">Droid Sans</option>
              <option value="Droid+Sans+Mono">Droid Sans Mono</option>
              <option value="Droid+Serif">Droid Serif</option>
              <option value="EB+Garamond">EB Garamond</option>
              <option value="Expletus+Sans">Expletus Sans</option>
              <option value="Fontdiner+Swanky">Fontdiner Swanky</option>
              <option value="Forum">Forum</option>
              <option value="Francois+One">Francois One</option>
              <option value="Federo">Federo</option>
              <option value="Geo">Geo</option>
              <option value="Give+You+Glory">Give You Glory</option>
              <option value="Goblin+One">Goblin One</option>
              <option value="Goudy+Bookletter+1911">Goudy Bookletter 1911</option>
              <option value="Gravitas+One">Gravitas One</option>
              <option value="Gruppo">Gruppo</option>
              <option value="Hammersmith+One">Hammersmith One</option>
              <option value="Holtwood+One+SC">Holtwood One SC</option>
              <option value="Homemade+Apple">Homemade Apple</option>
              <option value="Inconsolata">Inconsolata</option>
              <option value="Indie+Flower">Indie Flower</option>
              <option value="IM+Fell+DW+Pica">IM Fell DW Pica</option>
              <option value="IM+Fell+DW+Pica+SC">IM Fell DW Pica SC</option>
              <option value="IM+Fell+Double+Pica">IM Fell Double Pica</option>
              <option value="IM+Fell+Double+Pica+SC">IM Fell Double Pica SC</option>
              <option value="IM+Fell+English">IM Fell English</option>
              <option value="IM+Fell+English+SC">IM Fell English SC</option>
              <option value="IM+Fell+French+Canon">IM Fell French Canon</option>
              <option value="IM+Fell+French+Canon+SC">IM Fell French Canon SC</option>
              <option value="IM+Fell+Great+Primer">IM Fell Great Primer</option>
              <option value="IM+Fell+Great+Primer+SC">IM Fell Great Primer SC</option>
              <option value="Irish+Grover">Irish Grover</option>
              <option value="Irish+Growler">Irish Growler</option>
              <option value="Istok+Web">Istok Web</option>
              <option value="Josefin+Sans">Josefin Sans Regular 400</option>
              <option value="Josefin+Slab">Josefin Slab Regular 400</option>
              <option value="Judson">Judson</option>
              <option value="Jura"> Jura Regular</option>
              <option value="Just+Another+Hand">Just Another Hand</option>
              <option value="Just+Me+Again+Down+Here">Just Me Again Down Here</option>
              <option value="Kameron">Kameron</option>
              <option value="Kenia">Kenia</option>
              <option value="Kranky">Kranky</option>
              <option value="Kreon">Kreon</option>
              <option value="Kristi">Kristi</option>
              <option value="La+Belle+Aurore">La Belle Aurore</option>
              <option value="Lato">Lato</option>
              <option value="League+Script">League Script</option>
              <option value="Lekton"> Lekton </option>
              <option value="Limelight"> Limelight </option>
              <option value="Lobster">Lobster</option>
              <option value="Lobster+Two">Lobster Two</option>
              <option value="Lora">Lora</option>
              <option value="Love+Ya+Like+A+Sister">Love Ya Like A Sister</option>
              <option value="Loved+by+the+King">Loved by the King</option>
              <option value="Luckiest+Guy">Luckiest Guy</option>
              <option value="Maiden+Orange">Maiden Orange</option>
              <option value="Mako">Mako</option>
              <option value="Maven+Pro"> Maven Pro</option>
              <option value="Meddon">Meddon</option>
              <option value="MedievalSharp">MedievalSharp</option>
              <option value="Megrim">Megrim</option>
              <option value="Merriweather">Merriweather</option>
              <option value="Metrophobic">Metrophobic</option>
              <option value="Michroma">Michroma</option>
              <option value="Miltonian+Tattoo">Miltonian Tattoo</option>
              <option value="Miltonian">Miltonian</option>
              <option value="Modern+Antiqua">Modern Antiqua</option>
              <option value="Monofett">Monofett</option>
              <option value="Molengo">Molengo</option>
              <option value="Mountains+of+Christmas">Mountains of Christmas</option>
              <option value="Muli">Muli Regular</option>
              <option value="Neucha">Neucha</option>
              <option value="Neuton">Neuton</option>
              <option value="News+Cycle">News Cycle</option>
              <option value="Nixie+One">Nixie One</option>
              <option value="Nobile">Nobile</option>
              <option value="Nova+Cut">Nova Cut</option>
              <option value="Nova+Flat">Nova Flat</option>
              <option value="Nova+Mono">Nova Mono</option>
              <option value="Nova+Oval">Nova Oval</option>
              <option value="Nova+Round">Nova Round</option>
              <option value="Nova+Script">Nova Script</option>
              <option value="Nova+Slim">Nova Slim</option>
              <option value="Nova+Square">Nova Square</option>
              <option value="Nunito"> Nunito Regular</option>
              <option value="OFL+Sorts+Mill+Goudy+TT">OFL Sorts Mill Goudy TT</option>
              <option value="Old+Standard+TT">Old Standard TT</option>
              <option value="Open+Sans">Open Sans regular</option>
              <option value="Open+Sans+Condensed">Open Sans Condensed</option>
              <option value="Orbitron">Orbitron Regular (400)</option>
              <option value="Oswald">Oswald</option>
              <option value="Over+the+Rainbow">Over the Rainbow</option>
              <option value="Reenie+Beanie">Reenie Beanie</option>
              <option value="Pacifico">Pacifico</option>
              <option value="Patrick+Hand">Patrick Hand</option>
              <option value="Paytone+One">Paytone One</option>
              <option value="Permanent+Marker">Permanent Marker</option>
              <option value="Philosopher">Philosopher</option>
              <option value="Play">Play</option>
              <option value="Playfair+Display"> Playfair Display </option>
              <option value="Podkova"> Podkova </option>
              <option value="PT+Sans">PT Sans</option>
              <option value="PT+Sans+Narrow">PT Sans Narrow</option>
              <option value="PT+Serif">PT Serif</option>
              <option value="Puritan">Puritan</option>
              <option value="Quattrocento">Quattrocento</option>
              <option value="Quattrocento+Sans">Quattrocento Sans</option>
              <option value="Radley">Radley</option>
              <option value="Raleway">Raleway</option>
              <option value="Redressed">Redressed</option>
              <option value="Rock+Salt">Rock Salt</option>
              <option value="Rokkitt">Rokkitt</option>
              <option value="Ruslan+Display">Ruslan Display</option>
              <option value="Schoolbell">Schoolbell</option>
              <option value="Shadows+Into+Light">Shadows Into Light</option>
              <option value="Shanti">Shanti</option>
              <option value="Sigmar+One">Sigmar One</option>
              <option value="Six+Caps">Six Caps</option>
              <option value="Slackey">Slackey</option>
              <option value="Smythe">Smythe</option>
              <option value="Sniglet">Sniglet</option>
              <option value="Special+Elite">Special Elite</option>
              <option value="Stardos+Stencil">Stardos Stencil</option>
              <option value="Sue+Ellen+Francisco">Sue Ellen Francisco</option>
              <option value="Sunshiney">Sunshiney</option>
              <option value="Swanky+and+Moo+Moo">Swanky and Moo Moo</option>
              <option value="Syncopate">Syncopate</option>
              <option value="Tangerine">Tangerine</option>
              <option value="Tenor+Sans"> Tenor Sans </option>
              <option value="Terminal+Dosis+Light">Terminal Dosis Light</option>
              <option value="The+Girl+Next+Door">The Girl Next Door</option>
              <option value="Tinos">Tinos</option>
              <option value="Ubuntu+Condensed" selected="selected">Ubuntu Condensed</option>
              <option value="Ultra">Ultra</option>
              <option value="Unkempt">Unkempt</option>
              <option value="UnifrakturCook:bold">UnifrakturCook</option>
              <option value="UnifrakturMaguntia">UnifrakturMaguntia</option>
              <option value="Varela">Varela</option>
              <option value="Varela+Round">Varela Round</option>
              <option value="Vibur">Vibur</option>
              <option value="Vollkorn">Vollkorn</option>
              <option value="Waiting+for+the+Sunrise">Waiting for the Sunrise</option>
              <option value="Wallpoet">Wallpoet</option>
              <option value="Walter+Turncoat">Walter Turncoat</option>
              <option value="Wire+One">Wire One</option>
              <option value="Yanone+Kaffeesatz">Yanone Kaffeesatz</option>
              <option value="Yeseva+One">Yeseva One</option>
              <option value="Yellowtail">Yellowtail</option>
              <option value="Zeyada">Zeyada</option>
              <option value="Rochester">Rochester</option>
              <?php } ?>
            </select>
            <span class="default_value">Default value: Lobster</span></td>
        </tr>
      </table>
    </div>
    
    <div class="htabs-content" id="tab_social">
      <div>
        <h2 class="twitter"><span>Twitter Username</span></h2>
        <table class="form">
          <tr>
            <td><input id="theme_control_twitter_id" type="text" name="theme_control_twitter_id" value="<?php echo $theme_control_twitter_id ; ?>" class="spicy" >
              <span class="default_value">Twitter username goes here</span></td>
          </tr>
        </table>
      </div>
      <div>
        <h2 class="facebook"><span>Facebook User ID</span></h2>
        <table class="form">
          <tr>
            <td><input id="theme_control_facebook_id" type="text" name="theme_control_facebook_id" value="<?php echo $theme_control_facebook_id ; ?>" class="spicy" >
              <span class="default_value">Facebook ID goes here.</span></td>
          </tr>
        </table>
      </div>
      <div>
        <h2 class="skype"><span>Skype User ID</span></h2>
        <table class="form">
          <tr>
            <td><input id="theme_control_skype" type="text" name="theme_control_skype" value="<?php echo $theme_control_skype ; ?>" class="spicy" >
              <span class="default_value">Skype ID goes here.</span>
            </td>
          </tr>
        </table>
        <table class="form">
         <tr>
        <td>Skype button function</td>
        </tr>
        <tr>
        <td><select name="theme_control_skype_mode" class="spicy">
            <?php if (isset($theme_control_skype_mode)) {
              $selected11 = 'selected="selected"';
              ?>
            <option value="chat" <?php if($theme_control_skype_mode=='chat'){echo $selected11;} ?>>Chat</option>
            <option value="call" <?php if($theme_control_skype_mode=='call'){echo $selected11;} ?>>Call</option>
            <?php } else { ?>
            <option value="chat" selected="selected">Chat</option>
            <option value="call">Call</option>
            <?php } ?>
          </select>
          <span class="default_value">Default function: Chat</span></td>
      </tr>
        </table>
      </div>
    </div>
    
    <div class="htabs-content" id="tab_cards">
      <div>
        <h2 class="cards"><span>Footer Payment icons</span></h2>
        <table class="form">
        
        <tr>
          <td class="paypal" style="width:40px;"></td>
            <td>
            
            <select name="theme_control_paypal" class="spicy">
            <?php if (isset($theme_control_paypal)) {
              $selected113 = 'selected="selected"';
              ?>
            <option value="0" <?php if($theme_control_paypal=='0'){echo $selected113;} ?>>Disabled</option>
            <option value="1" <?php if($theme_control_paypal=='1'){echo $selected113;} ?>>Enabled</option>
            <?php } else { ?>
            <option value="0" selected="selected">Disabled</option>
            <option value="1">Enabled</option>
            <?php } ?>
          </select>              
            
            </td>
            </tr>
        
          <tr>
          <td class="visa" style="width:40px;"></td>
            <td>
            
            <select name="theme_control_visa" class="spicy">
            <?php if (isset($theme_control_visa)) {
              $selected111 = 'selected="selected"';
              ?>
            <option value="0" <?php if($theme_control_visa=='0'){echo $selected111;} ?>>Disabled</option>
            <option value="1" <?php if($theme_control_visa=='1'){echo $selected111;} ?>>Enabled</option>
            <?php } else { ?>
            <option value="0" selected="selected">Disabled</option>
            <option value="1">Enabled</option>
            <?php } ?>
          </select>              
            
            </td>
            </tr>
            
            <tr>
            <td class="electron" style="width:40px;"></td>
            <td>
            
            <select name="theme_control_electron" class="spicy">
            <?php if (isset($theme_control_electron)) {
              $selected112 = 'selected="selected"';
              ?>
            <option value="0" <?php if($theme_control_electron=='0'){echo $selected112;} ?>>Disabled</option>
            <option value="1" <?php if($theme_control_electron=='1'){echo $selected112;} ?>>Enabled</option>
            <?php } else { ?>
            <option value="0" selected="selected">Disabled</option>
            <option value="1">Enabled</option>
            <?php } ?>
          </select>              
            
            </td>
          </tr>
          
          <tr>
          <td class="master" style="width:40px;"></td>
            <td>
            
            <select name="theme_control_master" class="spicy">
            <?php if (isset($theme_control_master)) {
              $selected114 = 'selected="selected"';
              ?>
            <option value="0" <?php if($theme_control_master=='0'){echo $selected114;} ?>>Disabled</option>
            <option value="1" <?php if($theme_control_master=='1'){echo $selected114;} ?>>Enabled</option>
            <?php } else { ?>
            <option value="0" selected="selected">Disabled</option>
            <option value="1">Enabled</option>
            <?php } ?>
          </select>              
            
            </td>
            </tr>
            
            <tr>
            <td class="maestro" style="width:40px;"></td>
            <td>
            
            <select name="theme_control_maestro" class="spicy">
            <?php if (isset($theme_control_maestro)) {
              $selected115 = 'selected="selected"';
              ?>
            <option value="0" <?php if($theme_control_maestro=='0'){echo $selected115;} ?>>Disabled</option>
            <option value="1" <?php if($theme_control_maestro=='1'){echo $selected115;} ?>>Enabled</option>
            <?php } else { ?>
            <option value="0" selected="selected">Disabled</option>
            <option value="1">Enabled</option>
            <?php } ?>
          </select>              
            
            </td>
            </tr>
            
            <tr>
            <td class="american" style="width:40px;"></td>
            <td>
            
            <select name="theme_control_american" class="spicy">
            <?php if (isset($theme_control_american)) {
              $selected116 = 'selected="selected"';
              ?>
            <option value="0" <?php if($theme_control_american=='0'){echo $selected116;} ?>>Disabled</option>
            <option value="1" <?php if($theme_control_american=='1'){echo $selected116;} ?>>Enabled</option>
            <?php } else { ?>
            <option value="0" selected="selected">Disabled</option>
            <option value="1">Enabled</option>
            <?php } ?>
          </select>              
            
            </td>
            </tr>
            
            <tr>
            <td class="cirrus" style="width:40px;"></td>
            <td>
            
            <select name="theme_control_cirrus" class="spicy">
            <?php if (isset($theme_control_cirrus)) {
              $selected117 = 'selected="selected"';
              ?>
            <option value="0" <?php if($theme_control_cirrus=='0'){echo $selected117;} ?>>Disabled</option>
            <option value="1" <?php if($theme_control_cirrus=='1'){echo $selected117;} ?>>Enabled</option>
            <?php } else { ?>
            <option value="0" selected="selected">Disabled</option>
            <option value="1">Enabled</option>
            <?php } ?>
          </select>              
            
            </td>
            </tr>
            
            <tr>
            <td class="two_checkout" style="width:40px;"></td>
            <td>
            
            <select name="theme_control_2checkout" class="spicy">
            <?php if (isset($theme_control_2checkout)) {
              $selected118 = 'selected="selected"';
              ?>
            <option value="0" <?php if($theme_control_2checkout=='0'){echo $selected118;} ?>>Disabled</option>
            <option value="1" <?php if($theme_control_2checkout=='1'){echo $selected118;} ?>>Enabled</option>
            <?php } else { ?>
            <option value="0" selected="selected">Disabled</option>
            <option value="1">Enabled</option>
            <?php } ?>
          </select>              
            
            </td>
            </tr>
            
            <tr>
            <td class="delta" style="width:40px;"></td>
            <td>
            
            <select name="theme_control_delta" class="spicy">
            <?php if (isset($theme_control_delta)) {
              $selected119 = 'selected="selected"';
              ?>
            <option value="0" <?php if($theme_control_delta=='0'){echo $selected119;} ?>>Disabled</option>
            <option value="1" <?php if($theme_control_delta=='1'){echo $selected119;} ?>>Enabled</option>
            <?php } else { ?>
            <option value="0" selected="selected">Disabled</option>
            <option value="1">Enabled</option>
            <?php } ?>
          </select>              
            
            </td>
            </tr>
            
            <tr>
            <td class="discover" style="width:40px;"></td>
            <td>
            
            <select name="theme_control_discover" class="spicy">
            <?php if (isset($theme_control_discover)) {
              $selected120 = 'selected="selected"';
              ?>
            <option value="0" <?php if($theme_control_discover=='0'){echo $selected120;} ?>>Disabled</option>
            <option value="1" <?php if($theme_control_discover=='1'){echo $selected120;} ?>>Enabled</option>
            <?php } else { ?>
            <option value="0" selected="selected">Disabled</option>
            <option value="1">Enabled</option>
            <?php } ?>
          </select>              
            
            </td>
            </tr>
            
            <tr>
            <td class="google" style="width:40px;"></td>
            <td>
            
            <select name="theme_control_google" class="spicy">
            <?php if (isset($theme_control_google)) {
              $selected121 = 'selected="selected"';
              ?>
            <option value="0" <?php if($theme_control_google=='0'){echo $selected121;} ?>>Disabled</option>
            <option value="1" <?php if($theme_control_google=='1'){echo $selected121;} ?>>Enabled</option>
            <?php } else { ?>
            <option value="0" selected="selected">Disabled</option>
            <option value="1">Enabled</option>
            <?php } ?>
          </select>              
            
            </td>
            </tr>
            
            <tr>
            <td class="moneybookers" style="width:40px;"></td>
            <td>
            
            <select name="theme_control_moneybookers" class="spicy">
            <?php if (isset($theme_control_moneybookers)) {
              $selected122 = 'selected="selected"';
              ?>
            <option value="0" <?php if($theme_control_moneybookers=='0'){echo $selected122;} ?>>Disabled</option>
            <option value="1" <?php if($theme_control_moneybookers=='1'){echo $selected122;} ?>>Enabled</option>
            <?php } else { ?>
            <option value="0" selected="selected">Disabled</option>
            <option value="1">Enabled</option>
            <?php } ?>
          </select>              
            
            </td>
            </tr>
            
            <tr>
            <td class="sage" style="width:40px;"></td>
            <td>
            
            <select name="theme_control_sage" class="spicy">
            <?php if (isset($theme_control_sage)) {
              $selected123 = 'selected="selected"';
              ?>
            <option value="0" <?php if($theme_control_sage=='0'){echo $selected123;} ?>>Disabled</option>
            <option value="1" <?php if($theme_control_sage=='1'){echo $selected123;} ?>>Enabled</option>
            <?php } else { ?>
            <option value="0" selected="selected">Disabled</option>
            <option value="1">Enabled</option>
            <?php } ?>
          </select>              
            
            </td>
            </tr>
            
            <tr>
            <td class="solo" style="width:40px;"></td>
            <td>
            
            <select name="theme_control_solo" class="spicy">
            <?php if (isset($theme_control_solo)) {
              $selected124 = 'selected="selected"';
              ?>
            <option value="0" <?php if($theme_control_solo=='0'){echo $selected124;} ?>>Disabled</option>
            <option value="1" <?php if($theme_control_solo=='1'){echo $selected124;} ?>>Enabled</option>
            <?php } else { ?>
            <option value="0" selected="selected">Disabled</option>
            <option value="1">Enabled</option>
            <?php } ?>
          </select>              
            
            </td>
            </tr>
            
            <tr>
            <td class="switch" style="width:40px;"></td>
            <td>
            
            <select name="theme_control_switch" class="spicy">
            <?php if (isset($theme_control_switch)) {
              $selected125 = 'selected="selected"';
              ?>
            <option value="0" <?php if($theme_control_switch=='0'){echo $selected125;} ?>>Disabled</option>
            <option value="1" <?php if($theme_control_switch=='1'){echo $selected125;} ?>>Enabled</option>
            <?php } else { ?>
            <option value="0" selected="selected">Disabled</option>
            <option value="1">Enabled</option>
            <?php } ?>
          </select>              
            
            </td>
            </tr>
            
            <tr>
            <td class="western" style="width:40px;"></td>
            <td>
            
            <select name="theme_control_western" class="spicy">
            <?php if (isset($theme_control_western)) {
              $selected126 = 'selected="selected"';
              ?>
            <option value="0" <?php if($theme_control_western=='0'){echo $selected126;} ?>>Disabled</option>
            <option value="1" <?php if($theme_control_western=='1'){echo $selected126;} ?>>Enabled</option>
            <?php } else { ?>
            <option value="0" selected="selected">Disabled</option>
            <option value="1">Enabled</option>
            <?php } ?>
          </select>              
            
            </td>
            </tr>
          
        </table>
      </div>
      
      
    </div>
    
    </div>
    <div class="box fixed">
    <div class="content_full">
    <h2 class="on_off"><span>Settings ON/OFF</span></h2>
    <table class="form">
      <tr> </tr>
      <tr>
        <td>Disable / Enable custom options? </td>
        <td><select name="theme_control_status" class="spicy">
            <?php
														if ($theme_control_status) {
															?>
            <option value="1" selected="selected">
            <?php
															echo $text_enabled;
															?>
            </option>
            <option value="0">
            <?php
															echo $text_disabled;
															?>
            </option>
            <?php
														} else {
															?>
            <option value="1">
            <?php
															echo $text_enabled;
															?>
            </option>
            <option value="0" selected="selected">
            <?php
															echo $text_disabled;
															?>
            </option>
            <?php
														}
														?>
          </select></td>
      </tr>
    </table>
  </form>
</div>
</div>
<script type="text/javascript">

$(document).ready(function() {

	$('	#theme_control_headings_color,	#theme_control_text_color, #theme_control_links_color, #theme_control_links_color_hover, #theme_control_body_bg_color, #theme_control_button_color, #theme_control_button_color_hover, #theme_control_price_color,	#theme_control_footer_bg_color, #theme_control_header_bg_color, #theme_control_content_background_color, #theme_control_column_box_color, #theme_control_container_bg_color, #theme_control_column_box_title, #theme_control_footer_box_title, #theme_control_footer_link_color, #theme_control_footer_link_border, #theme_control_main_menu_color, #theme_control_category_menu_color, #theme_control_category_menu_bg, #theme_control_prefooter_bg, #theme_control_header_text_color, #theme_control_main_price_color, #theme_control_old_price_color, #theme_control_cart_button_color, #theme_control_buttons_color').ColorPicker({
		onSubmit: function(hsb, hex, rgb, el) {
			$(el).val(hex);
			$(el).ColorPickerHide();
		},
		onBeforeShow: function () {
			$(this).ColorPickerSetColor(this.value);
		}
	})
	.bind('keyup', function(){
		$(this).ColorPickerSetColor(this.value);
	});
	 });
</script> 
<script type="text/javascript" src="view/javascript/ckeditor/ckeditor.js"></script> 
<script type="text/javascript"><!--
function image_upload(field, preview) {
	$('#dialog').remove();
	
	$('#content').prepend('<div id="dialog" style="padding: 3px 0px 0px 0px;"><iframe src="index.php?route=common/filemanager&token=<?php echo $token; ?>&field=' + encodeURIComponent(field) + '" style="padding:0; margin: 0; display: block; width: 100%; height: 100%;" frameborder="no" scrolling="auto"></iframe></div>');
	
	$('#dialog').dialog({
		title: '<?php echo $text_image_manager; ?>',
		close: function (event, ui) {
			if ($('#' + field).attr('value')) {
				$.ajax({
					url: 'index.php?route=common/filemanager/image&token=<?php echo $token; ?>',
					type: 'POST',
					data: 'image=' + encodeURIComponent($('#' + field).attr('value')),
					dataType: 'text',
					success: function(data) {
						$('#' + preview).replaceWith('<img src="' + data + '" alt="" id="' + preview + '" class="image" onclick="image_upload(\'' + field + '\', \'' + preview + '\');" />');
					}
				});
			}
		},	
		bgiframe: false,
		width: 700,
		height: 400,
		resizable: false,
		modal: false
	});
};
//--></script> 
<script type="text/javascript"><!--
$('#tabs a').tabs();
//--></script> 
<?php echo $footer; ?> 