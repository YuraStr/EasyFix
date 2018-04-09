class CreateLevels < ActiveRecord::Migration[5.1]
  def change
    create_table :levels do |t|
      t.string :name
      t.string :test_level

      t.timestamps
    end
  end
end
