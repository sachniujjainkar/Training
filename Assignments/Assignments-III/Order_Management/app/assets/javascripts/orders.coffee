# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
	addresses = $('#order_address_id').html()
	$('#order_user_id').change ->
		user = $('#order_user_id :selected').val()
		options = $(addresses).filter("optgroup[label='#{user}']").html()
		if options
			$('#order_address_id').html(options)
		else
			$('#order_address_id').empty()	