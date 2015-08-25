class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.date :date
      t.boolean :alcohol_served
      t.integer :venue_id

      t.timestamps null: false
    end
  end
end
