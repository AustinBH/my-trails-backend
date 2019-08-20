class RenameHikeIdLikes < ActiveRecord::Migration[5.2]
  def change
    rename_column :likes, :hike_id, :trail_id
  end
end
