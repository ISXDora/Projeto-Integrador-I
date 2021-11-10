class CreateLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.date :devolved_date
      t.references :client, null: false, foreign_key: true
      t.references :film, null: false, foreign_key: true

      t.timestamps
    end
  end
end
