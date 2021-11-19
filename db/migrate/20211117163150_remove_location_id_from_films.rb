class RemoveLocationIdFromFilms < ActiveRecord::Migration[6.1]
  def change
    remove_reference :films, :location, null: false, foreign_key: true
  end
end
