class MultipleChoiceAnswer < ActiveRecord::Base
	belongs_to :emotional_question
	belongs_to :emotional_answer
end
