class Student < ActiveRecord::Base
  has_one :tutor
  has_many :careers
  validates :cell_phone, presence: true
  validates :enrollment, uniqueness: true
  validates :first_name, presence: true
  validates :father_last_name, presence: true
  validates :email, presence: true

  accepts_nested_attributes_for :tutor, allow_destroy: false
  accepts_nested_attributes_for :careers, allow_destroy: false
end
