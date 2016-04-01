class EmotionalController < ApplicationController
	def show
		render 'experiment/emotional_form', layout: 'application'
	end

	def show_instructions
		render 'experiment/emotional_instructions', layout: 'application'
	end

	def index
		@ef = EmotionalForm.first.emotional_question.shuffle
		render json: @ef
	end

	def create_answer
		@user = User.find_by id: session[:user_id]
		@efa = EmotionalFormAnswer.create()
		@user.emotional_form_answer = @efa

		params[:answers].each do |k, hash|
			@ea = @efa.emotional_answer.create()
			@emotional_question = EmotionalQuestion.find_by id: hash[:emotional_question_id]
			@multiple_choice_answer = MultipleChoiceAnswer.find_by id: hash[:multiple_choice_answer_id]
			@ea.emotional_question = @emotional_question
			@ea.multiple_choice_answer = @multiple_choice_answer
		end
		
		render json: {success: true}
	end
end