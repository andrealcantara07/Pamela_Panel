class RemoveAllFromTeachers < ActiveRecord::Migration[5.2]
  def up
    remove_column :teachers, :name
    remove_column :teachers, :password
    remove_column :teachers, :email
    remove_column :teachers, :username
  end
end
