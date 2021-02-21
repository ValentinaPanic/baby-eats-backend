class CreateMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t|
      t.string :meal_type
      t.integer :day_id

      t.timestamps
    end
  end
end
