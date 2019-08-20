class AddResultsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :results, :integer
  end
end
