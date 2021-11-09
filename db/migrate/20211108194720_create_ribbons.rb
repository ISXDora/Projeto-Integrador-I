class CreateRibbons < ActiveRecord::Migration[6.1]
  def change
    create_table :ribbons do |t|

      t.timestamps
    end
  end
end
