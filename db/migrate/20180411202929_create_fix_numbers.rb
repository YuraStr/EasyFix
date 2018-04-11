class CreateFixNumbers < ActiveRecord::Migration[5.1]
  def change
    create_table :fix_numbers do |t|
      t.integer :number

      t.timestamps
    end
  end
end
