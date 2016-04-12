class CreateMultipleChoiceAnswers < ActiveRecord::Migration
  def change
    create_table :multiple_choice_answers do |t|
    	t.string :answer

      t.timestamps null: false
    end
  end
end
