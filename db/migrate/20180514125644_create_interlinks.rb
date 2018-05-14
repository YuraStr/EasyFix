class CreateInterlinks < ActiveRecord::Migration[5.1]
  def change
    create_table :interlinks do |t|
      t.references :member, foreign_key: true
      t.references :first_promform
      t.references :second_promform
      t.references :level, foreign_key: true

      t.timestamps
    end
  end
end
