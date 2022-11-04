class Student < ApplicationRecord
  has_secure_password

  has_many :educations
  has_many :skills
  has_many :capstones
  has_many :experiences

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
end
