class AddIndexToRockhoundsEmail < ActiveRecord::Migration[5.0]
  def change
    add_index :rockhounds, :email, unique: true
  end
end
