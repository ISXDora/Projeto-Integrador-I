class AddRibbonToBaskets < ActiveRecord::Migration[6.1]
  def change
    add_reference :baskets, :ribbon, null: false, foreign_key: true
  end
end
