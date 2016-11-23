<?php $template_layout = $helper->getConfig('layout'); ?>
<div class="footer-v2">
    <div class="inner">
        <div class="wapper">
            <?php echo $helper->renderModule('pavnewsletter'); ?>           
            <div class="footer-top">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4 col-sm-4 block">
                            <?php if( $content=$helper->getLangConfig('widget-logo2') ) {?>
                                <?php echo $content; ?>
                            <?php } ?>
                            <?php if( $content=$helper->getLangConfig('content_footer2') ) {?>
                                <div class="content_element_footer">
                                    <?php echo $content; ?>
                                </div>
                            <?php } ?>
                        </div>

                        <?php if ($informations) { ?>
                        <div class="col-md-2 col-sm-2 block">
                            <h5><?php echo $text_information; ?></h5>
                            <ul class="list-unstyled">
                                <?php foreach ($informations as $information) { ?>
                                <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
                                <?php } ?>
                            </ul>
                        </div>
                        <?php } ?>
                        
                        <div class="col-md-3 col-sm-3 block">
                            <h5><?php echo $text_account; ?></h5>
                            <ul class="list-unstyled">
                                <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                                <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
                                <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
                                <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
                                <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
                                <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
                            </ul>
                        </div>
                       
                        <div class="col-md-3 col-sm-3 block">
                            <div class="content_element_openingtime">
                                <h5><?php echo $text_opening_time; ?></h5>
                                <div class="panel-body">
                                    <?php echo $helper->getLangConfig('openingtime'); ?>
                                </div>
                            </div>                        
                            <div class="content_element_paypal">
                                    <h5><?php echo $text_payment; ?></h5>
                                <div class="paypal">
                                    <?php echo $helper->getLangConfig('widget_paypal'); ?>
                                </div>
                            </div>                      
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="copyright">
        <div class="container clearfix">
        <div class="row">
            <div class="inner-v2">
               <?php if( $helper->getConfig('enable_custom_copyright', 0) ) { ?>
                  <?php echo html_entity_decode($helper->getConfig('copyright')); ?>
                <?php } else { ?>
                  <?php echo $powered; ?>.
                <?php } ?>
            </div>
            <div id="top-scroll" class="bo-social-icons">
                <a href="#" class="bo-social-gray radius-x scrollup1"><i class="fa fa-angle-up"></i></a>
            </div>
        </div>
        </div>   
    </div>
</div>
     
    