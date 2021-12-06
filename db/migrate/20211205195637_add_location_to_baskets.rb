class AddLocationToBaskets < ActiveRecord::Migration[6.1]
  def change
    add_reference :baskets, :location, null: false, foreign_key: true
  end
end
