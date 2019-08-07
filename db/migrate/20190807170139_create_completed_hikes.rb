class CreateCompletedHikes < ActiveRecord::Migration[5.2]
  def change
    create_table :completed_hikes do |t|
      t.integer :user_id
      t.integer :hike_id

      t.timestamps
    end
  end
end
