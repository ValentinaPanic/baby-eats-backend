class CreateWeeks < ActiveRecord::Migration[6.0]
  def change
    create_table :weeks do |t|
      t.text :notes
      t.integer :user_id

      t.timestamps
    end
  end
end
