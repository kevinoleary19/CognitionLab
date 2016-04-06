class UserSerializer < ActiveModel::Serializer
  attributes :name, :age, :gender, :video_question_1, :video_question_2, :video_question_3,
  					 :video_question_4, :social_level, :email, :major
  has_one :video_form_answer
	has_one :emotional_form_answer
end
