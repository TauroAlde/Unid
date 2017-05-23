class Tutor < ActiveRecord::Base
  belongs_to :student

  validates :phone, length: { is: 10 }
end
