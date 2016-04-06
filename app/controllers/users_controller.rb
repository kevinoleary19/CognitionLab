class UsersController < ApplicationController
	def create
		@current_user = User.create()
		@current_user.save!

		session[:user_id] = @current_user[:id]
		render json: {success: true}
	end

	def index
		@user = User.last

		render json: @user
	end

	def update
		user = User.find_by id: session[:user_id]
		user_attributes = params.permit(:name, :age, :gender, :video_question_1, :video_question_2,
																	  :video_question_3, :video_question_4, :social_level, :email,
																	  :major)

		user.attributes = user_attributes
		user.save!

		render json: {success: true}
	end

	def show
		render 'experiment/user_info', layout: 'application'
	end
end