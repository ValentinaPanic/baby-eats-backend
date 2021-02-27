class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.string :meal_type
      t.integer :day_id

      t.timestamps
    end
  end
end
