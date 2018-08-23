class Student < ApplicationRecord
  has_many :student_planks
  has_many :planks, through: :student_planks
  validates :mod, inclusion: 1..5
  validates :name, presence: true
  has_secure_password 
end
