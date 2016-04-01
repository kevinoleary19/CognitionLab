class VideoFormController < ApplicationController
	def show
		render 'experiment/form', layout: 'application'
	end

	def index
		@vf = VideoForm.first.person_question.shuffle
		render json: @vf
	end

	def create_answer
		@user = User.find_by id: session[:user_id]
		@vfa = VideoFormAnswer.create()
		@user.video_form_answer = @vfa

		params[:answers].each do |k, hash|
			@pa = @vfa.person_answer.create(person: hash[:answer])
			id = hash[:person_question_id]
			@pq = PersonQuestion.find_by id: id
			@pa.person_question = @pq
		end

		render json: {success: true}
	end
end