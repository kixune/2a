class AddRememberDigestToRockhounds < ActiveRecord::Migration[5.0]
  def change
    add_column :rockhounds, :remember_digest, :string
  end
end
