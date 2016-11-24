<?php
	$themeConfig = (array)$this->config->get('themecontrol');
	$listingConfig = array(
		'category_pzoom'        => 1,
		'quickview'             => 0,
		'show_swap_image'       => 0,
		'product_layout'		=> 'default',
		'enable_paneltool'	    => 0
	);
	$listingConfig = array_merge($listingConfig, $themeConfig );
	$categoryPzoom = $listingConfig['category_pzoom'];
	$quickview     = $listingConfig['quickview'];
	$swapimg       = $listingConfig['show_swap_image'];
	$categoryPzoom = isset($themeConfig['category_pzoom']) ? $themeConfig['category_pzoom']:0; 

	$span = 12/$cols;

	$productLayout = DIR_TEMPLATE.$this->config->get('theme_default_directory').'/template/common/product/'.$listingConfig['product_layout'].'.tpl';	
	if( !is_file($productLayout) ){
		$listingConfig['product_layout'] = 'default';
	}
	$productLayout = DIR_TEMPLATE.$this->config->get('theme_default_directory').'/template/common/product/'.$listingConfig['product_layout'].'.tpl';	
	$button_cart = $this->language->get('button_cart');
?>

<div class="panel panel-default product-grid nopadding">
	<?php if( $show_title ) { ?>
	<div class="widget-heading panel-heading hightlight space-10">
		<h3 class="panel-title"><?php echo $heading_title?></h3>
		<br>
		<?php if( $title_description ) { ?>
            <span class="desciption-title"><?php echo strip_tags(html_entity_decode($title_description, ENT_QUOTES, 'UTF-8')); ?></span>
       <?php } ?>
	</div>
	<?php } ?>
	<div class="panel-body widget-content <?php echo $addition_cls; ?>">
		<div class="products-row">
			<?php foreach ($products as $product) { ?>
			<div class="w-product clearfix col-lg-<?php echo $cols;?> col-md-<?php echo $cols;?> col-sm-12 col-xs-12">
				<?php require( $productLayout );  ?>   
			</div>
			<?php } ?>
		</div>
	</div>
</div>