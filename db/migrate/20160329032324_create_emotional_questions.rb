class CreateEmotionalQuestions < ActiveRecord::Migration
  def change
    create_table :emotional_questions do |t|
    	t.string :question

      t.timestamps null: false
    end
  end
end
