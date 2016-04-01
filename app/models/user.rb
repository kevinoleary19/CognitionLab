class User < ActiveRecord::Base
	has_one :video_form_answer
	has_one :emotional_form_answer
end
