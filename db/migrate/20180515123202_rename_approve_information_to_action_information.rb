class RenameApproveInformationToActionInformation < ActiveRecord::Migration[5.1]
  def change
    rename_table :approve_informations, :action_informations
  end
end
