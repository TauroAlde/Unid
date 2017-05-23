class Student < ActiveRecord::Base
  has_one :tutor

  validates :phone, length: { is: 10 }

  accepts_nested_attributes_for :tutor, allow_destroy: false
end
