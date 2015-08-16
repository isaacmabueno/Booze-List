class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :brand
      t.string :cost
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
