class FixBands < ActiveRecord::Migration
  def change
  	remove_column	:bands, :venue_id, :integer
  	remove_column	:bands, :event_id, :integer
  end
end
