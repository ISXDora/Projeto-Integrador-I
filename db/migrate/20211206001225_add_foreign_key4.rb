class AddForeignKey4 < ActiveRecord::Migration[6.1]
  def change
    remove_foreign_key :casts, :films
    add_foreign_key :casts, :films, on_delete: :cascade
  end
end
