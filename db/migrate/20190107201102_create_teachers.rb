class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :password
      t.string :email
      t.string :username

      
      t.timestamps
    end
  end
end
