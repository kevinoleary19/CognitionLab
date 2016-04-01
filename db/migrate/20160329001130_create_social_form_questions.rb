class CreateSocialFormQuestions < ActiveRecord::Migration
  def change
    create_table :social_form_questions do |t|
    	t.string :question
    	t.belongs_to :social_form

      t.timestamps null: false
    end
  end
end
