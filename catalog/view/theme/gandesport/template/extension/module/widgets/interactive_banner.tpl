<div class="interactive-banner <?php echo $addition_cls; ?> hidden-xs">
    <div class="image">
        <?php if($thumbnailurl){?><img alt="" src="<?php echo $thumbnailurl;?>" class="img-responsive"><?php }?>
        <div class="content">
            <div class="content-inner">
                <div class="interactive-profile">
                    <?php if( $show_title ) { ?>
                    <a href="<?php echo $mask_link;?>" class="widget-heading"><?php echo $heading_title?></a>
                    <?php } ?>
                    <div class="htmlcontent">
                        <?php if($htmlcontent){echo $htmlcontent; }?>
                    </div>
                    <?php if($text_link){?>
                    <div class="action-button">
                        <?php if($text_link){?>
                            <a href="<?php echo $mask_link;?>"><span><?php echo $text_link;?></span></a>
                        <?php }?>
                    </div>
                    <?php }?>
                </div>
            </div>
        </div>
    </div>

</div>

