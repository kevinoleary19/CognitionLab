class CreatePersonAnswers < ActiveRecord::Migration
  def change
    create_table :person_answers do |t|
      t.string :person
      t.belongs_to :user

      t.timestamps null: false
    end
  end
end
