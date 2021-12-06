class AddForeignKey < ActiveRecord::Migration[6.1]
  def change
    remove_foreign_key :baskets, :ribbons
    add_foreign_key :baskets, :ribbons, on_delete: :cascade
  end
end
