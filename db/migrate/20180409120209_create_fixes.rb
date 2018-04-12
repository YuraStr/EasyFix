class CreateFixes < ActiveRecord::Migration[5.1]
  def change
    create_table :fixes do |t|
      t.string :number
      t.text :description
      t.belongs_to :level, index: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
