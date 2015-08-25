class DropExtraIndex < ActiveRecord::Migration
  def change
  	execute "DROP INDEX index_bands_on_name"
  end
end
