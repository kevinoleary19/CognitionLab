class PersonAnswerSerializer < ActiveModel::Serializer
	attributes :person
	has_many :person_questions
end