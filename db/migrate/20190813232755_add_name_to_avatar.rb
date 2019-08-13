class AddNameToAvatar < ActiveRecord::Migration[5.2]
  def change
    add_column :avatars, :name, :string
  end
end
