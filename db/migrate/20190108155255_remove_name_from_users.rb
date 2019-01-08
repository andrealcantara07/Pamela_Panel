class RemoveNameFromUsers < ActiveRecord::Migration[5.2]
  def up
    remove_column :users, :name
  end
end
