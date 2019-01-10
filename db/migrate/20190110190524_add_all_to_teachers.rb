class AddAllToTeachers < ActiveRecord::Migration[5.2]
  def change
    add_column :teachers, :first_name, :string
    add_column :teachers, :last_name, :string
    add_column :teachers, :email, :string
    add_column :teachers, :phone, :string
    add_column :teachers, :education, :string
    add_column :teachers, :age, :integer

  end
end
