class User < ActiveRecord::Base
	has_many :person_answers
	has_many :emotional_answers
end
