
    <script type="text/javascript">
      var flashvars = {};
      flashvars.cssSource = "catalog/view/theme/RetailUniverse/stylesheet/piecemaker.css";
      flashvars.xmlSource = "<?php echo $host;?>index.php?route=module/piecemaker/xml%26module=<?php echo $module;?>";
    
      var params = {};
      params.play = "true";
      params.menu = "false";
      params.scale = "showall";
      params.wmode = "transparent";
      params.allowfullscreen = "true";
      params.allowscriptaccess = "always";
      params.allownetworking = "all";
    
      swfobject.embedSWF('image/data/piecemaker.swf?random_number=<?php echo rand(1, 10000);?>', 'piecemaker<?php echo $module;?>', '<?php echo $flashwidth; ?>', '<?php echo $flashheight; ?>', '10', null, flashvars,    
      params, null);   
    </script>

<div class="pieceholder">

    <div id="piecemaker<?php echo $module;?>">
      <p></p>
    </div>

  </div>