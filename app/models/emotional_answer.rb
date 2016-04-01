class EmotionalAnswer < ActiveRecord::Base
	belongs_to :emotional_form_answer
	has_one :emotional_question
	has_one :multiple_choice_answer
end
