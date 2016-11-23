<?php echo $header; ?>
<div class="breadcrumb">
  <div class="container">
    <div class="bg-breadcrumb">
      <h2 class="panel-title"><?php echo $heading_title; ?></h2>
      <ul>
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
</div>
<div class="container">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?> content-not-found">
    <?php echo $content_top; ?>
      <div class="title"><h1><?php echo $heading_title; ?></h1></div>
      <div class="sub"><p><?php echo $text_error; ?></p></div>
      <div class="buttons clearfix">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
    <?php echo $content_bottom; ?>
    </div>
  </div>
</div>
<?php echo $footer; ?>
