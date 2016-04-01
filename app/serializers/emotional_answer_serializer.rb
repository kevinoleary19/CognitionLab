class EmotionalAnswerSerializer < ActiveModel::Serializer
	has_one :emotional_question
	has_one :multiple_choice_answer
end