class Student < ActiveRecord::Base
  has_one :tutor
end
