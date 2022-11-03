class AddColumnToEducation < ActiveRecord::Migration[7.0]
  def change
    add_column :educations, :student_id, :integer
  end
end
