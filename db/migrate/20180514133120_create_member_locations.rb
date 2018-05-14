class CreateMemberLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :member_locations do |t|
      t.references :member_type, foreign_key: true
      t.references :level, foreign_key: true
      t.string :location

      t.timestamps
    end
  end
end
