class AddForeignKey3 < ActiveRecord::Migration[6.1]
  def change
    remove_foreign_key :ribbons, :films
    add_foreign_key :ribbons, :films, on_delete: :cascade
  end
end
