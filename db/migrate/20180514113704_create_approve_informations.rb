class CreateApproveInformations < ActiveRecord::Migration[5.1]
  def change
    create_table :approve_informations do |t|
      t.references :fix, foreign_key: true
      t.references :from_level
      t.references :to_level
      t.references :user, foreign_key: true
      t.string :action

      t.timestamps
    end
  end
end
