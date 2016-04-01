class SocialForm
	constructor: ->
		$('.button').bind
			click: @buttonHandler

		$('.scale-button').bind
			click: @scaleClickHandler

	#------------- ajax requests ------------#

	sendResponse: (response) =>
		$.ajax
			url: '/update'
			type: 'POST',
			data: {social_level: response},
			error: ->
				console.log('Create social_level failed')
			success: ->
				window.location.href = window.location.origin + '/user_info'

	#-----------------------------------------#

	#------------- Event Handlers ------------#
	buttonHandler: (event) =>
		$('.button').addClass('disabled')
		response = $('.chosen').attr('id').split('scale-button')[1];
		@sendResponse(response)

	scaleClickHandler: (event) =>
		$('.button').removeClass('disabled')
		$('.scale-button').removeClass('chosen')
		$(event.target).addClass('chosen')
	

$ ->
	v = new SocialForm
