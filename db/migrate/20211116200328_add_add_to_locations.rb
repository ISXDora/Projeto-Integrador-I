class AddAddToLocations < ActiveRecord::Migration[6.1]
  def change
    add_column :locations, :add, :boolean
  end
end
