class EmotionalAnswerSerializer < ActiveModel::Serializer
	has_many :emotional_questions
	has_many :multiple_choice_answers
end