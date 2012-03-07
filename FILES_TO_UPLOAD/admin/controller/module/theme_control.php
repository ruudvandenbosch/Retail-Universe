<?php
class ControllerModuleThemeControl extends Controller {
	
	private $error = array(); 
	
	public function index() {   
		
		$this->load->language('module/theme_control');

		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('setting/setting');
		
		$this->load->model('tool/image');
		
		$this->document->addScript('view/javascript/jquery/colorpicker.js');
		$this->document->addScript('view/javascript/jquery/jquery.ibutton.min.js');
		$this->document->addStyle('view/stylesheet/css/colorpicker.css');
		$this->document->addStyle('view/stylesheet/css/theme_control.css');
		
		

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_setting_setting->editSetting('theme_control', $this->request->post);	

				
					
			$this->session->data['success'] = $this->language->get('text_success');
		
						
			$this->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
		}
		
			$this->data['text_image_manager'] = 'Image manager';
			$this->data['token'] = $this->session->data['token'];		
		
		$text_strings = array(
				'heading_title',
				'text_enabled',
				'text_disabled',
				'text_content_top',
				'text_content_bottom',
				'text_column_left',
				'text_column_right',
				'entry_layout',
				'entry_position',
				'entry_status',
				'entry_sort_order',
				'button_save',
				'button_cancel',
				'button_add_module',
				'button_remove',
				'entry_example' 
		);
		
		foreach ($text_strings as $text) {
			$this->data[$text] = $this->language->get($text);
		}
		
		
		$config_data = array(
		'theme_control_status',
		'theme_control_preheader',
		'theme_control_layout',
		'theme_control_skin',
		'theme_control_menu',
		'theme_control_preview',
		'theme_control_headings_color',
		'theme_control_text_color',
		'theme_control_links_color',
		'theme_control_links_color_hover',
		'theme_control_main_menu_color',
		'theme_control_category_menu_color',
		'theme_control_body_bg_color',
		'theme_control_body_bg_pattern',
		'theme_control_container_bg_color',
		'theme_control_footer_bg_color',
		'theme_control_footer_bg_pattern',
		'theme_control_header_bg_color',
		'theme_control_header_bg_pattern',
		'theme_control_content_background_color',
		'theme_control_content_bg_pattern',
		'theme_control_header_text_color',
		'theme_control_category_menu_bg',
		'theme_control_prefooter_bg',
		'theme_control_column_box_color',
		'theme_control_column_box_title',
		'theme_control_footer_link_color',
		'theme_control_footer_link_border',
		'theme_control_old_price_color',
		'theme_control_main_price_color',
		'theme_control_cart_button_color',
		'theme_control_buttons_color',
		'theme_control_headings_font',
		'theme_control_body_font',
		'theme_control_twitter_id',
		'theme_control_facebook_id',
		'theme_control_skype_mode',
		'theme_control_skype',
		'theme_control_western',
		'theme_control_switch',
		'theme_control_solo',
		'theme_control_sage',
		'theme_control_moneybookers',
		'theme_control_google',
		'theme_control_discover',
		'theme_control_delta',
		'theme_control_2checkout',
		'theme_control_cirrus',
		'theme_control_american',
		'theme_control_maestro',
		'theme_control_master',
		'theme_control_electron',
		'theme_control_visa',
		'theme_control_paypal'
		);
		
		foreach ($config_data as $conf) {
			if (isset($this->request->post[$conf])) {
				$this->data[$conf] = $this->request->post[$conf];
			} else {
				$this->data[$conf] = $this->config->get($conf);
			}
		}
		
		
		
	

 		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}
		

  		$this->data['breadcrumbs'] = array();

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => false
   		);

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_module'),
			'href'      => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('module/theme_control', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
		$this->data['action'] = $this->url->link('module/theme_control', 'token=' . $this->session->data['token'], 'SSL');
		
		$this->data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');

	

		if (isset($this->request->post['theme_control_module'])) {
			$modules = explode(',', $this->request->post['theme_control_module']);
		} elseif ($this->config->get('theme_control_module') != '') {
			$modules = explode(',', $this->config->get('theme_control_module'));
		} else {
			$modules = array();
		}			
				
		$this->load->model('design/layout');
		
		$this->data['layouts'] = $this->model_design_layout->getLayouts();
				
		foreach ($modules as $module) {
			if (isset($this->request->post['theme_control_' . $module . '_layout_id'])) {
				$this->data['theme_control_' . $module . '_layout_id'] = $this->request->post['theme_control_' . $module . '_layout_id'];
			} else {
				$this->data['theme_control_' . $module . '_layout_id'] = $this->config->get('theme_control_' . $module . '_layout_id');
			}	
			
			if (isset($this->request->post['theme_control_' . $module . '_position'])) {
				$this->data['theme_control_' . $module . '_position'] = $this->request->post['theme_control_' . $module . '_position'];
			} else {
				$this->data['theme_control_' . $module . '_position'] = $this->config->get('theme_control_' . $module . '_position');
			}	
			
			if (isset($this->request->post['theme_control_' . $module . '_status'])) {
				$this->data['theme_control_' . $module . '_status'] = $this->request->post['theme_control_' . $module . '_status'];
			} else {
				$this->data['theme_control_' . $module . '_status'] = $this->config->get('theme_control_' . $module . '_status');
			}	
						
			if (isset($this->request->post['theme_control_' . $module . '_sort_order'])) {
				$this->data['theme_control_' . $module . '_sort_order'] = $this->request->post['theme_control_' . $module . '_sort_order'];
			} else {
				$this->data['theme_control_' . $module . '_sort_order'] = $this->config->get('theme_control_' . $module . '_sort_order');
			}				
		}
		

		
		$this->data['modules'] = $modules;
		
		if (isset($this->request->post['theme_control_module'])) {
			$this->data['theme_control_module'] = $this->request->post['theme_control_module'];
		} else {
			$this->data['theme_control_module'] = $this->config->get('theme_control_module');
		}

		$this->template = 'module/theme_control.tpl';
		$this->children = array(
			'common/header',
			'common/footer',
		);
		


		$this->response->setOutput($this->render());
	}

	
	
	private function validate() {
		if (!$this->user->hasPermission('modify', 'module/theme_control')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		
		if (!$this->error) {
			return TRUE;
		} else {
			return FALSE;
		}	
	}


}
?>