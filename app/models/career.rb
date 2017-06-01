class Career < ActiveRecord::Base
  has_many :students, through: :student_careers
  has_many :student_careers
end
