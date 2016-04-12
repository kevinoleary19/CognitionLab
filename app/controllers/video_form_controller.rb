class VideoFormController < ApplicationController
	def show
		render 'experiment/form', layout: 'application'
	end

	def index
		@questions = PersonQuestion.all.shuffle
		render json: @questions
	end

	def create_answer
		@user = User.find_by id: session[:user_id]

		params[:answers].each do |k, hash|
			@pa = @user.person_answers.create(person: hash[:answer])
			id = hash[:person_question_id]
			@pq = PersonQuestion.find_by id: id
			@pa.person_questions.push(@pq)
		end

		render json: {success: true}
	end
end