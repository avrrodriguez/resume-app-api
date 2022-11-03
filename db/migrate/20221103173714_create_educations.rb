class CreateEducations < ActiveRecord::Migration[7.0]
  def change
    create_table :educations do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.string :degree
      t.string :university_name
      t.text :details

      t.timestamps
    end
  end
end
