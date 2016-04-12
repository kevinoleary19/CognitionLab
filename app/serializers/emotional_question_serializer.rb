class EmotionalQuestionSerializer < ActiveModel::Serializer
  attributes :id, :question
  has_many :multiple_choice_answers
end
