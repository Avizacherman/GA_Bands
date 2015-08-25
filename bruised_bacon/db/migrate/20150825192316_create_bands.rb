class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :name
      t.integer :venue_id
      t.integer :event_id
      t.string :genre
      t.boolean :explicit_lyrics

      t.timestamps null: false
    end
  end
end
