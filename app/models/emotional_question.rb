class EmotionalQuestion < ActiveRecord::Base
	belongs_to :emotional_form
	belongs_to :emotional_answer
	has_many :multiple_choice_answer
end
