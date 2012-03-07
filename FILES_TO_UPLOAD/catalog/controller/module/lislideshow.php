<?php  
class ControllerModuleLiSlideshow extends Controller {
	protected function index($setting) {
		static $module = 0;
		
		$this->load->model('design/banner');
		$this->load->model('tool/image');
		
		$this->document->addScript('catalog/view/theme/' . $this->config->get('config_template') . '/js/jquery.easing.1.3.js');
		$this->document->addScript('catalog/view/theme/' . $this->config->get('config_template') . '/js/li-slider/js/li-slider-animations-1.1.min.js');
		$this->document->addScript('catalog/view/theme/' . $this->config->get('config_template') . '/js/li-slider/js/li-slider-1.1.min.js');
		$this->document->addScript('catalog/view/theme/' . $this->config->get('config_template') . '/js/prettyphoto/js/jquery.prettyPhoto.js');
		$this->document->addScript('catalog/view/theme/' . $this->config->get('config_template') . '/js/lightbox-0.5/js/jquery.lightbox-0.5.min.js');
		$this->document->addStyle('catalog/view/theme/' . $this->config->get('config_template') . '/js/li-slider/skins/Trend/skin.css');
		$this->document->addStyle('catalog/view/theme/' . $this->config->get('config_template') . '/js/lightbox-0.5/css/jquery.lightbox-0.5.css');
		$this->document->addStyle('catalog/view/theme/' . $this->config->get('config_template') . '/js/prettyphoto/css/prettyPhoto.css');
		
		
		$this->data['width'] = $setting['width'];
		$this->data['height'] = $setting['height'];
		
		$this->data['banners'] = array();
		
		$results = $this->model_design_banner->getBanner($setting['banner_id']);
		  
		foreach ($results as $result) {
			if (file_exists(DIR_IMAGE . $result['image'])) {
				$this->data['banners'][] = array(
					'title' => $result['title'],
					'link'  => $result['link'],
					'image' => $this->model_tool_image->resize($result['image'], $setting['width'], $setting['height'])
				);
			}
		}
		
		$this->data['module'] = $module++;
						
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/lislideshow.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/lislideshow.tpl';
		} else {
			$this->template = 'default/template/module/lislideshow.tpl';
		}
		
		$this->render();
	}
}
?>