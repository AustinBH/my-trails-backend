class AddDistanceToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :distance, :integer
  end
end
