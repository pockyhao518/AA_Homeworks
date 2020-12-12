class AddIndexToTables < ActiveRecord::Migration[5.1]
  def change
    add_index(:enrollments, :course_id)
    add_index(:enrollments, :student_id)
  end
end
