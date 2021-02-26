class AddMealTypeToDay < ActiveRecord::Migration[6.0]
  def change
    add_column :days, :meal_type, :string

  end
end
