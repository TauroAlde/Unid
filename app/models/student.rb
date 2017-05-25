class Student < ActiveRecord::Base
  has_one :tutor
  has_many :careers
  validates :phone, length: { is: 10 }

  accepts_nested_attributes_for :tutor, allow_destroy: false
  accepts_nested_attributes_for :careers, allow_destroy: false
end
