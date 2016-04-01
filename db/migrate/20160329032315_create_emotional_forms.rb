class CreateEmotionalForms < ActiveRecord::Migration
  def change
    create_table :emotional_forms do |t|

      t.timestamps null: false
    end
  end
end
