class Teacher < ActiveRecord::Base
  validates :cell_phone, presence: true
  validates :enrollment, uniqueness: true
  validates :first_name, presence: true
  validates :father_last_name, presence: true
  validates :email, presence: true
end
