class CreateEmotionalQuestions < ActiveRecord::Migration
  def change
    create_table :emotional_questions do |t|
    	t.belongs_to :emotional_form
    	t.belongs_to :emotional_answer

    	t.string :question

      t.timestamps null: false
    end
  end
end
