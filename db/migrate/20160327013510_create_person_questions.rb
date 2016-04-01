class CreatePersonQuestions < ActiveRecord::Migration
  def change
    create_table :person_questions do |t|
      t.string :question
      t.boolean :is_two_part
      t.belongs_to :video_form
      t.belongs_to :person_answer

      t.timestamps null: false
    end
  end
end
