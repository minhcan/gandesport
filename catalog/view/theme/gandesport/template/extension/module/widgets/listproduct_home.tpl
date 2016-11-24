<?php
	$config = $sconfig;
	$theme  = $themename;
	$span = 12/$cols;
	$id = rand(1,9)+substr(md5($heading_title),0,3);
	$themeConfig = (array)$config->get('themecontrol');
	$listingConfig = array(
		'category_pzoom'    => 1,
		'quickview'         => 0,
		'product_layout'	=> 'default',
		'enable_paneltool'	=> 0
	);
	$listingConfig = array_merge($listingConfig, $themeConfig );
	$quickview     = $listingConfig['quickview'];
	$categoryPzoom = isset($themeConfig['category_pzoom']) ? $themeConfig['category_pzoom']:0;


	if( $listingConfig['enable_paneltool'] && isset($_COOKIE[$theme.'_productlayout']) && $_COOKIE[$theme.'_productlayout'] ){
		$listingConfig['product_layout'] = trim($_COOKIE[$theme.'_productlayout']);
	}
	$productLayout = DIR_TEMPLATE.$theme.'/template/common/product/'.$listingConfig['product_layout'].'.tpl';	
	if( !is_file($productLayout) ){
		$listingConfig['product_layout'] = 'default';
	}
	$productLayout = DIR_TEMPLATE.$theme.'/template/common/product/'.$listingConfig['product_layout'].'.tpl';
	$button_cart = $this->language->get('button_cart');
	$columns_count  = 1;
?>


<div class="listproduct panel <?php echo $addition_cls; ?>">
	<?php if( $show_title ) { ?>
	<div class="widget-heading panel-heading">
		<h3 class="panel-title"><?php echo $heading_title?></h3><br>
		<?php if( $title_description ) { ?>
	   		<span class="desciption-title"><?php echo strip_tags(html_entity_decode($title_description, ENT_QUOTES, 'UTF-8')); ?></span>
	   <?php } ?>
	</div>
	<?php } ?>
   <div class="panel-body">
	<div class="row">
		<!-- banner -->
		<?php if ($layout == 'layout_1') { ?>
			<?php if(!empty($banner)) { ?>
			<div class="col-xs-12 col-sm-12 col-md-3 col-lg-3 hidden-sm hidden-xs">
				<a href="#">
				<div class="effect-v3">
					<img class="img-responsive" src="<?php echo $banner; ?>" alt="img">
				</div>
				</a>
			</div>
			<?php } ?>
		<?php } ?>

		<!-- col2 first product -->
		<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 product-grid">
			<?php require( DIR_TEMPLATE.$themename.'/template/common/product/first_product.tpl');?>
		</div>

		<!-- column 1 -->		
		<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">	
			<div class="box-products  owl-carousel-play" id="carousel<?php echo $id;?>" data-ride="owlcarousel">
				<?php if( count($list1) > $itemsperpage ) { ?>
					<div class="carousel-controls">
						<a class="carousel-control carousel-sm left" href="#carousel<?php echo $id;?>"   data-slide="prev">
							<i class="fa fa-angle-left"></i>
						</a>
						<a class="carousel-control carousel-sm right" href="#carousel<?php echo $id;?>"  data-slide="next">
							<i class="fa fa-angle-right"></i>
						</a>
					</div>
				<?php } ?>	
				<div class="owl-carousel product-grid" data-show="<?php echo ($columns_count); ?>" data-pagination="false" data-navigation="true">
					<?php $pages = array_chunk( $list1, $itemsperpage); ?>
					<?php foreach ($pages as  $k => $tproducts ) {   ?>
					<div class="item <?php if($k==0) {?>active<?php } ?> products-block col-nopadding">
						<?php foreach( $tproducts as $i => $product ) {  $i=$i+1;?>
							<?php if( $i%$cols == 1 || $cols == 1) { ?>
							<div class="row products-row <?php ;if($i == count($tproducts) - $cols +1) { echo "last";} ?>"><?php //start box-product?>
							<?php } ?>
								<div class="col-md-<?php echo $span;?> col-sm-<?php echo $span;?> col-xs-12 <?php if($i%$cols == 0) { echo "last";} ?> product-col border">
									<?php require( $productLayout );  ?>
								</div>

							<?php if( $i%$cols == 0 || $i==count($tproducts) ) { ?>
							</div><?php //end box-product?>
							<?php } ?>
						<?php } //endforeach; ?>
					</div>
				  <?php } ?>
				</div>
			
			</div>
		</div>
		<!-- banner -->
		<?php if ($layout == 'layout_2') { ?>
			<?php if(!empty($banner)) { ?>
			<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 hidden-sm hidden-xs">
				<a href="#">
				<div class="effect-v3">
					<img class="img-responsive" src="<?php echo $banner; ?>" alt="img">
				</div>
				</a>
			</div>
			<?php } ?>
		<?php } ?>
	</div>
	</div>
</div>