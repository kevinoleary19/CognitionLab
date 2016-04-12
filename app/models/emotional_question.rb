class EmotionalQuestion < ActiveRecord::Base
	has_and_belongs_to_many :emotional_answers
	has_and_belongs_to_many :multiple_choice_answers
end
