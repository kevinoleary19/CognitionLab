class PersonQuestionSerializer < ActiveModel::Serializer
  attributes :id, :question, :is_two_part
end
