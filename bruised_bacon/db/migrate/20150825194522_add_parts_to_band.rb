class AddPartsToBand < ActiveRecord::Migration
  def change
  	add_column :events, :band_id, :integer
  	add_index :bands, :name, :unique => true
  	change_column :events, :alcohol_served, :boolean, :default => true
  	change_column :bands, :explicit_lyrics, :boolean, :default => false
  	change_column :venues, :family_friendly, :boolean, :default => false
  end
end
