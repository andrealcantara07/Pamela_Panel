class RemovePasswordFromUsers < ActiveRecord::Migration[5.2]
  def up
    remove_column :users, :password
  end
end
