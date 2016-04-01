class PersonAnswer < ActiveRecord::Base
	has_one :person_question
end
