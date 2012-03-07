<?php  
class ControllerModulePiecemaker extends Controller {
  protected function index($setting) {
    static $module = 0;
    
    $this->document->addScript('catalog/view/javascript/scripts/swfobject/swfobject.js');
    
    $this->data['flashwidth'] = (int)($setting['flashwidth']) + 1.4;
    $this->data['flashheight'] = (int)($setting['flashheight']) * 1.2;
    
    $all_settings = $this->config->get('piecemaker_module');

    $this->data['module'] = array_search($setting, $all_settings );
    $this->data['host'] = HTTP_SERVER;
    
    
    $this->template = 'RetailUniverse/template/module/piecemaker.tpl';
    
    $this->render();
  }

  public function xml(){
    
    $module = $this->request->get['module'];
        
    $this->load->model('design/banner');
    $this->load->model('tool/image');
    
    $settings = $this->config->get('piecemaker_module');
    
    $results = $this->model_design_banner->getBanner($settings[$module]['banner_id']);
    
    header("Content-type: text/xml");
    
    $xml = '<?xml version="1.0" encoding="utf-8" ?> ';
    $xml .= '<Piecemaker> ';
    $xml .= '  <Contents> ';
    foreach ($results as $result) {
      if (file_exists(DIR_IMAGE . $result['image'])) {
          $xml .= '<Image Source="'.$this->model_tool_image->resize($result['image'], $settings[$module]['width'], $settings[$module]['height']).'" Title="'.$result['title'].'">';
          $xml .=   '<Hyperlink URL="'.$result['link'].'" Target="_blank" />';
          $xml .= '</Image>';         
      }
    }
    $xml .= '  </Contents> ';
    $xml .= '  <Settings ImageWidth="'.$settings[$module]['width'].'" ImageHeight="'.$settings[$module]['height'].'" LoaderColor="0x333333" ';
    $xml .=   'InnerSideColor="0x222222" SideShadowAlpha="0.8" DropShadowAlpha="0.4" DropShadowDistance="15" DropShadowScale="0.95" DropShadowBlurX="40" DropShadowBlurY="4" MenuDistanceX="20" ';
    $xml .=   'MenuDistanceY="30" MenuColor1="0x999999" MenuColor2="0x333333" MenuColor3="0xFFFFFF" ControlSize="60" ControlDistance="20" ControlColor1="0x222222" ControlColor2="0xFFFFFF" ControlAlpha="0.8" ControlAlphaOver="0.95" ControlsX="480" ';
    $xml .=   'ControlsY="200" ControlsAlign="center" TooltipHeight="30" TooltipColor="0x222222" TooltipTextY="5" TooltipTextStyle="P-Italic" TooltipTextColor="0xFFFFFF" TooltipMarginLeft="5" TooltipMarginRight="7" TooltipTextSharpness="50" ';
    $xml .=   'TooltipTextThickness="-100" InfoWidth="400" InfoBackground="0xFFFFFF" InfoBackgroundAlpha="0.95" InfoMargin="15" InfoSharpness="0" InfoThickness="0" Autoplay="'.$settings[$module]['autoplay'].'" FieldOfView="45"></Settings> ';  
    $xml .= '  <Transitions> ';
    $xml .= '    <Transition Pieces="7" Time="5" Transition="easeOutElastic" Delay="0.1" DepthOffset="200" CubeDistance="30"></Transition> ';
    $xml .= '    <Transition Pieces="7" Time="5" Transition="easeOutBounce" Delay="0.1" DepthOffset="200" CubeDistance="25"></Transition> ';
    $xml .= '    <Transition Pieces="5" Time="1.3" Transition="easeInOutCubic" Delay="0.1" DepthOffset="500" CubeDistance="50"></Transition> ';
    $xml .= '    <Transition Pieces="9" Time="1.25" Transition="easeInQuint" Delay="0.1" DepthOffset="900" CubeDistance="5"></Transition> ';
    $xml .= '  </Transitions> ';
    $xml .= '</Piecemaker>';
    
    echo $xml;
  }
}
?>
