class AddAdminRightsToRockhounds < ActiveRecord::Migration[5.0]
  def change
    add_column :rockhounds, :admin_rights, :boolean
  end
end
