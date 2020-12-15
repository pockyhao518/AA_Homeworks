class CreateSubs < ActiveRecord::Migration[5.2]
  def change
    create_table :subs do |t|
      t.string :title, null:false
      t.string :url
      t.string :content
      t.integer :user_id, null:false

      t.timestamps
    end
  end
end
