class RemoveCategoryFromFilms < ActiveRecord::Migration[6.1]
  def change
    remove_column :films, :category, :string
  end
end
