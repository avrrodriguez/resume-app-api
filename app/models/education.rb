class Education < ApplicationRecord
  belongs_to :student

  validates :student_id, presence: true
  validates :university_name, presence: true
  validates :degree, presence: true
end
