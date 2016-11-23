<?php
	$col = isset($cols)?$cols:4;
	$span = 12/$col;
	$objlang = $this->registry->get('language');
?>
<div class="feature-category feature-category-v1 panel panel-warning <?php echo $addition_cls?>">
	<?php if( $show_title ) { ?>
	<div class="widget-heading panel-heading">
		<h3 class="panel-title"><?php echo $heading_title?></h3><br>
		<?php if( $title_description ) { ?>
	   		<span class="desciption-title"><?php echo strip_tags(html_entity_decode($title_description, ENT_QUOTES, 'UTF-8')); ?></span>
	   <?php } ?>
	</div>
	<?php } ?>
	<div class="widget-inner">
		<?php if(!empty($categories)) { ?>
			<div class="box-content no-space-row">
				<ul class="list-unstyled row">
					<?php foreach ($categories as $category): ?>
					<li class="col-lg-<?php echo $span ?> col-md-<?php echo $span ?> col-sm-4 col-xs-12 column">
						<div class="item-category text-center">
							<div class="image effect-v1">
							<a href="<?php echo $category['href']; ?>">
								<?php if ($category['image'] !== '') { ?>
								<img src="image/<?php echo $category['image']; ?>" alt="" class="img-responsive">
								<?php
								} ?>
							</a>
							</div>						
                            <div class="caption">
								<h4><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></h4>
								<div class="category-items">
									<a class="text-lighten" href="<?php echo $category['href']; ?>"><?php echo $category['items']; ?></a>
								</div>
							</div>                           
						</div>
					</li>
					<?php endforeach ?>
				</ul>
			</div>
		<?php } ?>
	</div>
</div>


