class AddEmotionalAnswersMultipleChoiceAnswers < ActiveRecord::Migration
  def self.up
    create_table :emotional_answers_multiple_choice_answers, :id => false do |t|
      t.integer :emotional_answer_id
      t.integer :multiple_choice_answer_id
    end
  end

  def self.down
    drop_table :emotional_answers_multiple_choice_answers
  end
end
