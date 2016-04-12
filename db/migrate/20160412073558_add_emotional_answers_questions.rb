class AddEmotionalAnswersQuestions < ActiveRecord::Migration
  def self.up
    create_table :emotional_answers_questions, :id => false do |t|
      t.integer :emotional_answer_id
      t.integer :emotional_question_id
    end
  end

  def self.down
    drop_table :emotional_answers_questions
  end
end