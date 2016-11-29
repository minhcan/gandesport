
<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->

<html dir="<?php echo $direction; ?>" class="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<?php
    require( ThemeControlHelper::getLayoutPath( 'common/parts/head.tpl' ) );
    $language_code = $sconfig->get('config_language');
    $config = $sconfig->get('themecontrol');
    if( isset($_COOKIE[$themeName .'_skin']) && $_COOKIE[$themeName .'_skin'] ){
      $skin = trim($_COOKIE[$themeName .'_skin']);
    }
    $autosearch = $helper->renderModule('pavautosearch');
?>

<body class="<?php echo $class; ?> <?php echo $helper->getPageClass();?> layout-<?php echo $template_layout; ?>">
<div class="row-offcanvas row-offcanvas-left">
<div class="toggle-overlay-container">
    <div class="search-box"> <?php echo $search; ?> </div>
    <div class="dropdown-toggle-button" data-target=".toggle-overlay-container">x </div>
</div>
<!-- header -->
<header class="header header-v3">
    <nav id="topbar" class="topbar">
        <div class="container-fluid">
            <div class="inner">
                <div class="row">
                    <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">                      
                        <!-- logo -->
                        <?php if( $logoType=='logo-theme'){ ?>
                        <div id="logo-theme" class="logo">
                          <a href="<?php echo $home; ?>">
                            <img src="image/catalog/logo_theme<?php if(!empty($skin)) echo "_".$skin; ?>.png" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive"/>
                          </a>
                        </div>
                        <?php } elseif ($logo) { ?>
                        <div id="logo" class="logo">
                          <a href="<?php echo $home; ?>">
                            <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive"/>
                          </a>
                        </div>
                        <?php } ?>    
                        <!--End logo-->  
                    </div> 
                    <!--autosearch-->
                    <div class="col-lg-6 col-md-6 col-sm-12 hidden-xs ">
                        <?php
                            if (count($autosearch) && !empty($autosearch)) {
                            echo $autosearch;
                            } else {
                            echo $search;
                            }
                        ?>
                    </div>
                    <!--The End autosearch-->
                    <div class="quick-settings col-lg-3 col-md-3 col-sm-12 col-xs-12">
                        <div class="quick-setting user popup-links">
                            <div class="btn btn-link dropdown-toggle" data-toggle="dropdown">
                                <span class=""><?php echo $text_account; ?></span><i class="fa-fw fa fa-angle-down"></i>
                            </div>
                            <div class="dropdown-menu">
                              <ul class="links ">
                                <?php if ($logged) { ?>
                                <li><a href="<?php echo $logout; ?>"><i class="fa-fw fa fa-unlock"></i><span><?php echo $text_logout; ?></span></a></li>
                                <?php } else { ?>
                                <li><a href="<?php echo $register; ?>"><i class="fa-fw fa fa-key"></i><span><?php echo $text_register; ?></span></a></li>
                                <li><a href="<?php echo $login; ?>"><i class="fa-fw fa fa-unlock-alt"></i><span><?php echo $text_login; ?></span></a></li>
                                <?php } ?>
                                <li><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>"><i class="fa-fw fa fa-user"></i> <span><?php echo $text_account; ?></span></a></li>
                                <li><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><i class="fa-fw fa fa-heart-o"></i> <span><?php echo $text_wishlist; ?></span></a></li>
                              </ul>
                            </div>
                        </div>  
                        <div class="quick-currency popup-links"><?php echo $currency; ?></div> 
                        <div class="quick-language popup-links"><?php echo $language; ?></div>
                    </div>
                </div>
            </div>
        </div>
    </nav>
    <div class="header-middle">
      <div class="container">
          <div class="inner">
              <div class="row">
                  <div id="menu-header" class="col-lg-9 col-md-9 col-sm-6 col-xs-6">
                  <button data-toggle="offcanvas" class="btn btn-primary canvas-menu hidden-lg hidden-md margin-9" type="button"><span class="fa fa-bars"></span></button>
                    <?php require( ThemeControlHelper::getLayoutPath( 'common/parts/mainmenu.tpl' ) );   ?>
                  </div>  
              </div>
          </div>
      </div>
      <div id="box-right" class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
      <div class="pull-right hidden-sm hidden-xs">
        <?php if( $content=$helper->getLangConfig('widget-phone') ) {?>
            <?php echo $content; ?>
        <?php } ?>  
      </div>
      <div class="pull-right"><?php echo $cart; ?></div>
    </div>  
    </div>
</header>
<!-- /header -->

<!-- sys-notification -->
  <div id="sys-notification">
    <div class="container">
      <div id="notification"></div>
    </div>
  </div>
<!-- /sys-notification -->

  <?php
  /**
  * Showcase modules
  * $ospans allow overrides width of columns base on thiers indexs. format array( column-index=>span number ), example array( 1=> 3 )[value from 1->12]
  */
  //$modules = $helper->getCloneModulesInLayout( $blockid, $layoutID );
  $blockid = 'slideshow';
  $blockcls = "";
  $ospans = array(1=>12);
  require( ThemeControlHelper::getLayoutPath( 'common/block-cols-full.tpl' ) );
  ?>
  <?php
  /**
  * Showcase modules
  * $ospans allow overrides width of columns base on thiers indexs. format array( column-index=>span number ), example array( 1=> 3 )[value from 1->12]
  */
  $blockid = 'showcase';
  $blockcls = 'hidden-xs hidden-sm';
  $ospans = array(1=>12);
  require( ThemeControlHelper::getLayoutPath( 'common/block-cols.tpl' ) );
  ?>
  <?php
  /**
  * promotion modules
  * $ospans allow overrides width of columns base on thiers indexs. format array( column-index=>span number ), example array( 1=> 3 )[value from 1->12]
  */
  $blockid = 'promotion';
  $blockcls = "hidden-xs hidden-sm";
  $ospans = array(1=>12, 2=>12);
  require( ThemeControlHelper::getLayoutPath( 'common/block-cols.tpl' ) );
  ?>

<div class="maincols">


