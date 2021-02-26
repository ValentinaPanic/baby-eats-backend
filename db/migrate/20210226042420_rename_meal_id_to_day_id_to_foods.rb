class RenameMealIdToDayIdToFoods < ActiveRecord::Migration[6.0]
  def change
    rename_column :foods, :meal_id, :day_id
  end
end
