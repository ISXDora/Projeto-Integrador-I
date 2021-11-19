class RemoveItemFromLocations < ActiveRecord::Migration[6.1]
  def change
    remove_reference :locations, :film, null: false, foreign_key: true
  end
end
