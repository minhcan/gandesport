<?php
	$_['entry_sign_up_for_newsletter'] = "Newsletter";
?>
<div class="pav-newsletter text-center<?php echo $prefix; ?>" id="newsletter_<?php echo $position.$module;?>">
	<form id="formNewLestter" method="post" action="<?php echo $action; ?>" class="formNewLestter clearfix">
		<div class="panel-heading text-center">
			<h4 class="panel-title panel-v1"><?php echo "Newsletter";?></h4>
		</div>
		<div class="description text-center space-30 space-top-15"><?php echo html_entity_decode( $description );?></div>
		<div class="form-email clearfix">
			<div class="email-subscribe pull-left">
				<input type="text" class="form-control email" <?php if(!isset($customer_email)): ?> <?php endif; ?> placeholder="<?php echo $objlang->get("default_input_text");?>" name="email">
			</div>
			<div class="submit-subscribe pull-right">
				<button type="submit" name="submitNewsletter" class="btn btn-v2" value="<?php echo $objlang->get("button_subscribe");?>">
					<?php echo $objlang->get("button_subscribe");?>
				</button>
			</div>
			<div class="valid"></div>
		</div>
		<input type="hidden" value="1" name="action">
		<?php if (!empty($social)): ?>
		<?php  echo html_entity_decode( $social );?>
		<?php endif ?>
	</form>
</div>
<script type="text/javascript">
	<!--
		$( document ).ready(function() {
			$('#formNewLestter').on('submit', function() {
				var email = $('.email').val();
				$(".success_inline, .warning_inline, .error").remove();
				if(!isValidEmailAddress(email)) {
					$('.valid').html("<div class=\"error alert alert-danger\"><?php echo $objlang->get('valid_email'); ?><button type=\"button\" class=\"close\" data-dismiss=\"alert\">×</button></div></div>");
					$('.email').focus();
					return false;
				}
				var url = "<?php echo $action; ?>";
				$.ajax({
					type: "post",
					url: url,
					data: $("#formNewLestter").serialize(),
					dataType: 'json',
					success: function(json) {
						$(".success_inline, .warning_inline, .error").remove();
						if (json['error']) {
							$('.valid').html("<div class=\"warning_inline alert alert-danger\">"+json['error']+"<button type=\"button\" class=\"close\" data-dismiss=\"alert\">×</button></div>");
						}
						if (json['success']) {
							$('.valid').html("<div class=\"success_inline alert alert-success\">"+json['success']+"<button type=\"button\" class=\"close\" data-dismiss=\"alert\">×</button></div>");
						}
					}
				}); return false;
			});
		});
		function isValidEmailAddress(emailAddress) {
			var pattern = new RegExp(/^(("[\w-\s]+")|([\w-]+(?:\.[\w-]+)*)|("[\w-\s]+")([\w-]+(?:\.[\w-]+)*))(@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$)|(@\[?((25[0-5]\.|2[0-4][0-9]\.|1[0-9]{2}\.|[0-9]{1,2}\.))((25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\.){2}(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\]?$)/i);
			return pattern.test(emailAddress);
		}
	-->
</script>