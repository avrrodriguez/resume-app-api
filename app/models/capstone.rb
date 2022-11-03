class Capstone < ApplicationRecord
  belongs_to :student

  validates :student_id, presence: true
  validates :name, presence: true
  validates :description, presence: true
end
