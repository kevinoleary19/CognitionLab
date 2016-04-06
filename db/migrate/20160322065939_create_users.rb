class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.string :email
      t.string :video_question_1
      t.string :video_question_2
      t.string :video_question_3
      t.string :video_question_4
      t.string :social_level
      t.string :major

      t.timestamps null: false
    end
  end
end
