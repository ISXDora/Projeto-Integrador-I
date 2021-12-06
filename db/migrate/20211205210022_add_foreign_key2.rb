class AddForeignKey2 < ActiveRecord::Migration[6.1]
  def change
    remove_foreign_key :baskets, :locations
    add_foreign_key :baskets, :locations, on_delete: :cascade
  end
end
