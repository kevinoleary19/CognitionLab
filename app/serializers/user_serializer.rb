class UserSerializer < ActiveModel::Serializer
  attributes :name, :age, :gender, :video_question_1, :video_question_2, :video_question_3,
  					 :video_question_4, :social_level, :email, :major
  has_many :person_answers
	has_many :emotional_answers
end
