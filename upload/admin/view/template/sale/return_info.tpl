<?php echo $header; ?>
<div id="content">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="box">
    <div class="box-heading">
      <h1><i class="icon-info-sign"></i> <?php echo $heading_title; ?></h1>
      <div class="buttons"><a href="<?php echo $cancel; ?>" class="btn"><i class="icon-remove"></i> <?php echo $button_cancel; ?></a></div>
    </div>
    <div class="box-content">
      <ul class="nav nav-tabs">
        <li class="active"><a href="#tab-return" data-toggle="tab"><?php echo $tab_return; ?></a></li>
        <li><a href="#tab-product" data-toggle="tab"><?php echo $tab_product; ?></a></li>
        <li><a href="#tab-history" data-toggle="tab"><?php echo $tab_history; ?></a></li>
      </ul>
      <div class="tab-content">
        <div class="tab-content">
          <div class="tab-pane active" id="tab-return">
            <table class="table table-striped table-bordered">
              <tr>
                <td><?php echo $text_return_id; ?></td>
                <td><?php echo $return_id; ?></td>
              </tr>
              <?php if ($order) { ?>
              <tr>
                <td><?php echo $text_order_id; ?></td>
                <td><a href="<?php echo $order; ?>"><?php echo $order_id; ?></a></td>
              </tr>
              <?php } else { ?>
              <tr>
                <td><?php echo $text_order_id; ?></td>
                <td><?php echo $order_id; ?></td>
              </tr>
              <?php } ?>
              <tr>
                <td><?php echo $text_date_ordered; ?></td>
                <td><?php echo $date_ordered; ?></td>
              </tr>
              <?php if ($customer) { ?>
              <tr>
                <td><?php echo $text_customer; ?></td>
                <td><a href="<?php echo $customer; ?>"><?php echo $firstname; ?> <?php echo $lastname; ?></a></td>
              </tr>
              <?php } else { ?>
              <tr>
                <td><?php echo $text_customer; ?></td>
                <td><?php echo $firstname; ?> <?php echo $lastname; ?></td>
              </tr>
              <?php } ?>
              <tr>
                <td><?php echo $text_email; ?></td>
                <td><?php echo $email; ?></td>
              </tr>
              <tr>
                <td><?php echo $text_telephone; ?></td>
                <td><?php echo $telephone; ?></td>
              </tr>
              <?php if ($return_status) { ?>
              <tr>
                <td><?php echo $text_return_status; ?></td>
                <td id="return-status"><?php echo $return_status; ?></td>
              </tr>
              <?php } ?>
              <tr>
                <td><?php echo $text_date_added; ?></td>
                <td><?php echo $date_added; ?></td>
              </tr>
              <tr>
                <td><?php echo $text_date_modified; ?></td>
                <td><?php echo $date_modified; ?></td>
              </tr>
            </table>
          </div>
          <div class="tab-pane" id="tab-product">
            <table class="table table-striped table-bordered">
              <tr>
                <td><?php echo $text_product; ?></td>
                <td><?php echo $product; ?></td>
              </tr>
              <tr>
                <td><?php echo $text_model; ?></td>
                <td><?php echo $model; ?></td>
              </tr>
              <tr>
                <td><?php echo $text_quantity; ?></td>
                <td><?php echo $quantity; ?></td>
              </tr>
              <tr>
                <td><?php echo $text_return_reason; ?></td>
                <td><?php echo $return_reason; ?></td>
              </tr>
              <tr>
                <td><?php echo $text_opened; ?></td>
                <td><?php echo $opened; ?></td>
              </tr>
              <tr>
                <td><?php echo $text_return_action; ?></td>
                <td id="return-action"><?php echo $return_action; ?></td>
              </tr>
              <?php if ($comment) { ?>
              <tr>
                <td><?php echo $text_comment; ?></td>
                <td><?php echo $comment; ?></td>
              </tr>
              <?php } ?>
            </table>
          </div>
          <div class="tab-pane form-horizontal" id="tab-history">
            <div id="history"></div>
            <div class="control-group">
              <label class="control-label" for="input-return-action"><?php echo $entry_return_action; ?></label>
              <div class="controls">
                <select name="return_action_id" id="input-return-action">
                  <option value="0"></option>
                  <?php foreach ($return_actions as $return_action) { ?>
                  <?php if ($return_action['return_action_id'] == $return_action_id) { ?>
                  <option value="<?php echo $return_action['return_action_id']; ?>" selected="selected"><?php echo $return_action['name']; ?></option>
                  <?php } else { ?>
                  <option value="<?php echo $return_action['return_action_id']; ?>"><?php echo $return_action['name']; ?></option>
                  <?php } ?>
                  <?php } ?>
                </select>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label" for="input-return-status"><?php echo $entry_return_status; ?></label>
              <div class="controls">
                <select name="return_status_id" id="input-return-status">
                  <?php foreach ($return_statuses as $return_status) { ?>
                  <?php if ($return_status['return_status_id'] == $return_status_id) { ?>
                  <option value="<?php echo $return_status['return_status_id']; ?>" selected="selected"><?php echo $return_status['name']; ?></option>
                  <?php } else { ?>
                  <option value="<?php echo $return_status['return_status_id']; ?>"><?php echo $return_status['name']; ?></option>
                  <?php } ?>
                  <?php } ?>
                </select>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label" for="input-notify"><?php echo $entry_notify; ?></label>
              <div class="controls">
                <input type="checkbox" name="notify" value="1" id="input-notify" />
              </div>
            </div>
            <div class="control-group">
              <label class="control-label" for="input-comment"><?php echo $entry_comment; ?></label>
              <div class="controls">
                <textarea name="comment" rows="8" class="input-xxlarge"></textarea>
              </div>
            </div>
            <button id="button-history" class="btn"><i class="icon-plus-sign"></i> <?php echo $button_add_history; ?></button>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript"><!--
$('select[name=\'return_action_id\']').on('change', function() {
	$.ajax({
		url: 'index.php?route=sale/return/action&token=<?php echo $token; ?>&return_id=<?php echo $return_id; ?>',
		type: 'post',
		dataType: 'json',
		data: 'return_action_id=' + this.value,
		beforeSend: function() {
			$('select[name=\'return_action_id\']').after(' <i class="icon-spinner icon-spin"></i>');
		},
		complete: function() {
			$('.icon-spinner').remove();
		},				
		success: function(json) {
			$('.alert').remove();
			
			if (json['error']) {
				$('.box').before('<div class="alert alert-error"><i class="icon-exclamation-sign"></i> ' + json['error'] + '</div>');
			}
			
			if (json['success']) {
				$('.box').before('<div class="alert alert-success"><i class="icon-ok-sign"></i> ' + json['success'] + '</div>');
				
				$('#return-action').html($('select[name=\'return_action_id\'] option:selected').text());
			}
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});	
});

$('#history .pagination a').on('click', function() {
	$('#history').load(this.href);
	
	return false;
});			

$('#history').load('index.php?route=sale/return/history&token=<?php echo $token; ?>&return_id=<?php echo $return_id; ?>');

$('#button-history').on('click', function() {
	$.ajax({
		url: 'index.php?route=sale/return/history&token=<?php echo $token; ?>&return_id=<?php echo $return_id; ?>',
		type: 'post',
		dataType: 'html',
		data: 'return_status_id=' + encodeURIComponent($('select[name=\'return_status_id\']').val()) + '&notify=' + ($('input[name=\'notify\']').prop('checked') ? 1 : 0) + '&comment=' + encodeURIComponent($('textarea[name=\'comment\']').val()),
		beforeSend: function() {
			$('#button-history i').replaceWith('<i class="icon-spinner icon-spin"></i>');
			$('#button-history').prop('disabled', true);
		},
		complete: function() {
			$('#button-history i').replaceWith('<i class="icon-plus-sign"></i>');
			$('#button-history').prop('disabled', false);
		},
		success: function(html) {
			$('.alert').remove();
			
			$('#history').html(html);
			
			$('textarea[name=\'comment\']').val(''); 
			
			$('#return-status').html($('select[name=\'return_status_id\'] option:selected').text());
		}
	});
});
//--></script> 
<?php echo $footer; ?>