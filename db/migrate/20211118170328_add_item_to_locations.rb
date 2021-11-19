class AddItemToLocations < ActiveRecord::Migration[6.1]
  def change
    add_reference :locations, :film, null: false, foreign_key: true
  end
end
