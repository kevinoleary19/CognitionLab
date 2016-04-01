class CreateSocialFormQuestionAnswers < ActiveRecord::Migration
  def change
    create_table :social_form_question_answers do |t|
    	t.belongs_to :social_form_answer

      t.timestamps null: false
    end
  end
end
