class RenameHikeIdCompletedHikes < ActiveRecord::Migration[5.2]
  def change
    rename_column :completed_hikes, :hike_id, :trail_id
  end
end
