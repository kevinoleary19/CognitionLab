class CreateSocialForms < ActiveRecord::Migration
  def change
    create_table :social_forms do |t|

      t.timestamps null: false
    end
  end
end
