class SocialController < ApplicationController
	def show
		render 'experiment/social_form', layout: 'application'
	end

	def index
		@sf = SocialForm.first.social_form_question
		render json: @sf
	end

	def create_answer
		@user = User.find_by id: session[:user_id]
		@sfa = SocialFormAnswer.create()
		@user.social_form_answer = @sfa

		params[:answers].each do |k, hash|
			@sfqa = @sfa.social_form_question_answer.create(person: hash[:answer])
			id = hash[:social_form_question_id]
			@sfq = SocialFormQuestion.find_by id: id
			@sfqa.person_question = @sfq
		end

		render json: {success: true}
	end
end