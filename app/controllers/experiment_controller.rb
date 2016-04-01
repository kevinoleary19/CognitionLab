class ExperimentController < ApplicationController

	def show_homepage
		render 'experiment/instructions', layout: 'application'
	end

	def show_video
		render 'experiment/video', layout: 'application', locals: {id: params[:id]}
	end

	def show_finished
		render 'experiment/finished', layout: 'application'
	end
end