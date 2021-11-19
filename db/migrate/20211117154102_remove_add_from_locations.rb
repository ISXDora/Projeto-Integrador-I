class RemoveAddFromLocations < ActiveRecord::Migration[6.1]
  def change
    remove_column :locations, :add, :boolean
  end
end
