class ResultsController < ApplicationController
	
	def index
		users = User.all
		r = Results.new
		results = r.results_by_person

		render json: results
	end
end
