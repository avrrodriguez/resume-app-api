class AddColumnToExperience < ActiveRecord::Migration[7.0]
  def change
    add_column :experiences, :student_id, :integer
  end
end
