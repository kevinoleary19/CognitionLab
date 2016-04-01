class VideoFormAnswer < ActiveRecord::Base
	has_many :person_answer
	belongs_to :user
end
