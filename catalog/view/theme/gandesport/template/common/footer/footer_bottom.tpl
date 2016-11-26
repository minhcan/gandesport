<div class="copyright">
    <div class="container clearfix">
      <div class="inner">
        <div class="row">
          <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
            <div class="pull-left">
               <?php if( $helper->getConfig('enable_custom_copyright', 0) ) { ?>
                  <?php echo html_entity_decode($helper->getConfig('copyright')); ?>
                <?php } else { ?>
                  <?php echo $powered; ?>.
                <?php } ?>
            </div>
          </div>
          <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
            <div class="pull-right">
              <?php if( $content=$helper->getLangConfig('widget-paypal') ) {?>
                  <?php echo $content; ?>
              <?php } ?>
            </div>
          </div>
        </div>
      </div>
    </div>
</div>