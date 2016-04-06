# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
person_questions = [
	["Who smiled the most", false],
	# ["Who’s body seemed the most tense", false],
	["Who maintained the most eye contact", false],
	["Who made the least eye contact", false],
	["Who used a lot of hand gestures", false],
	["Who was the most easily excitable", false],
	["Who seemed the most hopeless", false],
	["Who seemed even-tempered", false],
	["Who was hard to read", false],
	["Who would you go to for advice", false],
	["Who’s most likely to go to a climate change rally", false],
	# ["Who would probably text you about an upcoming date", false],
	["Who would you buy chunky monkey ice cream for", false],
	["Would you take anyone to a Beyonce concert", true],
	# ["Does anyone want to go on a dialogue", true],
	["Does anyone have a cat", true],
	["Did anyone seem extremely happy", true],
	["Was there anyone who's legs were shaking", true],
	["Is there anyone who has an interview coming up", true],
	["Was there anyone who was constantly stretching", true]
]

social_questions = [
	"How often do you go out",
	"How many times per week do you see your friends",
	"How often do you meet someone new",
	"Of the new people you meet, how likely are you to stay in touch with them",
	"How likely are you to respond to a text right away when you see it",
	"How often do you attend weekly club meetings",
	"How often do you invite people over",
	"How often do you get invited to social events",
	"How often do you take a chance in meeting new people",
	"How likely are you to start a conversation with a stranger",
	"How likely are you wave at someone you know passing by if you see them",
	"How many close friends do you have",
	"How many people do you stay in contact with",
	"How many conversations (emails/texts count) do you initiate with others daily",
	"How many conversations do you have with others daily",
	"How many social events do you attend on a weekly basis",
	"How many people know you well",
	"Of the people you know, how many do you interact with on an average day"
]

emotional_questions = [
	["I believe that people seldom tell you the whole truth", 
		[
			"I prefer variety to routine",
 		 	"I suspect hidden motives in others",
 		 	"I am not bothered by messy people",
 		 	"I say what I think"
 		]
	],
	["I enjoy wild flights of fantasy",
	 	[
	 		"I try to forgive and forget",
			"I like to get lost in thought",
			"I am the last to laugh at a joke",
			"I am relaxed most of the time"
	 	]
	],
	["I cheer people up",
		[
			"I reflect on things before acting",
			"I know the answers to many questions",
			"I dislike works of fiction",
			"I enjoy being part of a group"
		]
	],
	["I am easily hurt",
		[
			"I find it difficult to approach others",
		  "I am open about myself to others",
		  "I respect authority",
		  "I trust what people say"
		]
	],
	["I oppose authority",
		[
			"I wait for others to lead the way",
		  "I swim against the current",
		  "I love large parties",
		  "I enjoy being part of a loud crowd"
		]
	],
	["I get chores done right away",
		[
			"I prefer to do things by myself",
		  "I like to stand during the national anthem",
		  "I have little to say",
		  "I make insightful remarks"
		]
	],
	["I spend time thinking about past mistakes",
		[
			"I love flowers",
 			"I get angry easily",
 			"I amuse my friends",
 			"I weigh the pros against the cons"
		]
	],
	["I can take strong measures",
		[
			"I find it hard to forgive others",
 			"I judge people by their appearance",
 			"I am hard to get to know",
 			"I readily overcome setbacks"
		]
	],
	["I resist authority",
		[
			"I use my brain",
			"I believe that people are essentially evil",
		  "I worry about things",
			"I am afraid that I will do the wrong thing"
		]
	],
	["I leave a mess in my room",
		[
			"I love to daydream",
 			"I feel others' emotions",
 			"I love to think up new ways of doing things",
 			"I enjoy silence"
		]
	],
	["I seldom feel blue",
		[
			"I am not easily annoyed",
 			"I don't like to get involved in other people's problems",
 			"I act wild and crazy",
 			"I consider myself an average person"
		]
	],
	["I take charge",
		[
			"I am not interested in abstract ideas",
 			"I use swear words",
 			"I cry during movies",
 			"I am not afraid of providing criticism"
		]
	],
	["I am quick to judge others",
		[
			"I have frequent mood swings",
 			"I let others make the decisions",
 			"I seldom daydream",
 			"I carry the conversation to a higher level"
		]
	],
	["I don't mind being the center of attention",
		[
			"I joke around a lot",
 			"I am annoyed by others' mistakes",
 			"I do things that others find strange",
 			"I can't stand being contradicted"
		]
	],
	["I counter others' arguments",
		[
			"I feel threatened easily",
 			"I am open about my feelings",
 			"I take deviant positions",
 			"I make friends easily"
		]
	]
]

@vf = VideoForm.create()
person_questions.each do |question, is_two_part|
	@vf.person_question.create(question: question, is_two_part: is_two_part)
end

@sf = SocialForm.create()
social_questions.each do |question|
	@sf.social_form_question.create(question: question)
end

@ef = EmotionalForm.create()
emotional_questions.each do |question, answers|
	@emotional_question = @ef.emotional_question.create(question: question)
	answers.each do |answer|
		@emotional_question.multiple_choice_answer.create(answer: answer)
	end
end
