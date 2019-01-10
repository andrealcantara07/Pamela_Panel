class CreateCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts do |t|
      t.string :name
      t.string :start_date
      t.string :end_date
      t.integer :course_id
      t.integer :teacher_id
      t.integer :student_id
      t.string :picture


      t.timestamps
    end
  end
end
