class ChangeHikeIdForComments < ActiveRecord::Migration[5.2]
  def change
    rename_column :comments, :hike_id, :trail_id
  end
end
