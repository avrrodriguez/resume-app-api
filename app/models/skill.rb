class Skill < ApplicationRecord
  validates :skill_name, presence: true
  validates :student_id, presence: true
  belongs_to :student
end
