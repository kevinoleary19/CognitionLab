class VideoForm
	constructor: ->
		@answers = []
		@questionCount = 0

		$('.button').bind
			click: @buttonHandler

		$('.two-part-button').bind
			click: @yesNoHandler

		$('img').bind
			click: @personClickHandler

	#------------- ajax requests ------------#
	getForm: =>
		$.ajax
      url: '/video_form_info',
      type: 'GET',
      error: ->
        console.log('Get form failed')
      success: $.proxy(@handleAjaxResponse)

	handleAjaxResponse: (response) =>
		@questions = response.video_form
		@showQuestion()

	sendResponses: =>
		$.ajax
			url: '/video_form_answers'
			type: 'POST',
			data: {answers: @answers},
			error: ->
				console.log('Create answers failed')
			success: ->
				window.location.href = window.location.origin + '/emotional_form_instructions'

	#-----------------------------------------#

	#------------- Event Handlers ------------#
	buttonHandler: (event) =>
		$('.button').addClass('disabled')
		if $('.people-container').hasClass('hidden')
			
			@interpretTwoPartClick()
		else
			@addAnswer(true)

	yesNoHandler: (event) =>
		$('.two-part-button').removeClass('chosen')
		$(event.target).addClass('chosen')
		$('.button').removeClass('disabled')

	personClickHandler: (event) =>
		$('.button').removeClass('disabled')
		$('img').removeClass('img-border')
		$(event.target).addClass('img-border')

	#-----------------------------------------#

	interpretTwoPartClick: =>
		answered_no = $('#no-button').hasClass('chosen')
		$('.two-part-prompt').addClass('hidden')
		if answered_no
			@addAnswer(false)
		else
			$('.people-container').removeClass('hidden')
			$('.button').addClass('disabled')
			$('.question').text('Who?')

	showQuestion: =>
		question = @questions[@questionCount]
		$('.question').text(question.question + '?')
		$('.button').removeClass('hidden')

		if question.is_two_part
			$('.people-container').addClass('hidden')
			$('.two-part-prompt').removeClass('hidden')
		else
			$('.people-container').removeClass('hidden')

	addAnswer: (withPerson) =>
		$('.two-part-button').removeClass('chosen')

		currentQuestionId = @questions[@questionCount].id
		if withPerson
			response = $('.img-border').attr('id').split('person')[1]
			response = parseInt(response) + 1
			$('img').removeClass('img-border')
		else
			response = ''

		answer = {}
		answer['person_question_id'] = currentQuestionId
		answer['answer'] = response

		@answers.push(answer)

		if @questionCount == @questions.length - 1
			debugger;
			@sendResponses()
			return
		else
			@questionCount += 1
			@showQuestion()

$ ->
	v = new VideoForm
	v.getForm()
