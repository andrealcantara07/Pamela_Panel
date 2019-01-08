class RemoveUsernameFromUsers < ActiveRecord::Migration[5.2]
  def up
    remove_column :users, :username
  end
end
