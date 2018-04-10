class CreateFixes < ActiveRecord::Migration[5.1]
  def change
    create_table :fixes do |t|
      t.string :number
      t.text :description
      t.references :level, foreign_key: true
      t.references :status, foreign_key: true

      t.timestamps
    end
  end
end
