class AddCorrectLevelAndStatusToFix < ActiveRecord::Migration[5.1]
  def change
    remove_column :fixes, :level_id
    remove_column :fixes, :status_id
    add_reference :fixes, :level, foreign_key: true
    add_reference :fixes, :status, foreign_key: true
  end
end
