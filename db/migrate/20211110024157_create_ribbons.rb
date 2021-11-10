class CreateRibbons < ActiveRecord::Migration[6.1]
  def change
    create_table :ribbons do |t|
      t.references :film, null: false, foreign_key: true

      t.timestamps
    end
  end
end
