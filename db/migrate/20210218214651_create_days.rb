class CreateDays < ActiveRecord::Migration[6.0]
  def change
    create_table :days do |t|
      t.date :date
      t.integer :week_id

      t.timestamps
    end
  end
end
