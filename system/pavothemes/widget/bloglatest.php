<?php
/******************************************************
 *  Leo Opencart Theme Framework for Opencart 1.5.x
 *
 * @package   leotempcp
 * @version   3.0
 * @author    http://www.leotheme.com
 * @copyright Copyright (C) October 2013 LeoThemes.com <@emai:leotheme@gmail.com>
 *               <info@leotheme.com>.All rights reserved.
 * @license   GNU General Public License version 2
 * ******************************************************/

class PtsWidgetBloglatest extends PtsWidgetPageBuilder {

	public $name = 'bloglatest';


	public  static function getWidgetInfo(){
		return array( 'label' => 'Blog Latest', 'explain' => 'Integrate with Leo Blog Module to get blogs', 'group' => 'blog'  );
	}

	public static function renderButton(){

	}

	public function renderForm( $args, $data ){


		$helper = $this->getFormHelper();

		$this->fields_form[1]['form'] = array(
            'legend' => array(
                'title' => $this->l('Widget Form.'),
            ),
            'input' => array(
                array(
					'type' => 'text',
					'label' => $this->l('Blogs to display.'),
					'name' => ('itemsperpage'),
					'desc' => $this->l('Define the number of blogs displayed in this block.'),
					'default' => '4'
				),
			 	array(
                    'type'  => 'textarea',
                    'label' => $this->l('Title Description'),
                    'name'  => 'title_description',
                    'default'=> '',
                    'lang'  => true,
                    'cols' => 40,
                    'rows' => 10,
                    'value' => '',
                    'autoload_rte' => true
                ),
				array(
					'type' => 'text',
					'label' => $this->l('Image Blog Width'),
					'name' => ('width'),
					//'class' => 'fixed-width-xs',
					'desc' => $this->l('Define the width of images displayed in this block.'),
					'default' => '280'
				),
				array(
					'type' => 'text',
					'label' => $this->l('Image Blog Height.'),
					'name' => ('height'),
					//'class' => 'fixed-width-xs',
					'desc' => $this->l('Define the height of images displayed in this block.'),
					'default' => '240'
				),

				array(
					'type' => 'text',
					'label' => $this->l('Colums In Tab.'),
					'name' => ('cols'),
					//'class' => 'fixed-width-xs',
					'desc' => $this->l('The maximum column items  in tab.'),
					'default' => '4'
				),


            ),
      		 'submit' => array(
                'title' => $this->l('Save'),
                'class' => 'button'
       		 )
        );


	 	$default_lang = (int)$this->config->get('config_language_id');

		$helper->tpl_vars = array(
                'fields_value' => $this->getConfigFieldsValues( $data  ),

                'id_language' => $default_lang
    	);
		return  $helper->generateForm( $this->fields_form );

	}



	public function renderContent(  $args, $setting ){

		$t  = array(
			'name'=> '',
			'title_description' => 'This is title description',
			'html'   => '',
			'height' => 130,
			'width'  => 170,
			'nbr'    => 6,
			'page'   => 3,
			'cols'	 => 4,
			'intv'	 => 8000,
			'show'  => 1,
			'tabs'	=> ''
		);

		$setting = array_merge( $t, $setting );

        // THEME CONFIG
            $setting['objlang'] = $this->registry->get('language');
            $setting['ourl'] = $this->registry->get('url');

            $config = $this->registry->get("config");
            $setting['sconfig'] = $config;
            $setting['themename'] = $config->get("theme_default_directory");


		if( is_dir(DIR_APPLICATION.'model/pavblog') ){

			$this->load->model('pavblog/blog');
			$this->load->model('catalog/product');
			$this->load->model('tool/image');
			$this->language->load('extension/module/pavblog');


	 		$data = array(
				'sort'  => 'b.`created`',
				'order' => 'DESC',
				'start' => 0,
				'limit' => $setting['nbr']
			);

				if( $setting['tabs'] == 'featured' ){
				$data['featured'] = 1;
				$blogs = $this->model_pavblog_blog->getListBlogs( $data );
			}elseif( $setting['tabs'] == 'mostviewed' ){
				$data['sort'] = 'b.`hits`';
				$blogs = $this->model_pavblog_blog->getListBlogs( $data );
			}else {
				$blogs = $this->model_pavblog_blog->getListBlogs( $data );
			}




			$this->load->model('pavblog/category');
			$users = $this->model_pavblog_category->getUsers();

			foreach( $blogs as $key => $blog ){
				if( $blogs[$key]['image'] ){
					$blogs[$key]['thumb'] = $this->model_tool_image->resize($blog['image'], $setting['width'], $setting['height'] );
				}else {
					$blogs[$key]['thumb'] = '';
				}

				$blogs[$key]['description'] = html_entity_decode($blog['description'], ENT_QUOTES, 'UTF-8');
				$blogs[$key]['author'] = isset($users[$blog['user_id']])?$users[$blog['user_id']]:$this->language->get('text_none_author');
				$blogs[$key]['category_link'] =  $this->url->link( 'pavblog/category', "path=".$blog['category_id'] );
				$blogs[$key]['comment_count'] =  10;
				$blogs[$key]['link'] =  $this->url->link( 'pavblog/blog','blog_id='.$blog['blog_id'] );
			}
		}



		$setting['blogs'] = $blogs; // d( $setting );

		$languageID = $this->config->get('config_language_id');
		$setting['heading_title'] = isset($setting['widget_title_'.$languageID])?$setting['widget_title_'.$languageID]:'';
		$setting['title_description'] = isset($setting['title_description_'.$languageID])?($setting['title_description_'.$languageID]): '';
		$output = array('type'=>'bloglatest','data' => $setting );


  		return $output;

	}

}
?>