class CreateMultipleChoiceAnswers < ActiveRecord::Migration
  def change
    create_table :multiple_choice_answers do |t|
    	t.belongs_to :emotional_question
    	t.belongs_to :emotional_answer

    	t.string :answer

      t.timestamps null: false
    end
  end
end
