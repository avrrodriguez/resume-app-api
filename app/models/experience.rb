class Experience < ApplicationRecord
  belongs_to :student

  validates :student_id, presence: true
  validates :company_name, presence: true
  validates :start_date, presence: true
end
