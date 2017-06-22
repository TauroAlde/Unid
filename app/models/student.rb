class Student < ActiveRecord::Base
  has_one :tutor
  has_many :careers, through: :student_careers
  has_many :student_careers

  validates :cell_phone, presence: true
  validates :enrollment, uniqueness: true
  validates :first_name, presence: true
  validates :father_last_name, presence: true
  validates :email, presence: true

  mount_uploader :image, ImageUploader

  accepts_nested_attributes_for :tutor, allow_destroy: false
  accepts_nested_attributes_for :student_careers, allow_destroy: false

  enum status: [:activo, :inactivo, :baja]
end
