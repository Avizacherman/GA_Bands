class MakeUniqueBands < ActiveRecord::Migration
  def change
  	change_column :bands, :name, :string, :unique => true
  end
end
