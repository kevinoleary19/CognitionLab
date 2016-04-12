class AddEmotionalQuestionMultipleChoiceAnswers < ActiveRecord::Migration
  def self.up
    create_table :emotional_questions_multiple_choice_answers, :id => false do |t|
      t.integer :emotional_question_id
      t.integer :multiple_choice_answer_id
    end
  end

  def self.down
    drop_table :emotional_questions_multiple_choice_answers
  end
end
