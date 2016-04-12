class EmotionalController < ApplicationController
	def show
		render 'experiment/emotional_form', layout: 'application'
	end

	def show_instructions
		render 'experiment/emotional_instructions', layout: 'application'
	end

	def index
		questions = EmotionalQuestion.all.shuffle
		render json: questions
	end

	def create_answer
		@user = User.find_by id: session[:user_id]

		params[:answers].each do |k, hash|
			@ea = @user.emotional_answers.create()
			@emotional_question = EmotionalQuestion.find_by id: hash[:emotional_question_id]
			@multiple_choice_answer = MultipleChoiceAnswer.find_by id: hash[:multiple_choice_answer_id]
			@ea.emotional_questions.push(@emotional_question)
			@ea.multiple_choice_answers.push(@multiple_choice_answer)
		end
		
		render json: {success: true}
	end
end