class RemoveAvailableFromFilms < ActiveRecord::Migration[6.1]
  def change
    remove_column :films, :available, :boolean
  end
end
