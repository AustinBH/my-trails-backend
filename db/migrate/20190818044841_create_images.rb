class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :img_url
      t.integer :trail_id
      t.integer :user_id

      t.timestamps
    end
  end
end
