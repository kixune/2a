class AddPasswordDigestToRockhounds < ActiveRecord::Migration[5.0]
  def change
    add_column :rockhounds, :password_digest, :string
  end
end
