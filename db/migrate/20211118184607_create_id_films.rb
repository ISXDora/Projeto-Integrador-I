class CreateIdFilms < ActiveRecord::Migration[6.1]
  def change
    create_table :id_films do |t|
      t.references :film, null: false, foreign_key: true
      t.references :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
