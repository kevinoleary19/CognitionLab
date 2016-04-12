class MultipleChoiceAnswer < ActiveRecord::Base
	has_and_belongs_to_many :emotional_questions
	has_and_belongs_to_many :emotional_answers
end
