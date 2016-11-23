<div class="<?php echo str_replace('_','-',$blockid); ?> <?php echo $blockcls;?>" id="pavo-<?php echo str_replace('_','-',$blockid); ?>">
    <div class="container">
        <div class="container-footer">
            <div class="inner">
                <div class="row">
                    <div class="col-left col-lg-9 col-md-9 col-sm-8 col-xs-12  container-footer-top">
                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 column">
                                <?php if ($informations) { ?>
                                <div class="panel">
                                    <div class="panel-heading">
                                        <h5 class="panel-title"><?php echo $text_information; ?></h5>
                                    </div>
                                    <ul class="list-unstyled">
                                      <?php foreach ($informations as $information) { ?>
                                      <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
                                      <?php } ?>
                                    </ul>
                                </div>
                                <?php } ?>
                            </div> 
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 column">
                                <div class="panel-heading">
                                    <h5 class="panel-title"><?php echo $text_extra; ?></h5>
                                </div>
                                <ul class="list-unstyled">
                                  <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
                                  <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
                                  <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
                                  <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
                                </ul>
                            </div>                                                 
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 column">
                                <div class="panel">
                                    <div class="panel-heading">
                                        <h5 class="panel-title"><?php echo $text_account; ?></h5>
                                    </div>
                                    <ul class="list-unstyled">
                                        <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                                        <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
                                        <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
                                        <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
                                    </ul>
                                </div>
                            </div>  
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 column">
                                <div class="panel-heading">
                                    <h5 class="panel-title"><?php echo $text_service; ?></h5>
                                </div>
                                <ul class="list-unstyled">
                                  <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
                                  <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
                                  <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-right col-lg-3 col-md-3 col-sm-4 col-xs-12 column">      
                        <div class="contact-details">                       
                        <?php if( $content=$helper->getLangConfig('widget-contact') ) {?>
                            <?php echo $content; ?>
                        <?php } ?>
                        <?php if( $content=$helper->getLangConfig('widget-social') ) {?>
                            <div class="content_element_footer">
                                <?php echo $content; ?>
                            </div>
                        <?php } ?>    
                        </div>           
                    </div>
                </div> <!-- end row -->        
            </div>    
        </div>
    </div>
</div>