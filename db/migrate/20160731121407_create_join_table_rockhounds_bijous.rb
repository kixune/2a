class CreateJoinTableRockhoundsBijous < ActiveRecord::Migration[5.0]
  def change
    create_join_table :rockhounds, :bijous do |t|
      t.index [:rockhound_id, :bijou_id]
      # t.index [:bijou_id, :rockhound_id]
    end
  end
end
