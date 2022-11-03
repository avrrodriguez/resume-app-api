class AddColumnToSkill < ActiveRecord::Migration[7.0]
  def change
    add_column :skills, :student_id, :integer
  end
end
