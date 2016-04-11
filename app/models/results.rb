class Results

	def results_by_person
		results = []
		users = User.all

		users.each do |user|

			if !user.name
				next
			end

			name = user.name
			age = user.age
			gender = user.gender
			email = user.email
			social_level = user.social_level.to_i
			major = user.major

			emotional_results = find_emotional_results(user)
			video_results = find_video_results(user)

			result = {
				name: name,
				age: age,
				gender: gender,
				email: email,
				social_level: social_level,
				major: major,
				emotional_results: emotional_results,
				video_results: video_results
			}

			results.push(result)
		end

		results
	end

	private
	def find_video_results(user)
		answer_key = {
			1 => "3",
			2 => "4",
			3 => "2",
			4 => "3",
			5 => "3",
			6 => "2",
			7 => "4",
			8 => "1",
			9 => "4",
			10 => "3",
			11 => "2",
			12 => "3",
			13 => "",
			14 => "",
			15 => "",
			16 => "",
			17 => "",
		}
		num_correct = 0

		if !user.video_form_answer
			return nil
		end

		answers = user.video_form_answer.person_answer

		answers.each do |a|
			question_id = a.person_question.id
			answer_id = a.person

			if answer_key[question_id] == answer_id
				num_correct += 1
			end
		end

		num_correct
	end

	def find_emotional_results(user)
		answer_key = {
			1 => 2,
			2 => 6,
			3 => 12,
			4 => 13,
			5 => 18,
			6 => 22,
			7 => 26,
			8 => 32,
			9 => 34,
			10 => 37,
			11 => 41,
			12 => 48,
			13 => 49,
			14 => 53,
			15 => 59
		}
		num_correct = 0

		if !user.emotional_form_answer
			return nil
		end

		answers = user.emotional_form_answer.emotional_answer

		answers.each do |a|
			question_id = a.emotional_question.id
			answer_id = a.multiple_choice_answer.id

			if answer_key[question_id] == answer_id
				num_correct += 1
			end
		end

		num_correct
	end
end