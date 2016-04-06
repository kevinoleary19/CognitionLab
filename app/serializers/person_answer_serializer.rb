class PersonAnswerSerializer < ActiveModel::Serializer
	attributes :person
	has_one :person_question
end