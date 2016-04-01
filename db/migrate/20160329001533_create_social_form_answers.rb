class CreateSocialFormAnswers < ActiveRecord::Migration
  def change
    create_table :social_form_answers do |t|

      t.timestamps null: false
    end
  end
end
