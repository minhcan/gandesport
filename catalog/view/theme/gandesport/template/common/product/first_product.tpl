<?php 
  $load = $this->registry->get("load");
  $language = $load->language("module/themecontrol");
  $text_sale = $language['text_sale'];
  $ourl = $this->registry->get('url'); 
  $objlang = $this->registry->get('language'); 
if(!empty($first_product)) {
?>
<div class="product-block product-v2">
        <div class="image">
           <!-- Sale lable -->
          <?php if( $first_product['special'] ) {   ?>
            <div class="product-label bts"><div class="product-label-special"><?php echo $objlang->get('text_sale'); ?></div></div>
          <?php } ?>
          <!-- / Sale lable -->
          <a class="img" href="<?php echo $first_product['href']; ?>">
              <img src="<?php echo $first_product['thumb']; ?>" alt="<?php echo $first_product['name']; ?>" title="<?php echo $first_product['name']; ?>" class="img-responsive" />
          </a>
          </div>
        <div class="product-meta clearfix">
          <?php if ($first_product['rating']) { ?>
            <div class="rating clearfix">
                <?php for ($is = 1; $is <= 5; $is++) { ?>
                <?php if ($first_product['rating'] < $is) { ?>
                <span class="fa fa-stack"><i class="fa fa-star-o"></i></span>
                <?php } else { ?>
                <span class="fa fa-stack"><i class="fa fa-star"></i>
                </span>
                <?php } ?>
                <?php } ?>
            </div>
            <?php } ?>
            <h6 class="name"><a href="<?php echo $first_product['href']; ?>"><?php echo $first_product['name']; ?></a></h6>
          
            <?php if( isset($first_product['description']) ){ ?>
                <p class="description"><?php echo utf8_substr( strip_tags($first_product['description']),0,200);?>...</p>
            <?php } ?>
            <div class="bottom clearfix">
                <?php if ($first_product['price']) { ?>
                    <div class="price">
                      <?php if (!$first_product['special']) { ?>
                      <span class="price-new"><?php echo $first_product['price']; ?></span>
                      <?php } else { ?>
                      <span class="price-new"><?php echo $first_product['special']; ?></span><span class="price-old"><?php echo $first_product['price']; ?></span>
                      <?php } ?>
                    </div>
                <?php } ?>
            </div>
            <div class="action">
                <button class="wishlist btn-style" type="button" data-placement="top" title="<?php echo $objlang->get("button_wishlist"); ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart-o"></i></button>

                <?php if ( isset($quickview) && $quickview ) { ?>
                  <a class="quickview iframe-link btn-style" data-placement="top" href="<?php echo $ourl->link('themecontrol/product','product_id='.$product['product_id']);?>"  title="<?php echo $objlang->get('quick_view'); ?>" ><i class="zmdi zmdi-eye"></i></a>
                <?php } ?>

                <button class="compare btn-style" type="button" data-placement="top" title="<?php echo $objlang->get("button_compare"); ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-random" aria-hidden="true"></i>
                </button> 

                <?php if( !isset($listingConfig['catalog_mode']) || !$listingConfig['catalog_mode'] ) { ?>
                  <button data-loading-text="Loading..." class="cart btn-style" type="button" title="<?php echo $objlang->get("button_cart"); ?>" onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-shopping-basket"></i>
                  </button>
               <?php } ?>    
            </div>
        </div>

</div>

<?php } ?>


