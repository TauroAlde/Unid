class StudentCareer < ActiveRecord::Base
  belongs_to :student
  belongs_to :career
end
