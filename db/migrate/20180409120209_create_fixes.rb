class CreateFixes < ActiveRecord::Migration[5.1]
  def change
    create_table :fixes do |t|
      t.string :number
      t.text :description
      t.integer :level_id
      t.integer :sign_off_user_id
      t.datetime :sign_off_date
      t.boolean :is_interlinked
      t.integer :status_id

      t.timestamps
    end
  end
end
