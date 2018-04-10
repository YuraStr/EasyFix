class CreatePromotionForms < ActiveRecord::Migration[5.1]
  def change
    create_table :promotion_forms do |t|
      t.string :name
      t.references :fix, foreign_key: true
      t.text :description
      t.belongs_to :level, index: true

      t.timestamps
    end
  end
end
