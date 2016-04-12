class AddPersonAnswersQuestions < ActiveRecord::Migration
  def self.up
    create_table :person_answers_questions, :id => false do |t|
      t.integer :person_answer_id
      t.integer :person_question_id
    end
  end

  def self.down
    drop_table :person_answers_questions
  end
end