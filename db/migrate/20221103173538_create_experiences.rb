class CreateExperiences < ActiveRecord::Migration[7.0]
  def change
    create_table :experiences do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.string :job_title
      t.string :company_name
      t.text :details

      t.timestamps
    end
  end
end
