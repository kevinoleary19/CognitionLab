class CreateVideoForms < ActiveRecord::Migration
  def change
    create_table :video_forms do |t|

      t.timestamps null: false
    end
  end
end
