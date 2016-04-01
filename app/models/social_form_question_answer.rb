class SocialFormQuestionAnswer < ActiveRecord::Base
	has_many :social_form_question
	belongs_to :social_form_answer
end
