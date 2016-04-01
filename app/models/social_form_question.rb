class SocialFormQuestion < ActiveRecord::Base
	belongs_to :social_form
	belongs_to :social_form_question_answer
end
