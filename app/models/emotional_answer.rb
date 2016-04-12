class EmotionalAnswer < ActiveRecord::Base
	belongs_to :user
	has_and_belongs_to_many :emotional_questions
	has_and_belongs_to_many :multiple_choice_answers
end
