class CreatePromotionForms < ActiveRecord::Migration[5.1]
  def change
    create_table :promotion_forms do |t|
      t.string :name
      t.references :fix, foreign_key: true
      t.text :description
      t.references :level, foreign_key: true

      t.timestamps
    end
  end
end
