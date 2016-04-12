class CreatePersonQuestions < ActiveRecord::Migration
  def change
    create_table :person_questions do |t|
      t.string :question
      t.boolean :is_two_part

      t.timestamps null: false
    end
  end
end
