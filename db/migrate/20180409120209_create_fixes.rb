class CreateFixes < ActiveRecord::Migration[5.1]
  def change
    create_table :fixes do |t|
      t.string :number
      t.text :description
      t.belongs_to :level, index: true

      t.timestamps
    end
  end
end
