class AddStatusToFix < ActiveRecord::Migration[5.1]
  def change
    add_column :fixes, :status, :string, default: "ww_development"
  end
end
