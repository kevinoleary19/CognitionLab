class SocialForm
	constructor: ->
		@answers = []
		@questionCount = 0

		$('.button').bind
			click: @buttonHandler

		$('input[type=radio]').bind
			click: @radioClickHandler

		$('.help-button span').bind
			click: @helpButtonHandler			

	#------------- ajax requests ------------#
	getForm: =>
		$.ajax
      url: '/emotional_form_info',
      type: 'GET',
      error: ->
        console.log('Get form failed')
      success: $.proxy(@handleAjaxResponse)

	handleAjaxResponse: (response) =>
		@questions = response.emotional
		@showQuestion()

	sendResponses: =>
		$.ajax
			url: '/emotional_form_answers'
			type: 'POST',
			data: {answers: @answers},
			error: ->
				console.log('Create answers failed')
			success: ->
				window.location.href = window.location.origin + '/user_info'

	#-----------------------------------------#

	#------------- Event Handlers ------------#
	buttonHandler: (event) =>
		$('.button').addClass('disabled')
		@addAnswer()

	helpButtonHandler: (event) =>
		$('.help-button .modal').toggleClass('hidden')

	radioClickHandler: (event) =>
		$('.button').removeClass('disabled')

	#-----------------------------------------#

	showQuestion: =>
		question = @questions[@questionCount]
		$('.question').text(question.question + '?')

		for answer, i in question.multiple_choice_answer
			id = i + 1
			element = '#label' + id
			$(element).contents().last().remove()
			$(element).append(answer.answer)

	addAnswer: =>
		currentQuestion = @questions[@questionCount]
		currentQuestionId = currentQuestion.id

		chosen_button = $('input[name=emotional-answer]:checked')
		response = chosen_button.attr('id').split('answer')[1]
		response = parseInt(response) - 1
		chosen_button.attr('checked', false)
		
		answerId = currentQuestion.multiple_choice_answer[response].id

		answer = {}
		answer['multiple_choice_answer_id'] = answerId
		answer['emotional_question_id'] = currentQuestionId

		@answers.push(answer)

		if @questionCount == @questions.length - 1
			@sendResponses()
			return
		else
			@questionCount += 1
			@showQuestion()

$ ->
	v = new SocialForm
	v.getForm()
